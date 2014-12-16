.class public Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "UserBaseInfoResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x954b548164570c3L


# instance fields
.field private data:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;->data:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    return-object v0
.end method

.method public setData(Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;->data:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    .line 29
    return-void
.end method
