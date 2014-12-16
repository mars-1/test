.class public Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "DownLoadReportResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x1b1e2b8f8845fL


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;->data:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;->data:Ljava/util/List;

    .line 27
    return-void
.end method
