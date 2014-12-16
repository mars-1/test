.class public Lcom/cnlaunch/x431pro/module/user/model/ConfData;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "ConfData.java"


# static fields
.field private static final serialVersionUID:J = -0x14b3fcdf52ed5b98L


# instance fields
.field private background:Ljava/lang/String;

.field private fontsize:Ljava/lang/String;

.field private gsound:Ljava/lang/String;

.field private is_accept:Ljava/lang/String;

.field private is_shock:Ljava/lang/String;

.field private sound:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getFontsize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->fontsize:Ljava/lang/String;

    return-object v0
.end method

.method public getGsound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->gsound:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_accept()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->is_accept:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_shock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->is_shock:Ljava/lang/String;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->sound:Ljava/lang/String;

    return-object v0
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->background:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setFontsize(Ljava/lang/String;)V
    .locals 0
    .parameter "fontsize"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->fontsize:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setGsound(Ljava/lang/String;)V
    .locals 0
    .parameter "gsound"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->gsound:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setIs_accept(Ljava/lang/String;)V
    .locals 0
    .parameter "is_accept"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->is_accept:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setIs_shock(Ljava/lang/String;)V
    .locals 0
    .parameter "is_shock"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->is_shock:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setSound(Ljava/lang/String;)V
    .locals 0
    .parameter "sound"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->sound:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ConfData [fontsize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->fontsize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->background:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string/jumbo v1, ", is_shock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->is_shock:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->sound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", gsound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->gsound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is_accept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/model/ConfData;->is_accept:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
