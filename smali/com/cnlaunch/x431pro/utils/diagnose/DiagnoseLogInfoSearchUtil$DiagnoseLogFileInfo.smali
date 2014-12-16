.class public Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
.super Ljava/lang/Object;
.source "DiagnoseLogInfoSearchUtil.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiagnoseLogFileInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1ee61863af448840L


# instance fields
.field private mCreateDate:J

.field private mDeviceSN:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mFullFilePath:Ljava/lang/String;

.field private mVehicleSoftname:Ljava/lang/String;

.field private zipFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateDate()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->mCreateDate:J

    return-wide v0
.end method

.method public getDeviceSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->mDeviceSN:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getFullFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->mFullFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleSoftname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->mVehicleSoftname:Ljava/lang/String;

    return-object v0
.end method

.method public getZipFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->zipFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateDate(J)V
    .locals 0
    .parameter "createDate"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->mCreateDate:J

    .line 70
    return-void
.end method

.method public setDeviceSN(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceSN"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->mDeviceSN:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->mFilename:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setFullFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "fullFilePath"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->mFullFilePath:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setVehicleSoftname(Ljava/lang/String;)V
    .locals 0
    .parameter "vehicleSoftname"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->mVehicleSoftname:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setZipFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "zipFilePath"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->zipFilePath:Ljava/lang/String;

    .line 124
    return-void
.end method
