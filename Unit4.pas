unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    IBQuery1: TIBQuery;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.FormShow(Sender: TObject);
begin
Form1.DBGrid1.OnDblClick(Form1.DBGrid1);
IBquery1.sql.text:='select *from organizaciya where organizaciya_id='+Form1.IBquery1.FieldByname('organizaciya_id').AsString;
IBquery1.open;
Edit1.Text:=Form1.IBQuery1.Fieldbyname('naimenovanie').asstring;
Edit2.Text:=Form1.IBQuery1.Fieldbyname('oboznachenie').asstring;
Edit3.Text:=Form1.IBQuery1.Fieldbyname('adres').asstring;
Edit4.Text:=Form1.IBQuery1.Fieldbyname('inn').asstring;
Edit5.Text:=Form1.IBQuery1.Fieldbyname('telephone').asstring;
IBquery1.close;
IBquery1.open;
Form1.DBGrid1.OnDblClick(Form1.DBGrid1);
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
Ibquery1.SQL.Text:='update organizaciya set naimenovanie='''+Edit1.Text+''',Oboznachenie='''+Edit2.Text+''',adres='''+Edit3.Text+''',inn='''+edit4.text+''',telephone='''+edit5.text+''' where organizaciya_id='+Ibquery1.FieldByname('organizaciya_id').asstring;
ibquery1.open;
ibquery1.close;
Form4.Close;
Form1.ComboBox1.OnChange(Form1.ComboBox1);
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Form4.Close;
end;

end.
