{ 
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit querywindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmQueryWindow = class(TForm)
    mResults: TMemo;
    Panel1: TPanel;
    eQuery: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure eQueryKeyPress(Sender: TObject; var Key: Char);
    procedure ProcessQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQueryWindow: TfrmQueryWindow;

implementation

{$R *.dfm}

uses
  constants, utility;

var
  QFunctions : array[0..49] of string = ('HELP', 'CLEAR', 'AN', 'SYMBOL', 'NAME',

                                         'BP', 'MP', 'AM', 'HC', 'TC', 'TE', 'DY', 'EC', 'EN',
                                         'EoF', 'EoV', 'AU', 'AS', 'AEC', 'AHW', 'AHA', 'ER',
                                         'BM', 'SM', 'YM', 'BH', 'VH', 'PR', 'SoS', 'DD', 'AV',
                                         'MOMS', 'MAMS', 'EoA', 'VEP', 'AR', 'ARB', 'ARC', 'ARV',
                                         'ART', 'ARM',

                                         'ION', 'ESHELL', 'SHORT',
                                         'KTOC', 'KTOF', 'CTOK', 'CTOF', 'FTOC', 'FTOK');
const
  FunctionCount = 43;


procedure TfrmQueryWindow.FormCreate(Sender: TObject);
 begin
{}
end;


procedure TfrmQueryWindow.FormShow(Sender: TObject);
 begin
  mResults.Lines.Add('  Periodic Table - Query Engine');
  mResults.Lines.Add('     version 1.0');
  mResults.Lines.Add('        (c) PAF 2008');
  mResults.Lines.Add('');

  eQuery.Text:='Type here!  (type help for more information)';
  eQuery.SelectAll;
  eQuery.SetFocus;
end;


procedure TfrmQueryWindow.eQueryKeyPress(Sender: TObject; var Key: Char);
 begin
  if key=#13 then begin
    if eQuery.Items.Count=20 then begin
      eQuery.Items.Delete(0);
      eQuery.Items.Add(eQuery.Text);
    end
    else
      eQuery.Items.Add(eQuery.Text);

    ProcessQuery;
  end;
end;


procedure TfrmQueryWindow.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action:=caFree;
end;


procedure TfrmQueryWindow.ProcessQuery;
 var
  i, j, t, thisthing, currentfunction : integer;
  iparam : integer;
  params : TStringList;
  ts : string;

  procedure ExplodeParams;
   var
    t : integer;
    s : string;

   begin
    s:='';

    for t:= 1 to length(eQuery.Text) do begin
      if eQuery.Text[t]=' ' then begin
        params.Add(UpperCase(s));

        s:='';
      end
      else
        s:=s+eQuery.Text[t];
    end;

    params.Add(UpperCase(s));
  end;

  function IsQFunction(qf : string): integer;
   var
    i,t : integer;

   begin
    i:=-1;

    for t:=0 to FunctionCount do begin
      if qf=QFunctions[t] then
        i:=t;
    end;

    Result:=i;
  end;

  procedure QReturn(s : string);
   begin
    mResults.Lines.Add(s);
  end;

 begin
  currentfunction := -1;

  params := TStringList.Create;

  ExplodeParams;

  QReturn('> ' + eQuery.Text);

  if params.Count = 1 then params.Add('0');

  for t:=0 to params.Count - 1 do begin
    thisthing := IsQFunction(params.strings[t]);

    if thisthing <> -1 then
      currentfunction := thisthing
    else begin
      if params.strings[t] <> '?' then begin
        iparam := GetAtomicNumber(params.strings[t]);

        case currentfunction of
          0 : ExecuteFile(0, RunFrom+'pte_data\'+UserSettings.LanguageSymbol+'\system\help\uk\page7.htm', '', '', SW_SHOW);
          1 : mResults.Clear;
          2 : begin  // an
                if iparam<>-1 then
                  QReturn('  '+IntToStr(iparam))
                else
                  QReturn('  Error!');
              end;
          3 : begin  // symbol
                if iparam<>-1 then
                  QReturn('  ' + ElementSymbol[iparam])
                else
                  QReturn('  Error!');
              end;
          4 : begin  // name
                if iparam<>-1 then
                  QReturn('  '+Elements[iparam].Name)
                else
                  QReturn('  Error!');
              end;
          5..40  : begin
                    if iparam<>-1 then
                      QReturn('  '+FloatToStr(Elements[iparam].Properties[currentfunction-8]))
                    else
                      QReturn('  Error!');
                   end;
          41 : begin // ion
                j:=0;

                if iparam<>-1 then begin
                  QReturn('  Ion Energies for '+Elements[iparam].Name+' ('+ElementSymbol[iparam]+')');

                  for i:=1 to 10 do begin
                    if Elements[iparam].IonEnergies[i]<>0 then begin
                      if j=0 then
                        ts:='M  ->  M+'
                      else
                        ts:='M'+IntToStr(j)+'+  ->  M'+IntToStr(j+1)+'+ :';

                      QReturn('  '+ts+' '+FloatToStr(Elements[iparam].IonEnergies[i]));
                    end;

                    inc(j);
                  end;
                end
                else
                  QReturn('  Error!');
               end;
          42 : begin // eshell
                 if iparam<>-1 then
                   QReturn('  '+Elements[iparam].Shell)
                 else
                   QReturn('  Error!');
               end;
          43 : begin // eshell
               end;
          44 : begin   //KtoC
                 QReturn('  '+params.strings[t]+'K = '+FloatToStr(StrToFloat(params.strings[t], PTFormatSettings)+273)+'''C');
               end;
          45 : begin   //KtoF
                 QReturn('  '+params.strings[t]+'K = '+FloatToStr(((9/5)*(StrToFloat(params.strings[t], PTFormatSettings)-273)+32))+'''F');
               end;
          46 : begin   //CtoK
                 QReturn('  '+params.strings[t]+'''C = '+FloatToStr(StrToFloat(params.strings[t], PTFormatSettings)-273)+'K');
               end;
          47 : begin   //CtoF
                 QReturn('  '+params.strings[t]+'''C = '+FloatToStr(((9/5)*(StrToFloat(params.strings[t], PTFormatSettings))+32)));
               end;
          48 : begin   //FtoC
                 QReturn('  '+params.strings[t]+'''F = '+FloatToStr((5/9)*(StrToFloat(params.strings[t], PTFormatSettings)-32))+'''C');
               end;
          49 : begin   //FtoK
                 QReturn('  '+params.strings[t]+'''F = '+FloatToStr(((5/9)*(StrToFloat(params.strings[t], PTFormatSettings)-32)+273))+'K');
               end;
        end;
      end;
    end;
  end;

  FreeAndNil(params);

  // last stuff to do............
  eQuery.Text := '';
end;


end.
