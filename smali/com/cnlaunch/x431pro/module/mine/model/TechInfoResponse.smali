.class public Lcom/cnlaunch/x431pro/module/mine/model/TechInfoResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "TechInfoResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x1ef5b1a615273b35L


# instance fields
.field private data:Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/TechInfoResponse;->data:Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;

    return-object v0
.end method

.method public setData(Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/TechInfoResponse;->data:Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;

    .line 18
    return-void
.end method
