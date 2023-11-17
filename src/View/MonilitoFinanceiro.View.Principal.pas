unit MonilitoFinanceiro.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuRelatorios: TMenuItem;
    mnuAjuda: TMenuItem;
    mnuCadastroPadrao: TMenuItem;
    procedure mnuCadastroPadraoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses MonilitoFinanceiro.View.CadastroPadrao,
     MonilitoFinanceiro.View.Splash;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
   frmSplash := TfrmSplash.create(nil);
   try
      frmSplash.ShowModal;
   finally
      FreeAndNil(frmSplash);
   end;
end;

procedure TFrmPrincipal.mnuCadastroPadraoClick(Sender: TObject);
begin
   frmCadastroPadrao.Show;
end;

end.
