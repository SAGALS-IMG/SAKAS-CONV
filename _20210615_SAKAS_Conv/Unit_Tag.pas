unit Unit_Tag;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.CheckLst, Vcl.Buttons, IOUtils, System.Types, IniFiles;

type
  TForm_Tag = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    BB_Get_List: TBitBtn;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    CLB_File: TCheckListBox;
    OpenDialog1: TOpenDialog;
    Panel4: TPanel;
    Panel5: TPanel;
    CB_Ext: TComboBox;
    SB_Save: TSpeedButton;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Edit_OFFN: TEdit;
    Edit_FNOFF: TEdit;
    Label9: TLabel;
    Edit_FNBK1: TEdit;
    Label5: TLabel;
    CB_Fromat: TComboBox;
    Label3: TLabel;
    Edit_FNBK2: TEdit;
    Label6: TLabel;
    Edit_FN: TEdit;
    Label4: TLabel;
    Edit_BKInt: TEdit;
    Edit_BKN: TEdit;
    Edit_ImgN: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    GroupBox2: TGroupBox;
    CB_Div_BK: TCheckBox;
    CB_Make_Sino: TCheckBox;
    CB_XY_Swap: TCheckBox;
    CB_Bin: TCheckBox;
    Edit_SinoEnd: TEdit;
    Edit_SinoST: TEdit;
    Label1: TLabel;
    Edit_AvR: TEdit;
    CB_SinoMed: TCheckBox;
    CB_Ln: TCheckBox;
    CB_AllCK: TCheckBox;
    BB_Proc: TBitBtn;
    Shape2: TShape;
    LEdit_PW: TLabeledEdit;
    LEdit_OW: TLabeledEdit;
    LEdit_OFFY: TLabeledEdit;
    LEdit_OFFX: TLabeledEdit;
    LEdit_OH: TLabeledEdit;
    LEdit_PH: TLabeledEdit;
    Shape1: TShape;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Label2: TLabel;
    LEdit_Pro: TLabeledEdit;
    Panel6: TPanel;
    Memo: TRichEdit;
    Panel7: TPanel;
    CB_Edit: TCheckBox;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    BB_Copy_Cond: TBitBtn;
    Label13: TLabel;
    procedure BB_Get_ListClick(Sender: TObject);
    procedure CLB_FileClick(Sender: TObject);
    procedure SB_SaveClick(Sender: TObject);
    procedure CB_AllCKClick(Sender: TObject);
    procedure BB_ProcClick(Sender: TObject);
    procedure CB_EditClick(Sender: TObject);
    procedure BB_Copy_CondClick(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form_Tag: TForm_Tag;
  Tag_FN : string;

implementation

{$R *.dfm}

uses main;

procedure TForm_Tag.BB_Get_ListClick(Sender: TObject);
var
  Path: String;
  FileList: TStringDynArray;
  FileName: String;
begin
  if OpenDialog1.Execute then
  begin
    CLB_File.Items.Clear;
    Path := ExtractFilePath(OpenDialog1.FileName);

    FileList := TDirectory.GetFiles(Path, CB_Ext.Items[CB_Ext.ItemIndex] , TSearchOption.soTopDirectoryOnly);
    for FileName in FileList do
    begin
      CLB_File.Items.Add(FileName);
    end;
  end;
end;

procedure TForm_Tag.CLB_FileClick(Sender: TObject);
var
  Ini: TIniFile;
begin
  Tag_FN :=  CLB_File.Items[CLB_File.ItemIndex];
  if UpperCase(ExtractFileExt(TAg_FN))='.TAG' then
  begin
    Memo.Lines.Clear;
    Memo.Lines.LoadFromFile(Tag_FN);
    Memo.Modified := false;

    Ini := TIniFile.Create(Tag_FN);
    try
      //Sample
      Label12.Caption := 'Name : '+Ini.ReadString('Sample','Name','');

      //Proc_1 data
      Edit_FN.Text := Ini.ReadString('Proc_1','File_Name','');
      CB_Fromat.ItemIndex := Ini.ReadInteger('Proc_1','Format',1);
      Edit_ImgN.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Image_Numer', 105));
      Edit_BKN.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'BK_Image_Numer', 10));
      Edit_BKInt.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'BK_Interval', 10));
      LEdit_Pro.Text := IntToStr(Ini.ReadInteger( 'Method', 'Pro_Num', 100));

      Edit_FNBK1.Text := Ini.ReadString('Proc_1','BK1_File_Name','');
      Edit_FNBK2.Text := Ini.ReadString('Proc_1','BK2_File_Name','');
      Edit_FNOff.Text := Ini.ReadString('Proc_1','Off_File_Name','');
      Edit_OffN.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Off_Image_Numer', 100));

      LEdit_OW.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Width', 2048));
      LEdit_OH.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Height', 2048));

      //Proc_2_Data
      LEdit_PW.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Pro_Width', 2048));
      LEdit_PH.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Pro_Height', 2048));
      LEdit_OFFX.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Pro_Offset_X', 0));
      LEdit_OFFY.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Pro_Offset_Y', 0));

      CB_Div_BK.Checked :=  Ini.ReadBool( 'Proc_2', 'Sino_DivBK', true);
      CB_XY_Swap.Checked := Ini.ReadBool( 'Proc_2', 'Sino_XY_Swap', true);
      CB_Bin.Checked     := Ini.ReadBool( 'Proc_2', 'Sino_Bin',true);
      CB_Ln.Checked      := Ini.ReadBool( 'Proc_2', 'Sino_Ln',true);

      CB_Make_Sino.Checked := Ini.ReadBool( 'Proc_2', 'Make_Sino', true);
      Edit_SinoST.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Sino_ST', 50));
      Edit_SinoEnd.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Sino_End', 950));
      CB_SinoMed.Checked := Ini.ReadBool( 'Proc_2', 'Sino_Median', true);
      Edit_AvR.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Sino_Z_Av', 1));
    finally
      Ini.Free;
    end;

  end;
end;

procedure TForm_Tag.SB_SaveClick(Sender: TObject);
var
  Ini: TIniFile;
begin
  if CB_Edit.Checked then
  begin
    Memo.Lines.SaveToFile(Tag_FN);
    CLB_FileClick(Sender);
  end
  else
  begin
    Ini := TIniFile.Create(Tag_FN);
    try
      Ini.WriteString('Proc_1','File_Name',Edit_FN.Text);
      //Proc_2
      Ini.WriteString( 'Proc_2', 'Mehotd','Make_sinogram');
      Ini.WriteInteger('Proc_2', 'Pro_Width', StrToInt(LEdit_PW.Text));
      Ini.WriteInteger('Proc_2', 'Pro_Height', StrToInt(LEdit_PH.Text));
      Ini.WriteInteger('Proc_2', 'Pro_Offset_X', StrToInt(LEdit_OFFX.Text));
      Ini.WriteInteger('Proc_2', 'Pro_Offset_Y', StrToInt(LEdit_OFFY.Text));

      Ini.WriteBool( 'Proc_2', 'Sino_DivBK', CB_Div_BK.Checked);
      Ini.WriteBool( 'Proc_2', 'Sino_XY_Swap', CB_XY_Swap.Checked);
      Ini.WriteBool( 'Proc_2', 'Sino_Bin', CB_Bin.Checked);
      Ini.WriteBool( 'Proc_2', 'Sino_Ln', CB_Ln.Checked);

      Ini.WriteBool( 'Proc_2', 'Make_Sino', CB_Make_Sino.Checked);
      Ini.WriteInteger( 'Proc_2', 'Sino_ST', StrToInt(Edit_SinoST.Text));
      Ini.WriteInteger( 'Proc_2', 'Sino_End', StrToInt(Edit_SinoEnd.Text));
      Ini.WriteBool( 'Proc_2', 'Sino_Median', CB_SinoMed.Checked);
      Ini.WriteInteger( 'Proc_2', 'Sino_Z_Av', StrToInt(Edit_AvR.Text));

    finally
      Ini.Free;
    end;
    Memo.Lines.Clear;
    Memo.Lines.LoadFromFile(Tag_FN);
  end;
  Memo.Modified := false;

end;

procedure TForm_Tag.CB_AllCKClick(Sender: TObject);
var
  li:longint;
begin
  for li:=0 to CLB_File.Items.Count-1 do
    CLB_File.Checked[li] := CB_AllCK.Checked;

end;

procedure TForm_Tag.CB_EditClick(Sender: TObject);
begin
  if CB_Edit.Checked then
    Memo.ReadOnly := false
  else
    Memo.ReadOnly := true;
end;

procedure TForm_Tag.BB_Copy_CondClick(Sender: TObject);
begin
  Form_Main.Edit_FN.Text := Edit_FN.Text;
  Form_Main.Edit_FNBK.Text := Edit_FNBK1.Text;
  Form_Main.Edit_FNBK2.Text := Edit_FNBK2.Text;
  Form_Main.Edit_DFN.Text := Edit_FNOFF.Text;

  Form_Main.Edit_OW.Text := LEdit_OW.Text;
  Form_Main.Edit_OH.Text := LEdit_OH.Text;
  Form_Main.Edit_PW.Text := LEdit_PW.Text;
  Form_Main.Edit_PH.Text := LEdit_PH.Text;
  Form_Main.Edit_OffX.Text := LEdit_OffX.Text;
  Form_Main.Edit_OffY.Text := LEdit_OffY.Text;

  Form_Main.Edit_Pro.Text := LEdit_Pro.Text;
  Form_Main.Edit_BKInt.Text := Edit_BKInt.Text;
  Form_Main.Edit_BKNum.Text := Edit_BKN.Text;

  if Edit_FNBK1.Text<>'' then
    Form_Main.CB_USEBK.Checked := true;
  if Edit_FNOFF.Text='' then
    Form_Main.CB_Damy.Checked := true;

  Form_Main.CB_SwapXY.Checked := CB_XY_Swap.Checked;
  Form_Main.CB_Bin.Checked := CB_Bin.Checked;
  Form_Main.CB_Ln2.Checked := CB_Ln.Checked;

  Form_Main.Edit_SinoST.Text := Edit_SinoST.Text ;
  Form_Main.Edit_SinoEnd.Text := Edit_SinoEnd.Text;
  Form_Main.Edit_AvR.Text := Edit_AvR.Text;
  Form_Main.CB_SinoMed.Checked := CB_SinoMed.Checked;
end;


procedure TForm_Tag.BB_ProcClick(Sender: TObject);
var
  li:longint;
  Ini: TIniFile;
  BFN, BDir2,lFN : string;
begin
  for li:=0 to CLB_File.Items.Count-1 do
  begin
    CLB_File.ItemIndex := li;
    CLB_FileClick(Sender);
    if CLB_File.Checked[li] then
    begin
      Form_Main.Edit_FN.Text := Edit_FN.Text;
      Form_Main.Edit_FNBK.Text := Edit_FNBK1.Text;
      Form_Main.Edit_FNBK2.Text := Edit_FNBK2.Text;
      Form_Main.Edit_DFN.Text := Edit_FNOFF.Text;

      Form_Main.Edit_OW.Text := LEdit_OW.Text;
      Form_Main.Edit_OH.Text := LEdit_OH.Text;
      Form_Main.Edit_PW.Text := LEdit_PW.Text;
      Form_Main.Edit_PH.Text := LEdit_PH.Text;
      Form_Main.Edit_OffX.Text := LEdit_OffX.Text;
      Form_Main.Edit_OffY.Text := LEdit_OffY.Text;

      Form_Main.Edit_Pro.Text := LEdit_Pro.Text;
      Form_Main.Edit_BKInt.Text := Edit_BKInt.Text;
      Form_Main.Edit_BKNum.Text := Edit_BKN.Text;

      if Edit_FNBK1.Text<>'' then
        Form_Main.CB_USEBK.Checked := true;
      if Edit_FNOFF.Text='' then
        Form_Main.CB_Damy.Checked := true;

      Form_Main.CB_SwapXY.Checked := CB_XY_Swap.Checked;
      Form_Main.CB_Bin.Checked := CB_Bin.Checked;
      Form_Main.CB_Ln2.Checked := CB_Ln.Checked;

      Form_Main.Edit_SinoST.Text := Edit_SinoST.Text ;
      Form_Main.Edit_SinoEnd.Text := Edit_SinoEnd.Text;
      Form_Main.Edit_AvR.Text := Edit_AvR.Text;
      Form_Main.CB_SinoMed.Checked := CB_SinoMed.Checked;

      Form_Main.BB_PrevBKClick(Sender);
      Form_Main.BB_DARKClick(Sender);
      Form_Main.BB_ConvClick(Sender);
      Form_Main.BB_MakeSinoClick(Sender);

      Ini := TIniFile.Create(Tag_FN);
      try
        //Proc_2
        BFN := Form_Main.Edit_FN.Text;
        BDir2 := ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\sino\';
        lFN :=TPath.GetFileNameWithoutExtension(BFN);
        Ini.WriteString( 'Proc_2', 'Sino_File_Name', BDir2+lFN+'_s_*');

        Ini.WriteInteger('Proc_2','Image_Numer',StrToInt(Edit_SinoEnd.Text)-StrToInt(Edit_SinoST.Text)+1);

        if Form_Main.CB_SwapXY.Checked then
        begin
          if Form_Main.CB_Bin.Checked then
            Ini.WriteInteger( 'Proc_2', 'Width', StrToInt(Form_Main.Edit_PH.Text) div 2)
          else
            Ini.WriteInteger( 'Proc_2', 'Width', StrToInt(Form_Main.Edit_PH.Text))
        end
        else
        begin
          if Form_Main.CB_Bin.Checked then
            Ini.WriteInteger( 'Proc_2', 'Width', StrToInt(Form_Main.Edit_PW.Text) div 2)
          else
            Ini.WriteInteger( 'Proc_2', 'Width', StrToInt(Form_Main.Edit_PW.Text))
        end;
        Ini.WriteInteger( 'Proc_2', 'Height', StrToInt(Form_Main.Edit_Pro.Text));
        Ini.WriteInteger( 'Proc_2', 'Format', 3);

      finally
        Ini.Free;
      end;

      CLB_File.Checked[li] := false;

    end;
  end;
end;


end.
