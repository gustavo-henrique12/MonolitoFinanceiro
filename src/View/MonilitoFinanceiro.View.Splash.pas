unit MonilitoFinanceiro.View.Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmSplash = class(TForm)
    pnlPrincipal: TPanel;
    lblstatus: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Panel1: TPanel;
    imgLogo: TImage;
    Label1: TLabel;
    imgDll: TImage;
    imgbancoDeDados: TImage;
    imgConfiguracoes: TImage;
    imgIniciando: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarStatus(Mensagem : String; Imagem : TImage);
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.AtualizarStatus(Mensagem : String; Imagem : TImage);
begin
   lblstatus.Caption := Mensagem;
   Imagem.Visible := True;
end;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
   if ProgressBar1.Position <= 100 then
   begin
      ProgressBar1.StepIt;
      case ProgressBar1.Position of
         10 : AtualizarStatus('Carregando dependências...', imgDll);
         25 : AtualizarStatus('Conectando ao banco de dados...', imgbancoDeDados);
         45 : AtualizarStatus('Carregando as Configurações...', imgConfiguracoes);
         75 : AtualizarStatus('Iniciando o Sistema...', imgIniciando);
      end;
   end;
   if ProgressBar1.Position = 100 then
      Close;
end;

end.
