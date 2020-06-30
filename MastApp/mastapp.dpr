program Mastapp;

uses
  Forms,
  MAIN in 'MAIN.PAS' {MainForm},
  BRPARTS in 'BRPARTS.PAS' {BrPartsForm},
  QryCust in 'QryCust.pas' {QueryCustDlg},
  EDPARTS in 'EDPARTS.PAS' {EdPartsForm},
  BrCstOrd in 'BrCstOrd.pas' {BrCustOrdForm},
  EDCUST in 'EDCUST.PAS' {EdCustForm},
  EDORDERS in 'EDORDERS.PAS' {EdOrderForm},
  SrchDlg in 'SrchDlg.pas' {SearchDlg},
  SPLASH in 'SPLASH.PAS' {SplashForm},
  PICKDATE in 'PICKDATE.PAS' {BrDateForm},
  ABOUT in 'ABOUT.PAS' {AboutBox},
  DataMod in 'DataMod.pas' {MastData: TDataModule},
  PickInvc in 'PickInvc.pas' {PickOrderNoDlg};

{$R *.RES}

begin
  Application.Initialize;
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Update;
  Application.Title := 'Marine Adventures Order Entry';
  Application.HelpFile := 'MASTAPP.HLP';
  Application.CreateForm(TMastData, MastData);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TBrPartsForm, BrPartsForm);
  Application.CreateForm(TQueryCustDlg, QueryCustDlg);
  Application.CreateForm(TEdPartsForm, EdPartsForm);
  Application.CreateForm(TBrCustOrdForm, BrCustOrdForm);
  Application.CreateForm(TEdCustForm, EdCustForm);
  Application.CreateForm(TEdOrderForm, EdOrderForm);
  Application.CreateForm(TSearchDlg, SearchDlg);
  Application.CreateForm(TBrDateForm, BrDateForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TPickOrderNoDlg, PickOrderNoDlg);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
