.class public Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
.super Ljava/lang/Object;
.source "ProductDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected pdtState:Ljava/lang/Integer;

.field protected productConfigName:Ljava/lang/String;

.field protected serialNo:Ljava/lang/String;

.field protected venderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPdtState()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->pdtState:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProductConfigName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->productConfigName:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method public getVenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->venderName:Ljava/lang/String;

    return-object v0
.end method

.method public setPdtState(Ljava/lang/Integer;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->pdtState:Ljava/lang/Integer;

    .line 48
    return-void
.end method

.method public setProductConfigName(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->productConfigName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->serialNo:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setVenderName(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->venderName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ProductDTO [pdtState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->pdtState:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", productConfigName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->productConfigName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serialNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->serialNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", venderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->venderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
