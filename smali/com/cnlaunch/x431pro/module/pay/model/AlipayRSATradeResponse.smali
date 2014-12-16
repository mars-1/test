.class public Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "AlipayRSATradeResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x6e08716c7c01c825L


# instance fields
.field protected alipayRSATradeDTO:Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlipayRSATradeDTO()Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;->alipayRSATradeDTO:Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;

    return-object v0
.end method

.method public setAlipayRSATradeDTO(Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;)V
    .locals 0
    .parameter "alipayRSATradeDTO"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;->alipayRSATradeDTO:Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;

    .line 23
    return-void
.end method
