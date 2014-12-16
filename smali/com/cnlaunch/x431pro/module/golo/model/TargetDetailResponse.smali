.class public Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "TargetDetailResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x2887e83b8513cd74L


# instance fields
.field private data:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;->data:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    return-object v0
.end method

.method public setData(Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;->data:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;

    .line 26
    return-void
.end method
