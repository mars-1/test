.class public Lcom/cnlaunch/x431pro/module/user/model/PriconfResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "PriconfResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x1ab1d56b2a91b1ebL


# instance fields
.field private data:Lcom/cnlaunch/x431pro/module/user/model/PriconfData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/cnlaunch/x431pro/module/user/model/PriconfData;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/PriconfResponse;->data:Lcom/cnlaunch/x431pro/module/user/model/PriconfData;

    return-object v0
.end method

.method public setData(Lcom/cnlaunch/x431pro/module/user/model/PriconfData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/PriconfResponse;->data:Lcom/cnlaunch/x431pro/module/user/model/PriconfData;

    .line 32
    return-void
.end method
