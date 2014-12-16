.class public Lcom/cnlaunch/x431pro/module/user/model/Country;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "Country.java"


# static fields
.field private static final serialVersionUID:J = 0x716f79c0373655a0L


# instance fields
.field private display:Ljava/lang/String;

.field private is_sms:I

.field private ncode:Ljava/lang/String;

.field private pre_code:I


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
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/Country;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_sms()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/cnlaunch/x431pro/module/user/model/Country;->is_sms:I

    return v0
.end method

.method public getNcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/Country;->ncode:Ljava/lang/String;

    return-object v0
.end method

.method public getPre_code()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/cnlaunch/x431pro/module/user/model/Country;->pre_code:I

    return v0
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/Country;->display:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setIs_sms(I)V
    .locals 0
    .parameter "is_sms"

    .prologue
    .line 50
    iput p1, p0, Lcom/cnlaunch/x431pro/module/user/model/Country;->is_sms:I

    .line 51
    return-void
.end method

.method public setNcode(Ljava/lang/String;)V
    .locals 0
    .parameter "ncode"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/Country;->ncode:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPre_code(I)V
    .locals 0
    .parameter "pre_code"

    .prologue
    .line 58
    iput p1, p0, Lcom/cnlaunch/x431pro/module/user/model/Country;->pre_code:I

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Country [ncode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/Country;->ncode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/Country;->display:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is_sms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    iget v1, p0, Lcom/cnlaunch/x431pro/module/user/model/Country;->is_sms:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pre_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/x431pro/module/user/model/Country;->pre_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
