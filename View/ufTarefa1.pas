unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uspQuery,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys, FireDAC.Phys.SQLite;

type
  TfTarefa1 = class(TForm)
    mColunas: TMemo;
    mTabelas: TMemo;
    mCondicoes: TMemo;
    mSqlGerado: TMemo;
    lblslqgerado: TLabel;
    btnGerarSql: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnLimpar: TButton;
    spQuery1: TspQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
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
var
  Colunas: TStringList;
  Tabelas: TStringList;
  Condicoes: TStringList;
  i: Integer;
begin
  mSqlGerado.Clear;
  Colunas := TStringList.create;
  Tabelas := TStringList.create;
  Condicoes := TStringList.create;

  try
    for i := 0 to mColunas.Lines.Count - 1 do
    Colunas.Add(mColunas.Lines.Strings[i]);

    Tabelas.Add(mTabelas.Lines.Text);
    Condicoes.Add(mCondicoes.Lines.Text);

    spQuery1.spColunas   := Colunas;
    spQuery1.spTabelas   := Tabelas;
    spQuery1.spCondicoes := Condicoes;
    spQuery1.GeraSQL;

    mSqlGerado.Lines.Add(spQuery1.SQL.Strings[0]);

  finally
   FreeAndNil(Colunas);
   FreeAndNil(Tabelas);
   FreeAndNil(Condicoes);
  end;

end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(fTarefa1);
end;

end.
