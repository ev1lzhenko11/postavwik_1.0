unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls;

type
  TForm7 = class(TForm)
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    IBQuery1: TIBQuery;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm7.FormShow(Sender: TObject);
begin
//Form1.DBGrid3.OnDblClick(Form1.DBGrid3);
IBquery1.sql.text:='select *from detali where detali_id='+Form1.IBquery3.FieldByname('detali_id').AsString;
IBquery1.open;
Edit1.Text:=Form1.IBQuery3.Fieldbyname('naimenovanie').asstring;
Edit2.Text:=Form1.IBQuery3.Fieldbyname('cvet').asstring;
Edit3.Text:=Form1.IBQuery3.Fieldbyname('ves').asstring;
IBquery1.close;
IBquery1.open;
//Form1.DBGrid3.OnDblClick(Form1.DBGrid3);
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
Form7.Close;
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
Ibquery1.SQL.Text:='update detali set naimenovanie='''+Edit1.Text+''',cvet='''+Edit2.Text+''',ves='''+Edit3.Text+''' where detali_id='+IbQuery1.FieldByname('detali_id').asstring;
ibquery1.open;
ibquery1.close;
Form1.IBDatabase1.Connected:=false;
Form1.IBDatabase1.Connected:=true;
Form7.Close;
Form1.ComboBox1.OnChange(Form1.ComboBox1);
end;

end.
