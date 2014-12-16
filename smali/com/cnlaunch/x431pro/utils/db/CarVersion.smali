.class public Lcom/cnlaunch/x431pro/utils/db/CarVersion;
.super Ljava/lang/Object;
.source "CarVersion.java"


# instance fields
.field private id:Ljava/lang/Long;

.field private isExist:Ljava/lang/Boolean;

.field private languageList:Ljava/lang/String;

.field private serialNo:Ljava/lang/String;

.field private softPackageId:Ljava/lang/String;

.field private versionNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->id:Ljava/lang/Long;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "serialNo"
    .parameter "softPackageId"
    .parameter "versionNo"
    .parameter "isExist"
    .parameter "languageList"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->id:Ljava/lang/Long;

    .line 30
    iput-object p2, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->serialNo:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->softPackageId:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->versionNo:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->isExist:Ljava/lang/Boolean;

    .line 34
    iput-object p6, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->languageList:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsExist()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->isExist:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLanguageList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->languageList:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->softPackageId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->versionNo:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->id:Ljava/lang/Long;

    .line 43
    return-void
.end method

.method public setIsExist(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isExist"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->isExist:Ljava/lang/Boolean;

    .line 95
    return-void
.end method

.method public setLanguageList(Ljava/lang/String;)V
    .locals 0
    .parameter "languageList"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->languageList:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0
    .parameter "serialNo"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->serialNo:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setSoftPackageId(Ljava/lang/String;)V
    .locals 0
    .parameter "softPackageId"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->softPackageId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setVersionNo(Ljava/lang/String;)V
    .locals 0
    .parameter "versionNo"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->versionNo:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CarVersion [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serialNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->serialNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    const-string/jumbo v1, ", softPackageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->softPackageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", versionNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->versionNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->languageList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
