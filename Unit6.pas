unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls;

type
  TForm6 = class(TForm)
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    IBQuery1: TIBQuery;
    Label4: TLabel;
    Edit5: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm6.Button2Click(Sender: TObject);
begin
Form6.Close;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
Ibquery1.SQL.Text:='update izdelie set naimenovanie='''+Edit1.Text+''',god_vipyska='''+Edit2.Text+''',kolichestvo='''+Edit3.Text+''',cena='''+edit4.text+''',data_postavki='''+edit5.text+''' where izdelie_id='+IbQuery1.FieldByname('izdelie_id').asstring;
ibquery1.open;
ibquery1.close;
Form1.IBDatabase1.Connected:=false;
Form1.IBDatabase1.Connected:=true;
Form6.Close;
Form1.ComboBox1.OnChange(Form1.ComboBox1);
end;

procedure TForm6.FormShow(Sender: TObject);
begin
Form1.DBGrid2.OnDblClick(Form1.DBGrid2);
IBquery1.sql.text:='select *from izdelie where izdelie_id='+Form1.IBquery2.FieldByname('izdelie_id').AsString;
IBquery1.open;
Edit1.Text:=Form1.IBQuery2.Fieldbyname('naimenovanie').asstring;
Edit2.Text:=Form1.IBQuery2.Fieldbyname('god_vipyska').asstring;
Edit3.Text:=Form1.IBQuery2.Fieldbyname('kolichestvo').asstring;
Edit4.Text:=Form1.IBQuery2.Fieldbyname('cena').asstring;
Edit5.Text:=Form1.IBQuery2.Fieldbyname('data_postavki').asstring;
IBquery1.close;
IBquery1.open;
Form1.DBGrid2.OnDblClick(Form1.DBGrid2);
end;


end.
