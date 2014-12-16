.class public Lcom/cnlaunch/x431pro/module/pay/model/PayCommonResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "PayCommonResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x7250e327d8894ad8L


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
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/model/PayCommonResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/model/PayCommonResponse;->data:Ljava/lang/Object;

    .line 32
    return-void
.end method
