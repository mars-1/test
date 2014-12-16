.class public Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;
.super Ljava/lang/Object;
.source "DiagnoseLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogRecordHead"
.end annotation


# instance fields
.field mAdditionInformation:Ljava/lang/String;

.field mCreateDate:J

.field mDeviceSN:Ljava/lang/String;

.field mDeviceVersion:Ljava/lang/String;

.field mFileFlag:[B

.field mFileVersion:[B

.field mLength:I

.field mSoftVersion:Ljava/lang/String;

.field mVehicleSoftLanguage:Ljava/lang/String;

.field mVehicleSoftVersion:Ljava/lang/String;

.field mVehicleSoftname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 823
    const-string/jumbo v0, "V01.01"

    invoke-direct {p0, v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;-><init>(Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "fileVersion"

    .prologue
    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mFileFlag:[B

    .line 833
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mFileVersion:[B

    .line 834
    invoke-virtual {p0, p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setFileVersion(Ljava/lang/String;)V

    .line 835
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mLength:I

    .line 836
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mVehicleSoftname:Ljava/lang/String;

    .line 837
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mVehicleSoftVersion:Ljava/lang/String;

    .line 838
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mVehicleSoftLanguage:Ljava/lang/String;

    .line 839
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mDeviceSN:Ljava/lang/String;

    .line 840
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mDeviceVersion:Ljava/lang/String;

    .line 841
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mSoftVersion:Ljava/lang/String;

    .line 842
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mAdditionInformation:Ljava/lang/String;

    .line 843
    return-void
.end method


# virtual methods
.method public getAdditionInformation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mAdditionInformation:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()J
    .locals 2

    .prologue
    .line 896
    iget-wide v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mCreateDate:J

    return-wide v0
.end method

.method public getDeviceSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mDeviceSN:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mDeviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFileVersion()[B
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mFileVersion:[B

    return-object v0
.end method

.method public getSoftVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mSoftVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleSoftLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mVehicleSoftLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleSoftVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mVehicleSoftVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleSoftname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mVehicleSoftname:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionInformation(Ljava/lang/String;)V
    .locals 0
    .parameter "additionInformation"

    .prologue
    .line 888
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mAdditionInformation:Ljava/lang/String;

    .line 889
    return-void
.end method

.method public setCreateDate(Ljava/util/Date;)V
    .locals 2
    .parameter "createDate"

    .prologue
    .line 860
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mCreateDate:J

    .line 861
    return-void
.end method

.method public setDeviceSN(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceSN"

    .prologue
    .line 876
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mDeviceSN:Ljava/lang/String;

    .line 877
    return-void
.end method

.method public setDeviceVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceVersion"

    .prologue
    .line 880
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mDeviceVersion:Ljava/lang/String;

    .line 881
    return-void
.end method

.method public setFileVersion(Ljava/lang/String;)V
    .locals 5
    .parameter "fileVersion"

    .prologue
    const/4 v4, 0x1

    .line 851
    const/4 v0, 0x0

    .line 852
    .local v0, versionMajor:B
    const/4 v1, 0x0

    .line 853
    .local v1, versionMinor:B
    const/4 v2, 0x3

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    .line 854
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    .line 855
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mFileVersion:[B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    .line 856
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mFileVersion:[B

    aput-byte v1, v2, v4

    .line 857
    return-void
.end method

.method public setSoftVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "softVersion"

    .prologue
    .line 884
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mSoftVersion:Ljava/lang/String;

    .line 885
    return-void
.end method

.method public setVehicleSoftLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "vehicleSoftLanguage"

    .prologue
    .line 872
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mVehicleSoftLanguage:Ljava/lang/String;

    .line 873
    return-void
.end method

.method public setVehicleSoftVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "vehicleSoftVersion"

    .prologue
    .line 868
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mVehicleSoftVersion:Ljava/lang/String;

    .line 869
    return-void
.end method

.method public setVehicleSoftname(Ljava/lang/String;)V
    .locals 0
    .parameter "vehicleSoftname"

    .prologue
    .line 864
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->mVehicleSoftname:Ljava/lang/String;

    .line 865
    return-void
.end method
