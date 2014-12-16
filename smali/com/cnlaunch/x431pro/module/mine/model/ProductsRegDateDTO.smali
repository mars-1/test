.class public Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "ProductsRegDateDTO.java"


# static fields
.field private static final serialVersionUID:J = 0x36561bbd5f5d9ec1L


# instance fields
.field private regDate:Ljava/lang/String;

.field private serialNo:Ljava/lang/String;

.field private snState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->regDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method public getSnState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->snState:Ljava/lang/String;

    return-object v0
.end method

.method public setRegDate(Ljava/lang/String;)V
    .locals 0
    .parameter "regDate"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->regDate:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0
    .parameter "serialNo"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->serialNo:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSnState(Ljava/lang/String;)V
    .locals 0
    .parameter "snState"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->snState:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ProductsRegDateDTO [serialNo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->serialNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", snState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->snState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", regDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->regDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
