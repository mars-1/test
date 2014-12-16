.class public Lcom/cnlaunch/x431pro/module/user/model/ConfResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "ConfResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x219bbf7c0e4e58e4L


# instance fields
.field private data:Lcom/cnlaunch/x431pro/module/user/model/ConfData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/cnlaunch/x431pro/module/user/model/ConfData;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfResponse;->data:Lcom/cnlaunch/x431pro/module/user/model/ConfData;

    return-object v0
.end method

.method public setData(Lcom/cnlaunch/x431pro/module/user/model/ConfData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfResponse;->data:Lcom/cnlaunch/x431pro/module/user/model/ConfData;

    .line 32
    return-void
.end method
