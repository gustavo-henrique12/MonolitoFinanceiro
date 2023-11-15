unit MonilitoFinanceiro.View.CadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmCadastroPadrao = class(TForm)
    PnlPrincipal: TCardPanel;
    CardCadastro: TCard;
    CardPesquisa: TCard;
    pnlPesquisa: TPanel;
    pnlPesquisarBotoes: TPanel;
    pnlGrid: TPanel;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    Label1: TLabel;
    btnPesquisar: TButton;
    ImageList1: TImageList;
    btnFechar: TButton;
    btnExcluir: TButton;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnImprimit: TButton;
    Panel1: TPanel;
    btnCancelar: TButton;
    btnSalvar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroPadrao: TFrmCadastroPadrao;

implementation

{$R *.dfm}

end.
