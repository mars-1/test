.class public Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "AlipayRSATradeDTO.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private sign:Ljava/lang/String;

.field private signData:Ljava/lang/String;

.field private signType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getSignData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;->signData:Ljava/lang/String;

    return-object v0
.end method

.method public getSignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;->signType:Ljava/lang/String;

    return-object v0
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;->sign:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setSignData(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;->signData:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSignType(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;->signType:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayRSATradeDTO [sign="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", signData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;->signData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string/jumbo v1, ", signType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;->signType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
