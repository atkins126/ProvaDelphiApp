unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uspQuery,
  uGeraSQL_Controller, FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MSAccDef,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSAcc;

type
  TfTarefa1 = class(TForm)
    mColunas: TMemo;
    mTabelas: TMemo;
    mSqlGerado: TMemo;
    lblslqgerado: TLabel;
    btnGerarSql: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnLimpar: TButton;
    mCondicoes: TMemo;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGerarSqlClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    procedure ChamaGerador;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.btnGerarSqlClick(Sender: TObject);
begin
  ChamaGerador;
end;

procedure TfTarefa1.btnLimparClick(Sender: TObject);
begin
 mColunas.Clear;
 mTabelas.Clear;
 mCondicoes.Clear;
 mSqlGerado.Clear;
end;

procedure TfTarefa1.ChamaGerador;
 Var SQL : string;
begin
  mSqlGerado.Clear;

  SQL := TController_GeraSQL.New
                            .SetColunas(mColunas)
                            .SetTabela(mTabelas)
                            .SetCondicao(mCondicoes)
                            .GeraSQL;

  mSqlGerado.Lines.Add(SQL);
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fTarefa1);
end;

end.
