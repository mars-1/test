.class public Lcom/cnlaunch/x431pro/module/pay/model/GooglePayResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "GooglePayResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x1fd6915490328534L


# instance fields
.field private data:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/model/GooglePayResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/model/GooglePayResponse;->data:Ljava/lang/Object;

    .line 39
    return-void
.end method
