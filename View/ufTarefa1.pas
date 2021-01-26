unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uspQuery,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys, FireDAC.Phys.SQLite,
  uGeraSQL_Controller;

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
