unit frmQualifyingTimes_u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TfrmQualifyingTimes = class(TForm)
    pnlMain: TPanel;
    gbxTimes: TGroupBox;
    lblQT: TLabel;
    lblSwimtime: TLabel;
    lblCycletime: TLabel;
    lblRuntime: TLabel;
    edtRunTime: TEdit;
    edtCycleTime: TEdit;
    edtSwimTime: TEdit;
    edtQualifyTime: TEdit;
    gbxOptions: TGroupBox;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    bmbCalculate: TBitBtn;
    lblOutput: TLabel;
    lblOutput2: TLabel;
    procedure bmbCalculateClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    rQTime, rTime, rSwim, rRun, rCycle : real ;
  public
    { Public declarations }
  end;

var
  frmQualifyingTimes: TfrmQualifyingTimes;

implementation

{$R *.DFM}
procedure TfrmQualifyingTimes.bmbCalculateClick(Sender: TObject);
begin
//decloration
 rQTime := strtoint(edtQualifyTime.Text) ;
 rTime := rSwim + rRun + rCycle;
 rSwim := strtofloat(edtSwimtime.Text);
 rRun := strtofloat(edtRuntime.Text);
 rCycle := strtofloat(edtCycletime.Text) ;

//If you got colors
 if rQTime >= rTime then
 begin
   lblOutput2.Caption := 'You got Provincial colours!';
 end
else
 if (rTime <= rQTime + 5) OR (rTime < rQTime + 10) then
 begin
   lblOutput.Caption := 'You got Provincial-half colours!';
 end;

 if rTime <= rQTime + 10 then
 begin
   lblOutput2.Caption := 'You got Provincial scroll';
 end
 else
 begin
   lblOutput.Caption := 'You got a Participation certificate';
 end;
end;

procedure TfrmQualifyingTimes.bmbRetryClick(Sender: TObject);
begin
 rTime := 0;
 rQtime := 0;
 edtSwimtime.Text := ' ';
 edtRunTime.Text := ' ';
 edtCycleTime.Text := ' ';
 edtQualifyTime.Text := ' ';
 lblOutput.Caption := ' ';
end;

end.
