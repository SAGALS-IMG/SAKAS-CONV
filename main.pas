unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst, System.Types,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, IniFiles, Unit_PW, System.IOUtils, Math;

type
  TForm_Main = class(TForm)
    SB: TStatusBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Edit_FN: TEdit;
    Edit_BKNum: TEdit;
    Edit_Pro: TEdit;
    Edit_OffFN: TEdit;
    Label9: TLabel;
    Edit_DN: TEdit;
    OpenDialog1: TOpenDialog;
    Shape1: TShape;
    LEdit_OW: TLabeledEdit;
    LEdit_OFFY: TLabeledEdit;
    LEdit_OFFX: TLabeledEdit;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    Label2: TLabel;
    LEdit_OH: TLabeledEdit;
    LEdit_PH: TLabeledEdit;
    Shape2: TShape;
    Label13: TLabel;
    LEdit_PW: TLabeledEdit;
    Label3: TLabel;
    Edit_Rot_angle: TEdit;
    Label4: TLabel;
    Edit_BKInt: TEdit;
    Memo: TRichEdit;
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    BB_Proc: TBitBtn;
    Panel3: TPanel;
    CLB_File: TCheckListBox;
    CB_Ext: TComboBox;
    CB_AllCK: TCheckBox;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label5: TLabel;
    BB_Open: TBitBtn;
    BB_PrevBK: TBitBtn;
    Edit_PrevBK: TEdit;
    UD_PrevBK: TUpDown;
    Edit_DBK: TEdit;
    CB_Damy: TCheckBox;
    BB_DARK: TBitBtn;
    BB_Prev_NImg: TBitBtn;
    Edit_PrevNImg: TEdit;
    UD_PrevNImg: TUpDown;
    CB_Ln2: TCheckBox;
    CB_WOBK: TCheckBox;
    BB_Norm: TBitBtn;
    BB_STop2: TBitBtn;
    CB_SwapXY: TCheckBox;
    CB_Bin: TCheckBox;
    CB_Med: TCheckBox;
    BB_MakeSino: TBitBtn;
    BB_STOP: TBitBtn;
    Edit_SinoEnd: TEdit;
    Edit_SinoST: TEdit;
    Edit_AvR: TEdit;
    BB_Copy_Cond: TBitBtn;
    Splitter1: TSplitter;
    SB_FOpen: TSpeedButton;
    SB_FOOpen: TSpeedButton;
    SB_Help: TSpeedButton;
    Label7: TLabel;
    SB_ViewInfo: TSpeedButton;
    SB_BK1: TSpeedButton;
    Edit_BKFN2: TEdit;
    SB_BK2: TSpeedButton;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Edit_BKFN1: TEdit;
    CB_Method: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Edit_FS: TEdit;
    CB_BKOnly: TCheckBox;
    Edit_ImgNo: TEdit;
    UD_ImgNo: TUpDown;
    SB_TagList_Reload: TSpeedButton;
    RB_Compled: TRadioButton;
    Label17: TLabel;
    Edit_ImgN: TEdit;
    Label37: TLabel;
    Edit_Dir: TEdit;
    SB_Dir: TSpeedButton;
    Panel1: TPanel;
    RB_Proc2: TRadioButton;
    BB_STOP_Proc: TBitBtn;
    Labele18: TLabel;
    Label_Sample_Name: TLabel;
    BB_SaveImg: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Init_Cond(Sender: TObject);
    procedure WriteProc2(Sender: TObject);
    procedure WriteComped(Sender: TObject);
    procedure OpenTag(Sender: TObject);

    procedure BB_OpenClick(Sender: TObject);
    procedure BB_PrevBKClick(Sender: TObject);
    procedure BB_DARKClick(Sender: TObject);
    procedure BB_Prev_NImgClick(Sender: TObject);
    procedure UD_PrevBKClick(Sender: TObject; Button: TUDBtnType);
    procedure UD_PrevNImgClick(Sender: TObject; Button: TUDBtnType);
    procedure BB_NormClick(Sender: TObject);
    procedure BB_MakeSinoClick(Sender: TObject);
    procedure BB_Copy_CondClick(Sender: TObject);
    procedure CLB_FileClick(Sender: TObject);
    procedure CB_AllCKClick(Sender: TObject);
    procedure BB_ProcClick(Sender: TObject);
    procedure BB_STop2Click(Sender: TObject);
    procedure BB_STOPClick(Sender: TObject);

    procedure SB_ViewInfoClick(Sender: TObject);
    procedure SB_FOpenClick(Sender: TObject);
    procedure SB_FOOpenClick(Sender: TObject);
    procedure SB_HelpClick(Sender: TObject);
    procedure SB_BK1Click(Sender: TObject);
    procedure SB_BK2Click(Sender: TObject);

    procedure ABS_BK(Sender: TObject);
    procedure PH_BK(Sender: TObject);
    procedure ABS_Prev(Sender: TObject);
    procedure Ph_Prev(Sender: TObject);
    procedure UD_ImgNoClick(Sender: TObject; Button: TUDBtnType);
    procedure SB_TagList_ReloadClick(Sender: TObject);
    procedure SB_DirClick(Sender: TObject);
    procedure BB_STOP_ProcClick(Sender: TObject);
    procedure BB_SaveImgClick(Sender: TObject);

  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form_Main: TForm_Main;

  ImgPV : TForm_PW;

  BKInt, Pro, BKNum, OffImg, FSN, ImgN : longint;
  BKData : array[0..8] of TData;
  NData, TmpData, SSData, DARKData : TData;
  Go : boolean;
  TagFN : string;

  BKRe, BKIm, BKAbs, BKPh, BKAmp: array[0..2,0..PY_max,0..PX_max] of single;
  Ore,OIm,PhData, AbsData, AmpData : TData;//array[0..maxPH,0..maxPW] of double;
  MyCos,MySin : array[0..50] of double;
  OrigIData : array[0..10, 0..PX_max,0..PY_max] of word;
  SData : array[0..15] of double;

  Xs,Ys : array[0..2600] of double;

implementation

{$R *.dfm}

uses Unit_SAKAS, Unit_ABOUT;

procedure TForm_Main.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  ImgPV := TForm_PW.Create(Self);
  Go := false;

  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Top     := Ini.ReadInteger( 'Form_main', 'Top', 100 );
    Left    := Ini.ReadInteger( 'Form_main', 'Left', 100 );
    Width   := Ini.ReadInteger( 'Form_main', 'Width', 750 );
    Height  := Ini.ReadInteger( 'Form_main', 'Height', 500 );
    if Ini.ReadBool( 'Form_main', 'InitMax', false ) then
      WindowState := wsMaximized
    else
      WindowState := wsNormal;

    Edit_Dir.Text := Ini.ReadString( 'Param', 'Tag_Dir', '' );

    LEdit_OW.Text  := Ini.ReadString( 'Param', 'OW', '1000' );
    LEdit_OH.Text  := Ini.ReadString( 'Param', 'OH', '500' );
    LEdit_PW.Text  := Ini.ReadString( 'Param', 'PW', '1000' );
    LEdit_PH.Text  := Ini.ReadString( 'Param', 'PH', '500' );
    LEdit_OFFX.Text  := Ini.ReadString( 'Param', 'OFFX', '0' );
    LEdit_OFFY.Text  := Ini.ReadString( 'Param', 'OFFY', '0' );

    Edit_FN.Text  := Ini.ReadString( 'Param', 'FN', '' );
    Edit_BKFN1.Text := Ini.ReadString( 'Param', 'BK1_File_Name', '');
    Edit_BKFN2.Text := Ini.ReadString( 'Param', 'BK2_File_Name', '');
    Edit_OffFN.Text  := Ini.ReadString( 'Param', 'Off_FN', '' );

    CB_Method.ItemIndex  := Ini.ReadInteger( 'Param', 'Method', 0 );
    Edit_FS.Text  := Ini.ReadString( 'Param', 'FSN', '3' );

    Edit_ImgN.Text  := Ini.ReadString( 'Param', 'ImgN', '650' );
    Edit_Pro.Text  := Ini.ReadString( 'Param', 'Pro', '650' );
    Edit_Rot_Angle.Text  := Ini.ReadString( 'Param', 'Angle', '360' );
    Edit_BKInt.Text  := Ini.ReadString( 'Param', 'BKInt', '1050' );
    Edit_BKNum.Text  := Ini.ReadString( 'Param', 'BKNum', '100' );
    Edit_DN.Text  := Ini.ReadString( 'Param', 'DN', '100' );

    Edit_SinoST.Text := Ini.ReadString( 'Param', 'Sino_ST', '' );
    Edit_SinoEnd.Text := Ini.ReadString( 'Param', 'Sino_End', '' );

    CB_SwapXY.Checked := Ini.ReadBool( 'Param', 'XY_WSAP', false);
    CB_Bin.Checked :=  Ini.ReadBool( 'Param', 'Conv_BIN', false);
    CB_Med.Checked :=  Ini.ReadBool( 'Param', 'Medain', false);
  finally
    Ini.Free;
  end;
end;

procedure TForm_Main.FormDestroy(Sender: TObject);
var
   Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Ini.WriteInteger( 'Form_main', 'Top', Top);
    Ini.WriteInteger( 'Form_main', 'Left', Left);
    Ini.WriteInteger( 'Form_main', 'Width', Width );
    Ini.WriteInteger( 'Form_main', 'Height', Height );

    Ini.WriteString( 'Param', 'Tag_Dir', Edit_Dir.Text );

    Ini.WriteString( 'Param', 'OW', LEdit_OW.Text );
    Ini.WriteString( 'Param', 'OH', LEdit_OH.Text );
    Ini.WriteString( 'Param', 'PW', LEdit_PW.Text );
    Ini.WriteString( 'Param', 'PH', LEdit_PH.Text );
    Ini.WriteString( 'Param', 'OFFX', LEdit_OFFX.Text );
    Ini.WriteString( 'Param', 'OFFY', LEdit_OFFY.Text );

    Ini.WriteString( 'Param', 'FN', Edit_FN.Text );
    Ini.WriteString( 'Param', 'BK1_File_Name', Edit_BKFN1.Text);
    Ini.WriteString( 'Param', 'BK2_File_Name', Edit_BKFN2.Text);
    Ini.WriteString( 'Param', 'Off_FN', Edit_OffFN.Text );

    Ini.WriteInteger( 'Param', 'Method', CB_Method.ItemIndex );
    Ini.WriteString( 'Param', 'FSN', Edit_FS.Text);

    Ini.WriteString( 'Param', 'ImgN', Edit_ImgN.Text );
    Ini.WriteString( 'Param', 'Pro', Edit_Pro.Text );
    Ini.WriteString( 'Param', 'Angle', Edit_Rot_Angle.Text );
    Ini.WriteString( 'Param', 'BKInt', Edit_BKInt.Text );
    Ini.WriteString( 'Param', 'BKNum', Edit_BKNum.Text );
    Ini.WriteString( 'Param', 'DN', Edit_DN.Text );

    Ini.WriteString( 'Param', 'Sino_ST', Edit_SinoST.Text );
    Ini.WriteString( 'Param', 'Sino_End', Edit_SinoEnd.Text );

    Ini.WriteBool( 'Param', 'XY_WSAP', CB_SwapXY.Checked);
    Ini.WriteBool( 'Param', 'Conv_BIN', CB_Bin.Checked);
    Ini.WriteBool( 'Param', 'Medain', CB_Med.Checked);
  finally
    Ini.Free;
  end;
  ImgPV.Free;
end;

procedure TForm_Main.Init_Cond(Sender: TObject);
begin
  with ImgPV do
  begin
    OW := StrToInt(LEdit_OW.Text);
    OH := StrToInt(LEdit_OH.Text);
    PW := StrToInt(LEdit_PW.Text);
    PH := StrToInt(LEdit_PH.Text);
    OFFX := StrToInt(LEdit_OffX.Text);
    OFFY := StrToInt(LEdit_OffY.Text);
  end;
  BKNum := StrToInt(Edit_BKNum.Text);
  BKInt := StrToInt(Edit_BKInt.Text);
  FSN := StrToInt(Edit_FS.Text);
  Pro := StrToInt(Edit_PRo.Text);
  ImgN := StrToInt(Edit_ImgN.Text);
  if BKInt =0 then
  begin
    CB_BKOnly.Checked := true;
    BKInt := ImgN+1;
  end;
end;


procedure TForm_Main.WriteComped(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(Edit_FN.Text+'.tag');
  try
    Ini.WriteString( 'Proc_2', 'Status', 'Completed');
  finally
    Ini.Free;
  end;
end;

procedure TForm_Main.WriteProc2(Sender: TObject);
var
  BFN, BDir2,lFN : string;
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(Edit_FN.Text+'.tag');
  try
    if not(Ini.ValueExists('Proc_1','File_Name')) then
      Ini.WriteString('Proc_1','File_Name',Edit_FN.Text);
    if not(Ini.ValueExists('Proc_1','BK1_File_Name')) then
      Ini.WriteString( 'Proc_1', 'BK1_File_Name', Edit_BKFN1.Text );
    if not(Ini.ValueExists('Proc_1','BK2_File_Name')) then
      Ini.WriteString( 'Proc_1', 'BK2_File_Name', Edit_BKFN2.Text );
    if not(Ini.ValueExists('Proc_1','Off_File_Name')) then
      Ini.WriteString( 'Proc_1', 'Off_File_Name', Edit_OffFN.Text );

    if not(Ini.ValueExists('Method', 'Pro_Num')) then
      Ini.WriteString( 'Method', 'Pro_Num', Edit_Pro.Text);
    if not(Ini.ValueExists( 'Method', 'Pro_angle')) then
      if Edit_Rot_Angle.Text='360' then
        Ini.WriteInteger( 'Method', 'Pro_angle', 360)
      else
        Ini.WriteInteger( 'Method', 'Pro_angle', 180);

    if not(Ini.ValueExists( 'Proc_1', 'BK_Interval')) then
      Ini.WriteString( 'Proc_1', 'BK_Interval', Edit_BKInt.Text);
    if not(Ini.ValueExists('Proc_1', 'BK_Image_Num')) then
      Ini.WriteString( 'Proc_1', 'BK_Image_Num', Edit_BKNum.Text );
    if not(Ini.ValueExists( 'Proc_1', 'Off_Image_Num')) then
      Ini.WriteString( 'Proc_1', 'Off_Image_Num', Edit_DN.Text);

    if not(Ini.ValueExists('Proc_1', 'Width')) then
      Ini.WriteString( 'Proc_1', 'Width', LEdit_PW.Text);
    if not(Ini.ValueExists('Proc_1', 'Height')) then
      Ini.WriteString( 'Proc_1', 'Height', LEdit_PH.Text);

    if not(Ini.ValueExists('Proc_1', 'Offset_X')) then
      Ini.WriteString( 'Proc_1', 'Offset_X', LEdit_OFFX.Text);
    if not(Ini.ValueExists('Proc_1', 'Offset_Y')) then
      Ini.WriteString( 'Proc_1', 'Offset_Y', LEdit_OFFY.Text);

    //Proc_2
    Ini.WriteString( 'Proc_2', 'Method', 'Make sinogram');
    Ini.WriteString( 'Proc_2', 'Status', 'Waiting');

    BFN := Edit_FN.Text;
    BDir2 := ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\sino\';
    lFN :=TPath.GetFileNameWithoutExtension(BFN);
    Ini.WriteString( 'Proc_2', 'File_Name', BDir2+lFN+'_s_*');

    Ini.WriteInteger('Proc_2','Image_Num',StrToInt(Edit_SinoEnd.Text)-StrToInt(Edit_SinoST.Text)+1);

    if CB_SwapXY.Checked then
    begin
      if CB_Bin.Checked then
        Ini.WriteInteger( 'Proc_2', 'Width', StrToInt(LEdit_PH.Text) div 2)
      else
        Ini.WriteInteger( 'Proc_2', 'Width', StrToInt(LEdit_PH.Text))
      end
    else
    begin
      if CB_Bin.Checked then
        Ini.WriteInteger( 'Proc_2', 'Width', StrToInt(LEdit_PW.Text) div 2)
      else
        Ini.WriteInteger( 'Proc_2', 'Width', StrToInt(LEdit_PW.Text))
    end;

    if Edit_BKFN1.Text='' then
      Ini.WriteInteger( 'Proc_2', 'Height', ImgN)
    else
      Ini.WriteInteger( 'Proc_2', 'Height', ImgN-(ImgN div BKInt+1)*BKNum);

    Ini.WriteInteger( 'Proc_2', 'Offset_X', StrToInt(LEdit_OffX.Text));
    Ini.WriteInteger( 'Proc_2', 'Offset_Y', StrToInt(LEdit_OffY.Text));

    Ini.WriteInteger( 'Proc_2', 'Format', 3);

    Ini.WriteBool( 'Proc_2', 'XY_Swap',  CB_SwapXY.Checked);
    Ini.WriteBool( 'Proc_2', 'BINNING',  CB_Bin.Checked);
    Ini.WriteBool( 'Proc_2', 'Med_Filter',CB_Med.Checked);

    Ini.WriteInteger( 'Proc_2', 'Sino_ST', StrToInt(Edit_SinoST.Text));
    Ini.WriteInteger( 'Proc_2', 'Sino_End', StrToInt(Edit_SinoEnd.Text));
  finally
    Ini.Free;
  end;
end;

procedure TForm_Main.OpenTag(Sender: TObject);
var
  Ini: TIniFile;
begin
  if UpperCase(ExtractFileExt(TagFN)) = '.TAG' then
  begin
    Edit_FN.Text := ChangeFileExt(TagFN,'');

    Ini := TIniFile.Create(TagFN);
    try
      Edit_BKFN1.Text := Ini.ReadString( 'Proc_1', 'BK1_File_Name', '');
      Edit_BKFN2.Text := Ini.ReadString( 'Proc_1', 'BK2_File_Name', '');
      Edit_OffFN.Text := Ini.ReadString( 'Proc_1', 'Off_File_Name', '');

      Edit_ImgN.Text :=  Ini.ReadString( 'Proc_1', 'Image_Num', '');

      Edit_Pro.Text := IntToStr(Ini.ReadInteger( 'Method', 'Pro_Num', 100));
      Edit_Rot_Angle.Text := Ini.ReadString('Method', 'Pro_angle', '360');
      if Ini.ReadInteger('Method', 'Pro_angle', 1) =1 then
        Edit_Rot_Angle.Text := '360';
      if Ini.ReadInteger('Method', 'Pro_angle', 1) =0 then
        Edit_Rot_Angle.Text := '180';

      Label_Sample_Name.Caption :=Ini.ReadString( 'Sample', 'Name', '');

      if Ini.ReadString('Method', 'Method','')='CT' then
      begin
        CB_Method.ItemIndex :=0;
        Edit_FS.Text := '1';
      end
      else
      begin
        CB_Method.ItemIndex :=1;
        Edit_FS.Text := Ini.ReadString('Method', 'FS_Num','1');
      end;

      Edit_BKInt.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'BK_Interval', 1050));
      Edit_BKNum.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'BK_Image_Num', 100));
      Edit_DN.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Off_Image_Num', 100));

      LEdit_OW.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Width', 2048));
      LEdit_OH.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Height', 2048));
      LEdit_PW.Text := LEdit_OW.Text;
      LEdit_PH.Text := LEdit_OH.Text;
      LEdit_OFFX.Text := '0';
      LEdit_OFFY.Text := '0';

      if Ini.SectionExists('Proc_2') then
      begin
        RB_Proc2.Checked := true;
        RB_Compled.Checked:=false;

        if Ini.ReadString( 'Proc_2', 'Status','')='Completed' then
          RB_Compled.Checked:=true;

        if Ini.ValueExists( 'Proc_2', 'XY_Swap') then
          CB_SwapXY.Checked := Ini.ReadBool( 'Proc_2', 'XY_Swap', true);
        if Ini.ValueExists( 'Proc_2', 'BINNING') then
          CB_Bin.Checked     := Ini.ReadBool( 'Proc_2', 'BINNING',true);
        if Ini.ValueExists( 'Proc_2', 'Med_Filter') then
          CB_Med.Checked     := Ini.ReadBool( 'Proc_2', 'Med_Filter',true);

        if Ini.ValueExists( 'Proc_2', 'Sino_ST') then
          Edit_SinoST.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Sino_ST', 50));
        if Ini.ValueExists( 'Proc_2', 'Sino_End') then
          Edit_SinoEnd.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Sino_End', 950));
      end
      else
      begin
        RB_Proc2.Checked := false;
      end;

    finally
      Ini.Free;
    end;
  end;
end;

procedure TForm_Main.UD_ImgNoClick(Sender: TObject; Button: TUDBtnType);
begin
  BB_OpenClick(Sender);
end;


procedure TForm_Main.BB_OpenClick(Sender: TObject);
begin
  Init_Cond(Sender);
//  if CB_Method.ItemIndex=0 then
//  begin
//    ImgPV.UD_Tpro.Max := Pro+1+BKNum*2;
//    UD_PrevNImg.Max :=  Pro+1+BKNum*2;
//  end
//  else
//  begin
//    ImgPV.UD_Tpro.Max := (Pro+1)*FSN+(BKNum*2)*FSN;
//    UD_PrevNImg.Max :=  (Pro+1)*FSN+(BKNum*2)*FSN;
//  end;

  ImgPV.UD_TPro.Position := UD_ImgNo.Position;
  ImgPV.Load_WORDData(Edit_FN.Text,Sender);
  ImgPV.Show;
  ImgPV.Draw_Data(Sender);
end;


//*****************************************************
//*****************************************************
//*****************************************************

procedure TForm_Main.ABS_BK(Sender: TObject);
var
  i, j, kk,m,n, BKn :longint;
  TmpStr : string;
begin
  for m:=0 to (ImgN div BKInt) do
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        BKData[m,j,i] := 0;

  if Edit_BKFN1.Text<>'' then
  begin
    UD_PrevBK.Max := 1;
    TmpStr := 'BK1 : ';
    for kk:=0 to BKNum-1 do
    begin
      ImgPV.UD_TPro.Position := kk;
      ImgPV.Load_WORDData(Edit_BKFN1.Text,Sender);
      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
          BKData[0,j,i] := BKData[0,j,i]+ImgPV.PData[j,i];
      Application.ProcessMessages;
      TmpStr := TmpStr+' '+kk.ToString;
      Memo.Lines.Text := TmpStr;
    end;

    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        BKData[0,j,i] := BKData[0,j,i]/BKNum;

    if CB_Med.Checked then
    begin
      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
          ImgPV.PData[j,i] := BKData[0,j,i];
      ImgPV.Median_Img(ImgPV.PData);
      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
          BKData[0,j,i] := ImgPV.PData[j,i];
    end;

    if Edit_BKFN2.Text<>'' then
    begin
      UD_PrevBK.Max := 2;
      TmpStr := 'BK 2 ';
      for kk:=0 to BKNum-1 do
      begin
        ImgPV.UD_TPro.Position := kk;
        ImgPV.Load_WORDData(Edit_BKFN2.Text,Sender);
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[1,j,i] := BKData[1,j,i]+ImgPV.PData[j,i];
        Application.ProcessMessages;
        TmpStr := TmpStr+' '+kk.ToString;
        Memo.Lines.Text := TmpStr;
      end;

      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
          BKData[1,j,i] := BKData[1,j,i]/BKNum;
      for m:=2 to (ImgN div BKInt)+1 do
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[m,j,i] := BKData[1,j,i];
      if CB_Med.Checked then
      begin
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            ImgPV.PData[j,i] := BKData[1,j,i];
        ImgPV.Median_Img(ImgPV.PData);
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[1,j,i] := ImgPV.PData[j,i];
      end;

      for m:=2 to (ImgN div BKInt)+1 do
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[m,j,i] := BKData[0,j,i];
    end
    else
    begin
      for m:=1 to (ImgN div BKInt)+1 do
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[m,j,i] := BKData[0,j,i];
    end;
  end
  else
  begin
    TmpStr := '';
    if ((ImgN-BKNum) mod (BKNum+BKInt)) = 0 then
      BKn := (ImgN-BKNum) div (BKNum+BKInt)
    else
      BKn := (ImgN-BKNum) div (BKNum+BKInt)+1;

    UD_PrevBK.Max := Bkn+1;
    for m:=0 to Bkn-1 do
    begin
      TmpStr := TmpStr+' BK '+m.ToString+' : ';
      for kk:=0 to BKNum-1 do
      begin
        ImgPV.UD_TPro.Position := BKInt*m+BKNum*m+kk;
        ImgPV.Load_WORDData(Edit_FN.Text,Sender);
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[m,j,i] := BKData[m,j,i]+ImgPV.IData[j,i];
        TmpStr := TmpStr+' '+ImgPV.UD_TPro.Position.ToString;
        Application.ProcessMessages;
        Memo.Text := TmpStr;
      end;

      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
          BKData[m,j,i] := BKData[m,j,i]/BKNum;
      if CB_Med.Checked then
      begin
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            ImgPV.PData[j,i] := BKData[m,j,i];
        ImgPV.Median_Img(ImgPV.PData);
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[m,j,i] := ImgPV.PData[j,i];
      end;
      TmpStr := TmpStr + #13+#10;
    end;

    TmpStr := TmpStr+' BK '+Bkn.ToString+' : ';
    for kk:=0 to BKNum-1 do
    begin
      ImgPV.UD_TPro.Position := ImgN-kk-1;
      ImgPV.Load_WORDData(Edit_FN.Text,Sender);
      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
          BKData[Bkn,j,i] := BKData[BKn,j,i]+ImgPV.IData[j,i];
      TmpStr := TmpStr+' '+ImgPV.UD_TPro.Position.ToString;
      Application.ProcessMessages;
      Memo.Text := TmpStr;
    end;

    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        BKData[Bkn,j,i] := BKData[BKn,j,i]/BKNum;

    if CB_Med.Checked then
    begin
      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
          ImgPV.PData[j,i] := BKData[Bkn,j,i];
      ImgPV.Median_Img(ImgPV.PData);
      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
          BKData[Bkn,j,i] := ImgPV.PData[j,i];
    end;
    TmpStr := TmpStr + #13+#10;

    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        BKData[BKn+1,j,i] := BKData[BKn,j,i];
  end;




  if CB_BKOnly.Checked then
  begin
    n := UD_PrevBK.Position;
    for m:=0 to BKn+1 do
    begin
      if m<>n then
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[m,j,i] := BKData[n,j,i];
    end;
  end;

  m := UD_PrevBK.Position;
  for j:=0 to ImgPV.PH-1 do
    for i:=0 to ImgPV.PW-1 do
      ImgPV.PData[j,i] := BKData[m,j,i];
  ImgPV.Show;
  ImgPV.Draw_Data(Sender);

end;


procedure TForm_Main.ABS_Prev(Sender: TObject);
var
  i, j, m, SubBK :longint;
  TmpBK : double;
  a,b:double;
begin
  m := UD_PrevNImg.Position;
  ImgPV.UD_TPro.Position := UD_PrevNImg.Position;
  ImgPV.Load_WORDData(Edit_FN.Text,Sender);

  if CB_Med.Checked then
    ImgPV.Median_Img(ImgPV.PData);

  for j:=0 to ImgPV.PH-1 do
    for i:=0 to ImgPV.PW-1 do
      TmpData[j,i] :=ImgPV.PData[j,i];

  SubBK := 0;
  if Edit_BKFN1.Text <>'' then
    a:=frac(m/(BKInt+0.1))
  else
    a:=frac((m-BKNum)/(BKInt+0.1));
  b:=1-a;

  if not(CB_WOBK.Checked) then
  begin
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
      begin
        TmpBK := BKData[SubBK,j,i] *b+BKData[SubBK+1,j,i]*a;
        NData[j,i] := ((TmpData[j,i]-DarkData[j,i])/(TmpBK-DarkData[j,i]));
      end;
  end
  else
    NData := TmpData;

  if CB_Ln2.Checked then
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        if NData[j,i] <=0 then
          NData[j,i] := 1
        else
          NData[j,i] := -Ln(NData[j,i]);

//  for j:=0 to 2 do
//    for i:=0 to ImgPV.PW do
//      NData[j,i] :=0;
//
//  for j:=0 to ImgPV.PH-1 do
//    for i:=0 to 2 do
//      NData[j,i] :=0;
//
//  for j:=0 to ImgPV.PH-1 do
//    for i:=ImgPV.PW-2 to ImgPV.PW do
//      NData[j,i] :=0;
//  for j:=ImgPV.PH-2 to ImgPV.PH do
//    for i:=0 to ImgPV.PW do
//      NData[j,i] :=0;

  ImgPV.PData := NData;
  ImgPV.Show;
  ImgPV.Draw_Data(Sender);
end;


//*****************************************************
//*****************************************************
//*****************************************************


procedure TForm_Main.PH_BK(Sender: TObject);
var
  i, j, k, m, km, TmpInt :longint;
  TmpBKRe,TmpBKIm, TmpBKAbs,a,b : double;
  lStr, TmpStr : string;
begin
  for i:=0 to FSN-1 do
  begin
    MyCos[i] := Cos(i/FSN*2*Pi);
    MySin[i] := Sin(i/FSN*2*Pi);
  end;

  for m:=0 to (ImgN div BKInt) do
  begin
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
      begin
        BKRe[m,j,i] := 0;
        BKIm[m,j,i] := 0;
        BKABS[m,j,i] := 0;
        BKPh[m,j,i] := 0;
        BKAmp[m,j,i] := 0;
      end;

    for km:=1 to BKNum do
    begin
      TmpStr := '';
      for k:=0 to FSN-1 do
      begin
        ImgPV.UD_TPro.Position := Int64((BKInt+BKNum)*FSN*m+k+(km-1)*FSN);
        TmpStr := TmpStr+' '+ImgPV.UD_TPro.Position.ToString;
//        Memo.Lines.Add(ImgPV.UD_TPro.Position.ToString);
        ImgPV.Load_WORDData(Edit_FN.Text,Sender);
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            OrigIData[k,j,i] :=ImgPV.IData[j,i] ;
      end;
      Memo.Lines.Add(TmpStr);

      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
        begin
          TmpBKRe := 0;
          TmpBKIm := 0;
          TmpBKAbs := 0;

          for k:=0 to FSN-1 do
          begin
            TmpBKIm := TmpBKIm + OrigIData[k,j,i]*MySin[k];
            TmpBKRe := TmpBKRe + OrigIData[k,j,i]*MyCos[k];
            TmpBKAbs  := TmpBKAbs  + OrigIData[k,j,i];
          end;
          BKRe[m,j,i] := BKRe[m,j,i]+TmpBKRe;
          BKIm[m,j,i] := BKIm[m,j,i]+TmpBKIm;
          BKABS[m,j,i] := BKABS[m,j,i]+TmpBKAbs;
          //BKS[m,j,i] := BKS[m,j,i]+ArcTan2(TmpBKIm,TmpBKRe);
          //BKAmp[m,j,i] := BKAmp[m,j,i]+Sqrt(Sqr(TmpBKIm)+Sqr(TmpBKRe));
        end;
    end;

    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
      begin
        BKRe[m,j,i] := BKRe[m,j,i]/BKNum;
        BKIm[m,j,i] := BKIm[m,j,i]/BKNum;
        BKABS[m,j,i] := BKABS[m,j,i]/BKNum;
        //BKS[m,j,i] := BKS[m,j,i]/BKN;
        //BKAmp[m,j,i] := BKAmp[m,j,i]/BKN;
        BKPh[m,j,i] := ArcTan2(BKIm[m,j,i],BKRe[m,j,i]);
        BKAmp[m,j,i] := Sqrt(Sqr(BKIm[m,j,i]+Sqr(BKRe[m,j,i])));
      end;
  end;


  if CB_BKOnly.Checked then
  begin
    m:=UD_PrevBK.Position;
    for k:=0 to m-1 do
    begin
      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
        begin
          BKRe[k,j,i] := BKRe[m,j,i];
          BKIm[k,j,i] := BKIm[m,j,i];
          BKABS[k,j,i] := BKABS[m,j,i];
        end;
    end;
    for k:=m+1 to ImgN div BKInt+1 do
    begin
      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
        begin
          BKRe[k,j,i] := BKRe[m,j,i];
          BKIm[k,j,i] := BKIm[m,j,i];
          BKABS[k,j,i] := BKABS[m,j,i];
        end;
    end;
  end
  else
  begin
    m:= ImgN div BKInt+1;
    for k:=m to ImgN div BKInt+1 do
    begin
      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
        begin
          BKRe[k,j,i] := BKRe[m-1,j,i];
          BKIm[k,j,i] := BKIm[m-1,j,i];
          BKABS[k,j,i] := BKABS[m-1,j,i];
        end;
    end;
  end;

  m := UD_PrevBK.Position;
  for j:=0 to ImgPV.PH-1 do
    for i:=0 to ImgPV.PW-1 do
      ImgPV.PData[j,i] := ArcTan2(BKIm[m,j,i],BKRe[m,j,i]);

  ImgPV.Edit_PMax.Text := '3.14';
  ImgPV.Edit_PMin.Text := '-3.14';
  ImgPV.Show;
  ImgPV.Draw_Data(Sender);
end;

procedure TForm_Main.Ph_Prev(Sender: TObject);
var
  i, j, k, m, SubBK, SubBK2 , kk :longint;
  TmpRe,TmpIm,TmpBKAbs,TmpBKRe,TmpBKIm, TmpAbs,Re,Im,Abs : double;
  a,b:double;
  lStr : string;

  S1,S2,Sav,Amp1,Amp2,AmpAv:double;
begin
  for i:=0 to FSN-1 do
  begin
    MyCos[i] := Cos(i/FSN*2*Pi);
    MySin[i] := Sin(i/FSN*2*Pi);
  end;

  m := UD_PrevNImg.Position;
  for k:=0 to FSN-1 do
  begin
    ImgPV.UD_TPro.Position := m*FSN+k;
    ImgPV.Load_WORDData(Edit_FN.Text,Sender);

    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        OrigIData[k,j,i] :=ImgPV.IData[j,i];
  end;

  SubBK := m div (BKInt+1);
  SubBK2 := SubBK+1;
  a := (m-SubBK*BKInt)/(BKInt+1);
  b := 1-a;

  for j:=0 to ImgPV.PH-1 do
    for i:=0 to ImgPV.PW-1 do
    begin
      TmpRe := 0;
      TmpIm := 0;
      TmpAbs := 0;
      for k:=0 to FSN-1 do
      begin
        TmpIm := TmpIm + OrigIData[k,j,i]*MySin[k];
        TmpRe := TmpRe + OrigIData[k,j,i]*MyCos[k];
        TmpAbs := TmpAbs+OrigIData[k,j,i];
      end;

      Im := TmpIm;
      Re := TmpRe;
      Abs := TmpAbs;

      if not(CB_WOBK.Checked) then
      begin
        TmpBKRe :=   BKRe[SubBK,j,i]*b+BKRe[SubBK2,j,i]*a;
        TmpBKIm :=   BKIm[SubBK,j,i]*b+BKIm[SubBK2,j,i]*a;
        TmpBKAbs := BKAbs[SubBK,j,i]*b+BKAbs[SubBK2,j,i]*a;

        if (Sqr(TmpBKRe)+Sqr(TmpBKIm))<>0 then
        begin
          Re := (TmpRe*TmpBKRe+TmpIm*TmpBKIm)/(Sqr(TmpBKRe)+Sqr(TmpBKIm));
          Im := (TmpIm*TmpBKRe-TmpRe*TmpBKIm)/(Sqr(TmpBKRe)+Sqr(TmpBKIm));
        end;
        if TmpBKAbs<>0 then
          Abs := (TmpAbs)/(TmpBKAbs);
      end;

      PhData[j,i] := ArcTan2(Im,Re) ;
      AmpData[j,i] := Sqrt(Sqr(Re)+Sqr(Im)) ;
      AbsData[j,i]:= Abs;
      ORe[j,i] := Re;
      OIm[j,i] := Im;
    end;

  for j:=0 to ImgPV.PH-1 do
    for i:=0 to ImgPV.PW-1 do
      ImgPV.PData[j,i] := PhData[j,i];

  ImgPV.Show;
  ImgPV.Draw_Data(Sender);
end;



//*****************************************************
//*****************************************************
//*****************************************************



procedure TForm_Main.BB_PrevBKClick(Sender: TObject);
var
  i, j, kk,m :longint;
  TmpStr : string;
begin
  Init_Cond(Sender);
  SB.SimpleText := '';

  if CB_Method.ItemIndex = 1 then
    Ph_BK(Sender)
  else
    ABS_BK(Sender);

  SB.SimpleText := 'BK Imgs loaded';
end;

procedure TForm_Main.UD_PrevBKClick(Sender: TObject; Button: TUDBtnType);
var
  i,j,k:longint;
begin
  k := UD_PrevBK.Position;
  if CB_Method.ItemIndex = 1 then
  begin
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        ImgPV.PData[j,i] := ArcTan2(BKIm[k,j,i],BKRe[k,j,i]);
  end
  else
  begin
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        ImgPV.PData[j,i] := BKData[k,j,i];
  end;
  ImgPV.Show;
  ImgPV.Draw_Data(Sender);
end;

procedure TForm_Main.BB_DARKClick(Sender: TObject);
var
  i, j, k, DN,DBK:longint;
begin
  Init_Cond(Sender);
  DN := StrToInt(Edit_DN.Text);
  DBK := StrToInt(Edit_DBK.Text);

  if CB_Damy.Checked then
  begin
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        DarkData[j,i] := DBK;
  end
  else
  begin
    for k:=0 to DN-1 do
    begin
      ImgPV.UD_TPro.Position := k;
      ImgPV.Load_WORDData(Edit_OffFN.Text,Sender);
    end;

    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        DarkData[j,i] := DarkData[j,i]+ImgPV.IData[j,i];

    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        DarkData[j,i] := DarkData[j,i]/DN;
  end;

  for j:=0 to ImgPV.PH-1 do
    for i:=0 to ImgPV.PW-1 do
      ImgPV.PData[j,i] := DarkData[j,i];

  ImgPV.Show;
  ImgPV.Draw_Data(Sender);
end;

procedure TForm_Main.BB_Prev_NImgClick(Sender: TObject);
var
  i, j, m, SubBK :longint;
  TmpBK : double;
  a,b:double;
begin
  Init_Cond(Sender);

  for j:=0 to ImgPV.PH-1 do
    for i:=0 to ImgPV.PW-1 do
      TmpData[j,i] :=0;

  if CB_Method.ItemIndex = 1 then
    Ph_Prev(Sender)
  else
    Abs_Prev(Sender);
end;

procedure TForm_Main.UD_PrevNImgClick(Sender: TObject; Button: TUDBtnType);
begin
  BB_Prev_NImgClick(Sender);
end;


procedure TForm_Main.BB_NormClick(Sender: TObject);
var
  k,kk,i,ii,j,jj,lPW,lPH, lPRo:longint;
  FS :TFileStream;
  TmpDbl ,lRe,lIm,l: double;
  BFN, BDir, lFN : string;
  lDData : array[0..4000] of double;
begin
  Init_Cond(Sender);
  Memo.Lines.Clear;

  Go := true;
  BFN := Edit_FN.Text;

  if not(TDirectory.Exists(ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal')) then
    MkDir(ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal');
  if not(TDirectory.Exists(ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\pro')) then
    MkDir(ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\pro');
  BDir := ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\pro\';
  lFN :=TPath.GetFileNameWithoutExtension(BFN);

  BB_PrevBKClick(Sender);
  BB_DARKClick(Sender);

  kk:=-1;
  lPro := StrToInt(Edit_ImgN.Text);

  for k:=0 to lPro-1 do
  begin
    if (((k mod (BKInt+BKNum))>=BKNum) or (Edit_BKFN1.Text<>'')) then
    begin
      UD_PrevNImg.Position := k;

      BB_Prev_NImgClick(Sender);
      Inc(kk);
      SB.SimpleText := 'Projection : '+kk.ToString;
      Memo.Lines.Add('Image No. '+k.ToString+ ' Projection No. : '+kk.ToString);
      Application.ProcessMessages;
      if not(Go) then
        exit;

      if CB_Bin.Checked then
      begin
        lPW := ImgPV.PW div 2;
        lPH := ImgPV.PH div 2;

        if CB_Method.ItemIndex = 0 then
        begin
          for j:=0 to lPH-1 do
            for i:=0 to lPW-1 do
            begin
              TmpDbl :=0;
              for jj:=0 to 1 do
                for ii:=0 to 1 do
                  TmpDbl := TmpDbl+NData[j*2+jj,i*2+ii];
              TmpData[j,i] := TmpDbl/4;
            end;
          NData := TmpData;
        end
        else
        begin
          for j:=0 to lPH-1 do
            for i:=0 to lPW-1 do
            begin
              TmpDbl :=0;
              for jj:=0 to 1 do
                for ii:=0 to 1 do
                  TmpDbl := TmpDbl+ORe[j*2+jj,i*2+ii];
              TmpData[j,i] := TmpDbl/4;
            end;
          Ore := TmpData;

          for j:=0 to lPH-1 do
            for i:=0 to lPW-1 do
            begin
              TmpDbl :=0;
              for jj:=0 to 1 do
                for ii:=0 to 1 do
                  TmpDbl := TmpDbl+OIm[j*2+jj,i*2+ii];
              TmpData[j,i] := TmpDbl/4;
            end;
          OIm := TmpData;

          for j:=0 to lPH-1 do
            for i:=0 to lPW-1 do
            begin
              PhData[j,i] := ArcTan2(OIm[j,i],ORe[j,i]) ;
              AmpData[j,i] := Sqrt(Sqr(ORe[j,i])+Sqr(OIm[j,i])) ;
            end;

          for j:=0 to lPH-1 do
            for i:=0 to lPW-1 do
            begin
              TmpDbl :=0;
              for jj:=0 to 1 do
                for ii:=0 to 1 do
                  TmpDbl := TmpDbl+AbsData[j*2+jj,i*2+ii];
              TmpData[j,i] := TmpDbl/4;
            end;
          AbsData := TmpData;
        end;
      end
      else
      begin
        lPW := ImgPV.PW ;
        lPH := ImgPV.PH ;
      end;

      if CB_Method.ItemIndex = 0 then
      begin
        if CB_SwapXY.Checked then
        begin
          FS := TFileStream.Create(BDir+lFN+'_'+IntToStr(kk),fmCreate);
          for j:=0 to lPW-1 do
          begin
            for i:=0 to lPH-1 do
              lDData[i] := NData[i,j] ;
            FS.WriteBuffer(lDData,lPH*8);
          end;
          FS.Free;
        end
        else
        begin
          FS := TFileStream.Create(BDir+lFN+'_'+IntToStr(kk),fmCreate);
          for j:=0 to lPH-1 do
          begin
            for i:=0 to lPW-1 do
              lDData[i] := NData[j,i] ;
            FS.WriteBuffer(lDData,lPW*8);
          end;
          FS.Free;
        end;
        if not(go) then
          exit;
      end
      else
      begin
        if CB_SwapXY.Checked then
        begin
          FS := TFileStream.Create(BDir+lFN+'_'+IntToStr(kk)+'.ph',fmCreate);
          for j:=0 to lPW-1 do
          begin
            for i:=0 to lPH-1 do
              lDData[i] := PhData[i,j] ;
            FS.WriteBuffer(lDData,lPH*8);
          end;
          FS.Free;
          FS := TFileStream.Create(BDir+lFN+'_'+IntToStr(kk)+'.amp',fmCreate);
          for j:=0 to lPW-1 do
          begin
            for i:=0 to lPH-1 do
              lDData[i] := AmpData[i,j] ;
            FS.WriteBuffer(lDData,lPH*8);
          end;
          FS.Free;
          //if CB_ABS.Checked then
          begin
            FS := TFileStream.Create(BDir+lFN+'_'+IntToStr(kk)+'.abs',fmCreate);
            for j:=0 to lPW-1 do
            begin
              for i:=0 to lPH-1 do
                lDData[i] := AbsData[i,j] ;
              FS.WriteBuffer(lDData,lPH*8);
            end;
            FS.Free;
          end;
        end
        else
        begin
          FS := TFileStream.Create(BDir+lFN+'_'+IntToStr(kk)+'.ph',fmCreate);
          for j:=0 to lPH-1 do
          begin
            for i:=0 to lPW-1 do
              lDData[i] := PhData[j,i] ;
            FS.WriteBuffer(lDData,lPW*8);
          end;
          FS.Free;
          FS := TFileStream.Create(BDir+lFN+'_'+IntToStr(kk)+'.amp',fmCreate);
          for j:=0 to lPH-1 do
          begin
            for i:=0 to lPW-1 do
              lDData[i] := AmpData[j,i] ;
            FS.WriteBuffer(lDData,lPW*8);
          end;
          FS.Free;
          //if CB_ABS.Checked then
          begin
            FS := TFileStream.Create(BDir+lFN+'_'+IntToStr(kk)+'.abs',fmCreate);
            for j:=0 to lPH-1 do
            begin
              for i:=0 to lPW-1 do
                lDData[i] := AbsData[j,i] ;
              FS.WriteBuffer(lDData,lPW*8);
            end;
            FS.Free;
          end;
        end;

      end;
    end;
  end;
end;

procedure TForm_Main.BB_MakeSinoClick(Sender: TObject);
var
  i,j,k,kk,lPW, AvR, lPro:longint;
  FS : TFileStream;
  lDData : array[0..4000] of double;
  BFN, BDir1, BDir2, lFN : string;
begin
  Init_Cond(Sender);
  AvR := StrToInt(Edit_AvR.Text);

  Go := true;
  if CB_SwapXY.Checked then
    lPW := StrToInt(LEdit_PH.Text)
  else
    lPW := StrToInt(LEdit_PW.Text);
  if CB_Bin.Checked then
    lPW := lPW div 2;

  BFN := Edit_FN.Text;
  if not(TDirectory.Exists(ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\sino')) then
    MkDir(ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\sino');
  BDir1 := ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\pro\';
  BDir2 := ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\sino\';
  lFN :=TPath.GetFileNameWithoutExtension(BFN);

  if Edit_BKFN1.Text<>'' then
    lPRo := ImgN
  else
    lPRo := ImgN-((ImgN div BKInt)+1)*BKNum;

  for k:=StrToInt(Edit_SinoST.Text) to StrToInt(Edit_SinoEnd.Text) do
  begin
    if CB_Method.ItemIndex = 0 then
    begin
      for j:=0 to lPro-1 do
        for i:=0 to lPW-1 do
          SSData[j,i] := 0;

      for kk:=-AvR+k to k+AvR do
      begin
        for j:=0 to lPro-1 do
        begin
          FS := TFileStream.Create(BDir1+lFN+'_'+IntToStr(j),fmOpenRead);
          FS.Position := Int64(lPW*kk*8);
          FS.ReadBuffer(lDData,lPW*8);
          for i:=0 to lPW-1 do
            NData[j,i] := lDData[i];
          FS.Free;
        end;
        for j:=0 to lPro-1 do
          for i:=0 to lPW-1 do
            SSData[j,i] := SSData[j,i]+((AvR+1)-Abs(kk-k))*NData[j,i];
      end;

      if AvR<>0 then
        for j:=0 to lPro-1 do
          for i:=0 to lPW-1 do
            SSData[j,i] := SSData[j,i]/4;

      ImgPV.PW := lPW;
      ImgPV.PH := lPro;
      ImgPV.PData := SSData;
      ImgPV.Show;
      ImgPV.Draw_Data(Sender);

      FS := TFileStream.Create(BDir2+lFN+'_s_'+IntToStr(k),fmCreate);
      for j:=0 to lPro-1 do
      begin
        for i:=0 to lPW-1 do
          lDData[i] := SSData[j,i] ;
        FS.WriteBuffer(lDData,lPW*8);
      end;
      FS.Free;

      Application.ProcessMessages;
      SB.SimpleText := 'Slice : '+k.ToString;
      Memo.Lines.Add('Sino No. '+k.ToString);
      if not(go) then
        exit;
    end
    else
    begin
      for j:=0 to lPro-1 do
      begin
        FS := TFileStream.Create(BDir1+lFN+'_'+IntToStr(j)+'.ph',fmOpenRead);
        FS.Position := Int64(lPW*k*8);
        FS.ReadBuffer(lDData,lPW*8);
        for i:=0 to lPW-1 do
          PhData[j,i] := lDData[i];
        FS.Free;
      end;

      ImgPV.PW := lPW;
      ImgPV.PH := lPro;
      ImgPV.PData := PhData;
      ImgPV.Show;
      ImgPV.Draw_Data(Sender);

      FS := TFileStream.Create(BDir2+lFN+'_s_'+IntToStr(k)+'.ph',fmCreate);
      for j:=0 to lPro-1 do
      begin
        for i:=0 to lPW-1 do
          lDData[i] := PhData[j,i] ;
        FS.WriteBuffer(lDData,lPW*8);
      end;
      FS.Free;

      for j:=0 to lPro-1 do
      begin
        FS := TFileStream.Create(BDir1+lFN+'_'+IntToStr(j)+'.amp',fmOpenRead);
        FS.Position := Int64(lPW*k*8);
        FS.ReadBuffer(lDData,lPW*8);
        for i:=0 to lPW-1 do
          AmpData[j,i] := lDData[i];
        FS.Free;
      end;

      FS := TFileStream.Create(BDir2+lFN+'_s_'+IntToStr(k)+'.amp',fmCreate);
      for j:=0 to lPro-1 do
      begin
        for i:=0 to lPW-1 do
          lDData[i] := AmpData[j,i] ;
        FS.WriteBuffer(lDData,lPW*8);
      end;
      FS.Free;

      for j:=0 to lPro-1 do
      begin
        FS := TFileStream.Create(BDir1+lFN+'_'+IntToStr(j)+'.abs',fmOpenRead);
        FS.Position := Int64(lPW*k*8);
        FS.ReadBuffer(lDData,lPW*8);
        for i:=0 to lPW-1 do
          AbsData[j,i] := lDData[i];
        FS.Free;
      end;
      FS := TFileStream.Create(BDir2+lFN+'_s_'+IntToStr(k)+'.abs',fmCreate);
      for j:=0 to lPro-1 do
      begin
        for i:=0 to lPW-1 do
          lDData[i] := AbsData[j,i] ;
        FS.WriteBuffer(lDData,lPW*8);
      end;
      FS.Free;

      Application.ProcessMessages;
      SB.SimpleText := 'Slice : '+IntToStr(k);
      if not(go) then
        exit;
    end;
  end;

  WriteProc2(Sender);
  WriteComped(Sender);
end;

procedure TForm_Main.BB_SaveImgClick(Sender: TObject);
var
  li,lj,lPW,lPH:longint;
  FS : TFileStream;
  lDData : array[0..4000] of double;
begin
  if SaveDialog1.Execute then
  begin
    lPW := StrToInt(LEdit_PW.Text);
    lPH := StrToInt(LEdit_PH.Text);

    FS := TFileStream.Create(SaveDialog1.FileName+'.ph',fmCreate);
    for lj:=0 to lPH-1 do
    begin
      for li:=0 to lPW-1 do
        lDData[li] := PhData[lj,li] ;
      FS.WriteBuffer(lDData,lPW*8);
    end;
    FS.Free;

    FS := TFileStream.Create(SaveDialog1.FileName+'.amp',fmCreate);
    for lj:=0 to lPH-1 do
    begin
      for li:=0 to lPW-1 do
        lDData[li] := AmpData[lj,li] ;
      FS.WriteBuffer(lDData,lPW*8);
    end;
    FS.Free;

    FS := TFileStream.Create(SaveDialog1.FileName+'.abs',fmCreate);
    for lj:=0 to lPH-1 do
    begin
      for li:=0 to lPW-1 do
        lDData[li] := AbsData[lj,li] ;
      FS.WriteBuffer(lDData,lPW*8);
    end;
    FS.Free;
  end;
end;

procedure TForm_Main.BB_STop2Click(Sender: TObject);
begin
  Go :=false;
end;

procedure TForm_Main.BB_STOPClick(Sender: TObject);
begin
  Go :=false;
end;

//*****************************************************
//*****************************************************
//*****************************************************

procedure TForm_Main.CB_AllCKClick(Sender: TObject);
var
  li:longint;
begin
  for li:=0 to CLB_File.Items.Count-1 do
    CLB_File.Checked[li] := CB_AllCK.Checked;
end;

procedure TForm_Main.CLB_FileClick(Sender: TObject);
begin
  TagFN :=  CLB_File.Items[CLB_File.ItemIndex];
  OpenTag(Sender);
  if Form_SAKAS.Showing then
    SB_ViewInfoClick(Sender);
end;

procedure TForm_Main.BB_Copy_CondClick(Sender: TObject);
begin
  WriteProc2(Sender);
end;

procedure TForm_Main.BB_ProcClick(Sender: TObject);
var
  li:longint;
begin
  for li:=0 to CLB_File.Items.Count-1 do
  begin
    CLB_File.ItemIndex := li;
    CLB_FileClick(Sender);
    if CLB_File.Checked[li] then
    begin
      TagFN :=  CLB_File.Items[CLB_File.ItemIndex];
      OpenTag(Sender);
      BB_NormClick(Sender);
      BB_MakeSinoClick(Sender);
      CLB_File.Checked[li] := false;
    end;
  end;
end;

procedure TForm_Main.BB_STOP_ProcClick(Sender: TObject);
var
  li:longint;
begin
  for li:=0 to CLB_File.Items.Count-1 do
    CLB_File.Checked[li] := false;
  Go := false;
end;


procedure TForm_Main.SB_BK1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Edit_BKFN1.Text := OpenDialog1.FileName;
end;

procedure TForm_Main.SB_BK2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Edit_BKFN2.Text := OpenDialog1.FileName;
end;

procedure TForm_Main.SB_DirClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Edit_Dir.Text := ExtractFilePath(OpenDialog1.FileName);
    SB_TagList_ReloadClick(Sender);
  end;
end;

procedure TForm_Main.SB_FOOpenClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Edit_OffFN.Text := OpenDialog1.FileName;
end;

procedure TForm_Main.SB_FOpenClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Edit_FN.Text := OpenDialog1.FileName;
end;

procedure TForm_Main.SB_HelpClick(Sender: TObject);
begin
  AboutBox.Show;
end;

procedure TForm_Main.SB_TagList_ReloadClick(Sender: TObject);
var
  Path: String;
  FileList: TStringDynArray;
  FileName: String;
begin
  if Edit_Dir.Text<>'' then
  begin
    CLB_File.Items.Clear;
    Path := ExtractFilePath(Edit_Dir.Text);

    FileList := TDirectory.GetFiles(Path, CB_Ext.Items[CB_Ext.ItemIndex] , TSearchOption.soTopDirectoryOnly);
    for FileName in FileList do
    begin
      CLB_File.Items.Add(FileName);
    end;
  end;
end;

procedure TForm_Main.SB_ViewInfoClick(Sender: TObject);
begin
  if CLB_File.ItemIndex>=0 then
  begin
    Form_SAKAS.Tag_FN := CLB_File.Items[CLB_File.ItemIndex];
    if Form_SAKAS.Tag_FN<>'' then
      Form_SAKAS.Load_Karte(Form_SAKAS.Tag_FN,Sender);
  end;
  Form_SAKAS.Show;
end;



end.
