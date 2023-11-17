program MonilitoFinanceiro;

uses
  Vcl.Forms,
  MonilitoFinanceiro.View.Principal in 'src\View\MonilitoFinanceiro.View.Principal.pas' {Form1},
  MonilitoFinanceiro.View.CadastroPadrao in 'src\View\MonilitoFinanceiro.View.CadastroPadrao.pas' {FrmCadastroPadrao},
  MonilitoFinanceiro.View.Splash in 'src\View\MonilitoFinanceiro.View.Splash.pas' {frmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadastroPadrao, FrmCadastroPadrao);
  Application.Run;
end.
