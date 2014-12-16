.class public Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "RegistResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x79cf11fb37446468L


# instance fields
.field private data:Lcom/cnlaunch/x431pro/module/user/model/RegistData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/cnlaunch/x431pro/module/user/model/RegistData;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;->data:Lcom/cnlaunch/x431pro/module/user/model/RegistData;

    return-object v0
.end method

.method public setData(Lcom/cnlaunch/x431pro/module/user/model/RegistData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;->data:Lcom/cnlaunch/x431pro/module/user/model/RegistData;

    .line 32
    return-void
.end method
