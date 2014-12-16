.class public Lcom/cnlaunch/x431pro/module/base/CommonResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "CommonResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x7250e327d8894ad8L


# instance fields
.field private data:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->data:Ljava/lang/Object;

    .line 31
    return-void
.end method
