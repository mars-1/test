.class public Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "ExpertEleSkill.java"


# static fields
.field private static final serialVersionUID:J = -0x5b80998c36463f02L


# instance fields
.field private auto_area:Ljava/lang/String;

.field private auto_code:Ljava/lang/String;

.field private auto_name:Ljava/lang/String;

.field private ele_skill:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 49
    const-wide v0, -0x5b80998c36463f02L

    return-wide v0
.end method


# virtual methods
.method public getAuto_area()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;->auto_area:Ljava/lang/String;

    return-object v0
.end method

.method public getAuto_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;->auto_code:Ljava/lang/String;

    return-object v0
.end method

.method public getAuto_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;->auto_name:Ljava/lang/String;

    return-object v0
.end method

.method public getEle_skill()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;->ele_skill:Ljava/lang/String;

    return-object v0
.end method

.method public setAuto_area(Ljava/lang/String;)V
    .locals 0
    .parameter "auto_area"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;->auto_area:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setAuto_code(Ljava/lang/String;)V
    .locals 0
    .parameter "auto_code"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;->auto_code:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setAuto_name(Ljava/lang/String;)V
    .locals 0
    .parameter "auto_name"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;->auto_name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setEle_skill(Ljava/lang/String;)V
    .locals 0
    .parameter "ele_skill"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;->ele_skill:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ExpertEleSkill [auto_code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;->auto_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", auto_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;->auto_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", auto_area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;->auto_area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ele_skill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;->ele_skill:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
