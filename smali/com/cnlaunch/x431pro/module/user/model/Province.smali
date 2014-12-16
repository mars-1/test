.class public Lcom/cnlaunch/x431pro/module/user/model/Province;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "Province.java"


# static fields
.field private static final serialVersionUID:J = 0x482c19b58468ef78L


# instance fields
.field private display:Ljava/lang/String;

.field private pcode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/Province;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getPcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/Province;->pcode:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/Province;->display:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setPcode(Ljava/lang/String;)V
    .locals 0
    .parameter "pcode"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/Province;->pcode:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Province [pcode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/Province;->pcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/Province;->display:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
