.class public Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "UpLoadReportResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x6437c27fb474c071L


# instance fields
.field private data:Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;->data:Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;

    return-object v0
.end method

.method public setData(Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;->data:Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;

    .line 32
    return-void
.end method
