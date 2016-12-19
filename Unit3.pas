unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  fiz_id:string;
   izd_id:string;
   det_id:string;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
Form3.Position := poScreenCenter;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Edit1.Clear;edit2.clear;edit3.Clear;edit5.clear;
edit11.Clear;edit12.clear;edit13.Clear;
Edit6.clear;edit10.clear;edit8.clear;edit9.clear ;edit7.clear;
Combobox1.Clear;Combobox2.Clear;Combobox3.Clear;
combobox1.Text:='�����';combobox2.text:='�����';combobox3.text:='�����';
combobox1.Items.Add('�����');combobox2.items.add('�����');combobox3.items.add('�����');
end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
IbQuery1.Close;
IbQuery2.Close;
IbQuery3.Close;
end;

procedure TForm3.FormShow(Sender: TObject);
var
i,nFiz:integer;
begin
IBQuery1.SQL.Text:='select fio from fizicheskoe_lico'  ;
IBQuery1.Open;
IBQuery1.Last;
nFiz:=IBQuery1.RecordCount;
IBquery1.First;
for i:=0 to nFiz-1 do
begin
ComboBox1.Items.Add(IBQuery1.Fields[0].Value);
IBQuery1.Next;
end;
IBQuery1.Close;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
var
nIzd,i:integer;
begin
if Combobox1.Text<>'�����' then
begin
Button1.Visible:=false;
Button2.Visible:=false;
Button3.Visible:=true;
Button4.Visible:=true;
Button5.Visible:=false;
Button6.Visible:=false;
Combobox2.Clear; Combobox2.Text:='�����';Combobox2.Items.Add('�����');
edit11.Clear;edit12.clear;edit13.Clear;
Edit6.clear;edit10.clear;edit8.clear;edit9.clear ;edit7.clear;
Combobox2.Text:='�����';
edit1.Clear;edit2.clear;edit3.Clear;edit5.Clear;
IBQuery1.SQL.Text:='select *from fizicheskoe_lico where fio='''+Combobox1.Text+'''';
ibquery1.Open;
fiz_id:=IbQuery1.FieldByName('fizicheskoe_lico_id').AsString;
Edit1.Text:=IbQuery1.FieldByName('fio').AsString;
Edit2.Text:=IbQuery1.FieldByName('pasportnie_dannie').AsString;
Edit3.Text:=IbQuery1.FieldByName('adres').AsString;
Edit5.Text:=IbQuery1.FieldByName('telephone').AsString;
ibquery1.Close;

IBQuery1.SQL.Text:='select  naimenovanie from izdelie where fizicheskoe_lico_id='''+fiz_id+'''';
IBQuery1.Open;
IBQuery1.Last;
nIzd:=IBQuery1.RecordCount;
Ibquery1.First;
for i:=0 to nIzd-1 do
begin
ComboBox2.Items.Add(IBQuery1.Fields[0].Value);
IBQuery1.Next;
end;
Ibquery1.close;
end;
if Combobox1.Text='�����' then
begin
Combobox2.Clear;
Combobox2.Items.Add('�����');
edit11.Clear;edit12.clear;edit13.Clear;
Edit1.Clear;edit2.clear;edit3.Clear;edit5.clear;
Edit6.clear;edit10.clear;edit8.clear;edit9.clear ;edit7.clear;
Combobox2.Text:='�����';
Button1.Visible:=true;
Button2.Visible:=true;
Button3.Visible:=false;
Button4.Visible:=false;
Button5.Visible:=false;
Button6.Visible:=false;
end;
end;

procedure TForm3.ComboBox2Change(Sender: TObject);
var
nDet,i:integer;
begin
if Combobox2.Text<>'�����' then
begin
edit11.Clear;edit12.clear;edit13.Clear;
Button1.Visible:=false;
Button2.Visible:=false;
Button3.Visible:=false;
Button4.Visible:=false;
Button5.Visible:=true;
Button6.Visible:=true;
Combobox3.Clear; Combobox3.Text:='�����'; Combobox3.Items.Add('�����');
edit6.Clear;edit10.clear;edit8.Clear;edit9.Clear;edit7.Clear;
IBQuery2.SQL.Text:='select *from izdelie where naimenovanie='''+Combobox2.Text+'''';
ibquery2.Open;
izd_id:=IbQuery2.FieldByName('izdelie_id').AsString;
Edit6.Text:=IbQuery2.FieldByName('naimenovanie').AsString;
Edit10.Text:=IbQuery2.FieldByName('god_vipyska').AsString;
Edit8.Text:=IbQuery2.FieldByName('kolichestvo').AsString;
Edit9.Text:=IbQuery2.FieldByName('cena').AsString;
Edit7.Text:=IbQuery2.FieldByName('data_postavki').AsString;
ibquery2.Close;

end;
if (Combobox2.Text='�����') and (Combobox1.Text<>'�����') then
begin
edit6.Clear;edit10.clear;edit8.Clear;edit9.Clear;edit7.Clear;
edit11.Clear;edit12.clear;edit13.Clear;
Button1.Visible:=false;
Button2.Visible:=false;
Button3.Visible:=true;
Button4.Visible:=true;
Button5.Visible:=false;
Button6.Visible:=false;
end;
end;

procedure TForm3.ComboBox3Change(Sender: TObject);
var
nDet,i:integer;
begin
if Combobox3.Text<>'�����' then
begin

edit11.Clear;edit12.clear;edit13.Clear;
IBQuery3.SQL.Text:='select *from detali where naimenovanie='''+Combobox3.Text+'''';
ibquery3.Open;
det_id:=IbQuery3.FieldByName('detali_id').AsString;
Edit11.Text:=IbQuery3.FieldByName('naimenovanie').AsString;
Edit12.Text:=IbQuery3.FieldByName('cvet').AsString;
Edit13.Text:=IbQuery3.FieldByName('ves').AsString;
ibquery3.Close;
end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
IBQuery1.SQL.Text:='INSERT INTO fizicheskoe_lico (fio, pasportnie_dannie,adres,telephone) values('''+Edit1.Text+''','''+Edit2.Text+''','''+Edit3.Text+''','''+Edit5.Text+''')';
IBQuery1.Open;
IBQuery1.Close;
Form1.ComboBox1.OnChange(ComboBox1);
Combobox1.Clear;
ComBobox1.Text:=Edit1.Text;
Combobox1.OnChange(Combobox1);
Form3.OnShow(Form2);
Combobox1.Items.add('�����');
end;
procedure TForm3.Button3Click(Sender: TObject);
var
edit66:string;
begin
Ibquery2.SQL.Text:='INSERT INTO izdelie (fizicheskoe_lico_id,naimenovanie,god_vipyska,kolichestvo,cena,data_postavki) values('''+fiz_id+''','''+Edit6.text+''','''+edit10.Text+''','''+Edit8.Text+''','''+edit9.Text+''','''+edit7.Text+''')';
Ibquery2.Open;
ibquery2.Close;
Form1.IBDatabase1.Connected:=false;
Form1.IBDatabase1.Connected:=true;
Form1.ComboBox1.OnChange(ComboBox1);
edit66:=edit6.Text;
Combobox1.OnChange(Combobox1);
ComBobox2.Text:=edit66;
Combobox2.OnChange(Combobox2);
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
IBQuery3.SQL.Text:='Insert into detali (izdelie_id,naimenovanie,cvet,ves) values('''+izd_id+''','''+Edit11.Text+''','''+Edit12.text+''','''+Edit13.text+''')';
Ibquery3.Open;
ibquery3.Close;
Form1.IBDatabase1.Connected:=false;
Form1.IBDatabase1.Connected:=true;
Form1.ComboBox1.OnChange(ComboBox1);
Form3.ComboBox2.OnChange(combobox2);
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form3.close;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
Form3.close;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
Form3.close;
end;

end.
