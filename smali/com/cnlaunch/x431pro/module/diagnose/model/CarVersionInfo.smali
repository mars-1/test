.class public Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "CarVersionInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x4f221f117b2ef020L


# instance fields
.field private iniText:Ljava/lang/String;

.field private iniTitle:Ljava/lang/String;

.field private lan:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->iniText:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->version:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->lan:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->iniTitle:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->language:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getIniText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->iniText:Ljava/lang/String;

    return-object v0
.end method

.method public getIniTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->iniTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->lan:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setIniText(Ljava/lang/String;)V
    .locals 0
    .parameter "iniText"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->iniText:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setIniTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "iniTitle"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->iniTitle:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setLan(Ljava/lang/String;)V
    .locals 0
    .parameter "lan"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->lan:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->language:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->version:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CarVersionInfo [iniText="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->iniText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->lan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iniTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->iniTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
