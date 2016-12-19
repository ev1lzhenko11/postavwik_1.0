unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBDatabase, StdCtrls, IBCustomDataSet, IBQuery, Grids,
  DBGrids, Buttons,IniFiles, Menus, Mask, DBCtrls;

type
  TForm1 = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    ComboBox1: TComboBox;
    IBTransaction2: TIBTransaction;
    IBQuery2: TIBQuery;
    DataSource2: TDataSource;
    IBTransaction3: TIBTransaction;
    IBQuery3: TIBQuery;
    DataSource3: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Fnew:Boolean;
implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
IBQuery1.Close;
IBQuery2.Close;
IBQuery3.Close;
IBDatabase1.Connected:=false;
end;






procedure TForm1.ComboBox1Change(Sender: TObject);
var
i:integer;
begin
If Combobox1.Text='Организация' then
begin
IbQuery1.SQL.Text:='Select *from organizaciya';
IBQuery1.Close;
IBQuery1.Open;
IBquery2.SQL.text:='Select *from izdelie where FIZICHESKOE_LICO_ID is NULL';
IBQuery2.Close;
IBQuery2.Open;
Ibquery3.SQL.Text:='SELECT detali.*FROM detali join izdelie on detali.izdelie_id=izdelie.izdelie_id join organizaciya ON organizaciya.organizaciya_id = izdelie.organizaciya_id';
IBQuery3.Close;
IBQuery3.Open;
end;
If Combobox1.Text='Физическое лицо' then
begin
IbQuery1.SQL.Text:='Select *from fizicheskoe_lico';
IBQuery1.Close;
IBQuery1.Open;
IBquery2.SQL.text:='Select *from izdelie where ORGANIZACIYA_ID is NULL';
IBQuery2.Close;
IBQuery2.Open;
Ibquery3.SQL.Text:='SELECT detali.*FROM detali join izdelie on detali.izdelie_id=izdelie.izdelie_id join fizicheskoe_lico ON fizicheskoe_lico.fizicheskoe_lico_id = izdelie.fizicheskoe_lico_ID';
IBQuery3.Close;
IBQuery3.Open;
end;
for i := 0 to DBGrid1.Columns.Count - 1
do DBGrid1.Columns.Items[i].Width := Round(DBGrid1.Width/DBGrid1.Columns.Count - 1)-5;
for i := 0 to DBGrid2.Columns.Count - 1
do DBGrid2.Columns.Items[i].Width := Round(DBGrid2.Width/DBGrid2.Columns.Count - 1)-3;
for i := 0 to DBGrid3.Columns.Count - 1
do DBGrid3.Columns.Items[i].Width := Round(DBGrid3.Width/DBGrid3.Columns.Count - 1)-5;
Button1.Visible:=true;
Button5.enabled:=false;
Button2.enabled:=false;
Button6.enabled:=false;
Button3.enabled:=false;
Button7.enabled:=false;
Button4.enabled:=false;
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
var
i:integer;
begin
if (Combobox1.text='Организация') and (dbgrid1.datasource.dataset.recordcount <> 0)  then
begin
IbQuery2.SQL.Text:='select *from izdelie where organizaciya_id=' +IBQuery1.FieldByName('organizaciya_id').AsString;
IBQuery2.Close;
IBQuery2.Open;
Ibquery3.SQL.Text:='SELECT detali.* FROM detali join izdelie on detali.izdelie_id=izdelie.izdelie_id WHERE izdelie.organizaciya_id='+IbQuery1.FieldByName('organizaciya_id').AsString;
IBQuery3.Close;
IBQuery3.Open;
end;

if (Combobox1.text='Физическое лицо') and (dbgrid1.datasource.dataset.recordcount <> 0) then
begin
IbQuery2.SQL.Text:='select *from izdelie where fizicheskoe_lico_id=' +IBQuery1.FieldByName('fizicheskoe_lico_id').AsString;
IBQuery2.Close;
IBQuery2.Open;
Ibquery3.SQL.Text:='SELECT detali.* FROM detali join izdelie on detali.izdelie_id=izdelie.izdelie_id WHERE izdelie.fizicheskoe_lico_id='+IbQuery1.FieldByName('fizicheskoe_lico_id').AsString;
IBQuery3.Close;
IBQuery3.Open;
end;
for i := 0 to DBGrid1.Columns.Count - 1
do DBGrid1.Columns.Items[i].Width := Round(DBGrid1.Width/DBGrid1.Columns.Count - 1)-5;
for i := 0 to DBGrid2.Columns.Count - 1
do DBGrid2.Columns.Items[i].Width := Round(DBGrid2.Width/DBGrid2.Columns.Count - 1)-3;
for i := 0 to DBGrid3.Columns.Count - 1
do DBGrid3.Columns.Items[i].Width := Round(DBGrid3.Width/DBGrid3.Columns.Count - 1)-5;
end;

procedure TForm1.DBGrid2DblClick(Sender: TObject);
var
i:integer;
begin
if (Combobox1.text='Организация') and(dbgrid2.datasource.dataset.recordcount <> 0) then
begin
Ibquery3.SQL.Text:='select *from detali where izdelie_id='+ Ibquery2.FieldByName('izdelie_id').Asstring;
Ibquery3.Close;
ibquery3.Open;
end;

if (Combobox1.text='Физическое лицо') and (dbgrid2.datasource.dataset.recordcount <> 0) then
begin
Ibquery3.SQL.Text:='select *from detali where izdelie_id='+ Ibquery2.FieldByName('izdelie_id').Asstring;
Ibquery3.Close;
ibquery3.Open;
end;
for i := 0 to DBGrid1.Columns.Count - 1
do DBGrid1.Columns.Items[i].Width := Round(DBGrid1.Width/DBGrid1.Columns.Count - 1)-5;
for i := 0 to DBGrid2.Columns.Count - 1
do DBGrid2.Columns.Items[i].Width := Round(DBGrid2.Width/DBGrid2.Columns.Count - 1)-3;
for i := 0 to DBGrid3.Columns.Count - 1
do DBGrid3.Columns.Items[i].Width := Round(DBGrid3.Width/DBGrid3.Columns.Count - 1)-4;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
mydir:string;
begin
MyDIR:=ExtractFileDir(Application.ExeName);
Ibdatabase1.DatabaseName:='localhost:'+mydir+'\gg.gdb';

Form1.ClientWidth:=923;
Form1.ClientHeight:=834;
Form1.Position := poScreenCenter
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Button5.Enabled:=false;
Button2.Enabled:=false;
Button6.Enabled:=false;
Button3.Enabled:=false;
Button4.Enabled:=false;
Button7.Enabled:=false;
if Combobox1.Text='Организация' then
begin
Form2.Visible:=true;
Form2.Button1.Visible:=true;
Form2.Button2.Visible:=true;
Form2.Button3.Visible:=false;
Form2.Button4.Visible:=false;
Form2.Button5.Visible:=false;
Form2.Button6.Visible:=false;

end;
if Combobox1.Text='Физическое лицо' then
begin
Form3.Visible:=true;
Form3.Button1.Visible:=true;
Form3.Button2.Visible:=true;
Form3.Button3.Visible:=false;
Form3.Button4.Visible:=false;
Form3.Button5.Visible:=false;
Form3.Button6.Visible:=false;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

if (combobox1.text='Организация') then
begin
DBGrid1.OnDblClick(DBGrid1);
if (dbgrid2.datasource.dataset.recordcount = 0) then
begin
Ibquery1.SQL.text:='delete from organizaciya where organizaciya_id='+Ibquery1.FieldByName('organizaciya_id').AsString;
IbQuery1.Open;
ibquery1.Close;
ibdatabase1.Connected:=false;
ibdatabase1.Connected:=true;
Combobox1.OnChange(Combobox1);
if (dbgrid1.datasource.dataset.recordcount = 0) then
begin
button5.Enabled:=false;button2.Enabled:=false;
end;
end
else
begin
Showmessage('Есть зависимые поля!');
button5.Enabled:=false;button2.Enabled:=false;
DBGrid1.OnDblClick(DBGrid1);
end;
end;

if (combobox1.text='Физическое лицо') then
begin
DBGrid1.OnDblClick(DBGrid1);
if (dbgrid2.datasource.dataset.recordcount = 0) then
begin
Ibquery1.SQL.text:='delete from fizicheskoe_lico where fizicheskoe_lico_id='+Ibquery1.FieldByName('fizicheskoe_lico_id').AsString;
IbQuery1.Open;
ibquery1.Close;
ibdatabase1.Connected:=false;
ibdatabase1.Connected:=true;
Combobox1.OnChange(Combobox1);
if (dbgrid1.datasource.dataset.recordcount = 0) then
begin
button5.Enabled:=false;button2.Enabled:=false;
end;
end
else
begin
Showmessage('Есть зависимые поля!');
button5.Enabled:=false;button2.Enabled:=false;
DBGrid1.OnDblClick(DBGrid1);
end;
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if (Combobox1.Text='Организация') then
begin
DBGrid2.OnDblClick(DBGrid2);
if (dbgrid3.datasource.dataset.recordcount = 0) then
begin
Ibquery2.SQL.text:='delete from izdelie where izdelie_id='+Ibquery2.FieldByName('izdelie_id').AsString;
IbQuery2.Open;
ibquery2.Close;
IBDatabase1.Connected:=false;
IBDatabase1.Connected:=true;
Combobox1.OnChange(Combobox1);
if (dbgrid2.datasource.dataset.recordcount = 0) then
begin
button6.Enabled:=false;button3.Enabled:=false;
end;

end
else
begin
Showmessage('Есть зависимые поля!');
button6.Enabled:=false;button3.Enabled:=false;
DBGrid2.OnDblClick(DBGrid2);
end;


end;
if (Combobox1.Text='Физическое лицо') then
begin
DBGrid2.OnDblClick(DBGrid2);
if (dbgrid3.datasource.dataset.recordcount = 0) then
begin
Ibquery2.SQL.text:='delete from izdelie where izdelie_id='+Ibquery2.FieldByName('izdelie_id').AsString;
IbQuery2.Open;
ibquery2.Close;
IBDatabase1.Connected:=false;
IBDatabase1.Connected:=true;
Combobox1.OnChange(Combobox1);
DBGrid1.OnDblClick(DBGrid1);
if (dbgrid2.datasource.dataset.recordcount = 0) then
begin
button6.Enabled:=false;button3.Enabled:=false;
end;

end
else
begin
Showmessage('Есть зависимые поля!');
button6.Enabled:=false;button3.Enabled:=false;
DBGrid2.OnDblClick(DBGrid2);
end;
end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if Combobox1.Text='Организация' then
begin
Ibquery3.SQL.text:='delete from detali where detali_id='+Ibquery3.FieldByName('detali_id').AsString;
IbQuery3.Open;
ibquery3.Close;
Combobox1.OnChange(Combobox1);
DBGrid2.OnDblClick(DBGrid2);
if (dbgrid3.datasource.dataset.recordcount = 0) then
begin
button7.Enabled:=false;button4.Enabled:=false;
end;
IBDatabase1.Connected:=false;
IBDatabase1.Connected:=true;
Combobox1.OnChange(Combobox1);
end;
if Combobox1.Text='Физическое лицо' then
begin
Ibquery3.SQL.text:='delete from detali where detali_id='+Ibquery3.FieldByName('detali_id').AsString;
IbQuery3.Open;
ibquery3.Close;
Combobox1.OnChange(Combobox1);
DBGrid2.OnDblClick(DBGrid2);
if (dbgrid3.datasource.dataset.recordcount = 0) then
begin
button7.Enabled:=false;button4.Enabled:=false;
end;
IBDatabase1.Connected:=false;
IBDatabase1.Connected:=true;
Combobox1.OnChange(Combobox1);
end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
if (dbgrid1.datasource.dataset.recordcount <> 0) then
begin
Button5.Enabled:=true;
Button2.Enabled:=true;
end;
DBGrid1.OnDblClick(DBGrid1);
end;

procedure TForm1.DBGrid2CellClick(Column: TColumn);
begin
if (dbgrid2.datasource.dataset.recordcount <> 0) then
begin
Button6.Enabled:=true;
Button3.Enabled:=true;
end;
DBGrid2.OnDblClick(DBGrid2);
end;

procedure TForm1.DBGrid3CellClick(Column: TColumn);
begin
if (dbgrid3.datasource.dataset.recordcount <> 0) then
begin
Button7.Enabled:=true;
Button4.Enabled:=true;
end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
if Combobox1.Text='Организация' then
begin
Form4.Visible:=true;
end;
if Combobox1.Text='Физическое лицо' then
begin
Form5.Visible:=true;
end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
begin
if Combobox1.Text='Организация' then
begin
Form6.Visible:=true;
end;
if Combobox1.Text='Физическое лицо' then
begin
Form6.Visible:=true;
end;
end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Form7.Visible:=true;
end;

end.
