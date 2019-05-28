program frmQualifyingTimes_p;

uses
  Forms,
  frmQualifyingTimes_u in 'frmQualifyingTimes_u.pas' {frmQualifyingTimes};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmQualifyingTimes, frmQualifyingTimes);
  Application.Run;
end.
