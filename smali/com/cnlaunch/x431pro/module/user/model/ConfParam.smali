.class public Lcom/cnlaunch/x431pro/module/user/model/ConfParam;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "ConfParam.java"


# static fields
.field private static final serialVersionUID:J = 0x70cc23eb2a50fcb3L


# instance fields
.field private allow_vmt_find:Ljava/lang/String;

.field private find_by_tel:Ljava/lang/String;

.field private fontsize:Ljava/lang/String;

.field private is_shock:Ljava/lang/String;

.field private is_verify:Ljava/lang/String;

.field private open_space:Ljava/lang/String;

.field private recommend:Ljava/lang/String;

.field private sound:Ljava/lang/String;

.field private visible:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllow_vmt_find()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->allow_vmt_find:Ljava/lang/String;

    return-object v0
.end method

.method public getFind_by_tel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->find_by_tel:Ljava/lang/String;

    return-object v0
.end method

.method public getFontsize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->fontsize:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_shock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->is_shock:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_verify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->is_verify:Ljava/lang/String;

    return-object v0
.end method

.method public getOpen_space()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->open_space:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommend()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->recommend:Ljava/lang/String;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->sound:Ljava/lang/String;

    return-object v0
.end method

.method public getVisible()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->visible:Ljava/lang/String;

    return-object v0
.end method

.method public setAllow_vmt_find(Ljava/lang/String;)V
    .locals 0
    .parameter "allow_vmt_find"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->allow_vmt_find:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setFind_by_tel(Ljava/lang/String;)V
    .locals 0
    .parameter "find_by_tel"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->find_by_tel:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setFontsize(Ljava/lang/String;)V
    .locals 0
    .parameter "fontsize"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->fontsize:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setIs_shock(Ljava/lang/String;)V
    .locals 0
    .parameter "is_shock"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->is_shock:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setIs_verify(Ljava/lang/String;)V
    .locals 0
    .parameter "is_verify"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->is_verify:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setOpen_space(Ljava/lang/String;)V
    .locals 0
    .parameter "open_space"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->open_space:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setRecommend(Ljava/lang/String;)V
    .locals 0
    .parameter "recommend"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->recommend:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSound(Ljava/lang/String;)V
    .locals 0
    .parameter "sound"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->sound:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setVisible(Ljava/lang/String;)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->visible:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ConfInfo [is_verify="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->is_verify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", find_by_tel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->find_by_tel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recommend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->recommend:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", open_space="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->open_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->visible:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is_shock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->is_shock:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->sound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fontsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->fontsize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string/jumbo v1, ", allow_vmt_find="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->allow_vmt_find:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
