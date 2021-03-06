unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.ListBox;

type
  TFrmPrincipal = class(TForm)
    layout_abas: TLayout;
    img_aba1: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    layout_toolbar: TLayout;
    lbl_titulo: TLabel;
    img_notificacao: TImage;
    img_add_pedido: TImage;
    TabControl1: TTabControl;
    TabPedidos: TTabItem;
    TabAceitos: TTabItem;
    TabRealizados: TTabItem;
    TabPerfil: TTabItem;
    lv_pedidos: TListView;
    Line1: TLine;
    Rectangle1: TRectangle;
    Circle1: TCircle;
    Label1: TLabel;
    Layout1: TLayout;
    Label2: TLabel;
    Label3: TLabel;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    ListBox1: TListBox;
    lbi_endereco: TListBoxItem;
    Label4: TLabel;
    Label5: TLabel;
    Image9: TImage;
    Layout2: TLayout;
    ListBoxItem2: TListBoxItem;
    Image11: TImage;
    Layout4: TLayout;
    Label8: TLabel;
    Label9: TLabel;
    ListBoxItem3: TListBoxItem;
    Image12: TImage;
    Layout5: TLayout;
    Label10: TLabel;
    Label11: TLabel;
    ListBoxItem4: TListBoxItem;
    Image13: TImage;
    Layout6: TLayout;
    Label12: TLabel;
    Label13: TLabel;
    ListBoxItem1: TListBoxItem;
    Image10: TImage;
    Layout3: TLayout;
    Label6: TLabel;
    Label7: TLabel;
    Line2: TLine;
    Line3: TLine;
    Line4: TLine;
    Line5: TLine;
    Layout7: TLayout;
    procedure img_notificacaoClick(Sender: TObject);
    procedure img_add_pedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

uses UnitNotificacao, UnitPedido;

procedure TFrmPrincipal.img_add_pedidoClick(Sender: TObject);
begin
    if NOT Assigned(FrmPedido) then
        Application.CreateForm(TFrmPedido, FrmPedido);

    FrmPedido.Show;
end;

procedure TFrmPrincipal.img_notificacaoClick(Sender: TObject);
begin
    if NOT Assigned(FrmNotificacao) then
        Application.CreateForm(TFrmNotificacao, FrmNotificacao);

    FrmNotificacao.Show;
end;

end.
