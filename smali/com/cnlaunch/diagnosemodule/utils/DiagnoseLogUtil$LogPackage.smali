.class public Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;
.super Ljava/lang/Object;
.source "DiagnoseLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogPackage"
.end annotation


# instance fields
.field private mContent:[B

.field private mPackageType:B

.field private mRecordTime:J


# direct methods
.method public constructor <init>(B[BJ)V
    .locals 0
    .parameter "packageType"
    .parameter "content"
    .parameter "recordTime"

    .prologue
    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput-byte p1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;->mPackageType:B

    .line 781
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;->mContent:[B

    .line 782
    iput-wide p3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;->mRecordTime:J

    .line 783
    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;->mContent:[B

    return-object v0
.end method

.method public getPackageType()B
    .locals 1

    .prologue
    .line 786
    iget-byte v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;->mPackageType:B

    return v0
.end method

.method public getRecordTime()J
    .locals 2

    .prologue
    .line 794
    iget-wide v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;->mRecordTime:J

    return-wide v0
.end method
