.class public Lcom/cnlaunch/x431pro/module/pay/model/PaypalResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "PaypalResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x5643903ea6ba386eL


# instance fields
.field private data:Ljava/lang/Object;

.field private message:Ljava/lang/String;


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
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/model/PaypalResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/model/PaypalResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/model/PaypalResponse;->data:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/model/PaypalResponse;->message:Ljava/lang/String;

    .line 56
    return-void
.end method
