.class public Lcom/cnlaunch/x431pro/utils/db/CarIcon;
.super Ljava/lang/Object;
.source "CarIcon.java"


# instance fields
.field private areaId:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isDownload:Ljava/lang/Boolean;

.field private languageList:Ljava/lang/String;

.field private maxversion:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private name_zh:Ljava/lang/String;

.field private serialNo:Ljava/lang/String;

.field private sname:Ljava/lang/String;

.field private sname_zh:Ljava/lang/String;

.field private softPackageId:Ljava/lang/String;

.field private vehiclePath:Ljava/lang/String;

.field private versionlist:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->id:Ljava/lang/Long;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "softPackageId"
    .parameter "name"
    .parameter "name_zh"
    .parameter "icon"
    .parameter "areaId"
    .parameter "sname"
    .parameter "sname_zh"
    .parameter "maxversion"
    .parameter "versionlist"
    .parameter "isDownload"
    .parameter "languageList"
    .parameter "vehiclePath"
    .parameter "serialNo"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->id:Ljava/lang/Long;

    .line 42
    iput-object p2, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->softPackageId:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name_zh:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->icon:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->areaId:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname:Ljava/lang/String;

    .line 48
    iput-object p8, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname_zh:Ljava/lang/String;

    .line 49
    iput-object p9, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->maxversion:Ljava/lang/String;

    .line 50
    iput-object p10, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->versionlist:Ljava/lang/String;

    .line 51
    iput-object p11, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->isDownload:Ljava/lang/Boolean;

    .line 52
    iput-object p12, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->languageList:Ljava/lang/String;

    .line 53
    iput-object p13, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->vehiclePath:Ljava/lang/String;

    .line 54
    iput-object p14, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->serialNo:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getAreaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->areaId:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsDownload()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->isDownload:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLanguageList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->languageList:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->maxversion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName_zh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name_zh:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method public getSname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname:Ljava/lang/String;

    return-object v0
.end method

.method public getSname_zh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname_zh:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->softPackageId:Ljava/lang/String;

    return-object v0
.end method

.method public getVehiclePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->vehiclePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionlist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->versionlist:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaId(Ljava/lang/String;)V
    .locals 0
    .parameter "areaId"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->areaId:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->icon:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->id:Ljava/lang/Long;

    .line 63
    return-void
.end method

.method public setIsDownload(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isDownload"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->isDownload:Ljava/lang/Boolean;

    .line 178
    return-void
.end method

.method public setLanguageList(Ljava/lang/String;)V
    .locals 0
    .parameter "languageList"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->languageList:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setMaxversion(Ljava/lang/String;)V
    .locals 0
    .parameter "maxversion"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->maxversion:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setName_zh(Ljava/lang/String;)V
    .locals 0
    .parameter "name_zh"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name_zh:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0
    .parameter "serialNo"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->serialNo:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setSname(Ljava/lang/String;)V
    .locals 0
    .parameter "sname"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setSname_zh(Ljava/lang/String;)V
    .locals 0
    .parameter "sname_zh"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname_zh:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setSoftPackageId(Ljava/lang/String;)V
    .locals 0
    .parameter "softPackageId"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->softPackageId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setVehiclePath(Ljava/lang/String;)V
    .locals 0
    .parameter "vehiclePath"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->vehiclePath:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setVersionlist(Ljava/lang/String;)V
    .locals 0
    .parameter "versionlist"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->versionlist:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CarIcon [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", softPackageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->softPackageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name_zh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name_zh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    const-string/jumbo v1, ", areaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->areaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sname_zh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname_zh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->maxversion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", versionlist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->versionlist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->isDownload:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    const-string/jumbo v1, ", languageList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->languageList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", vehiclePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->vehiclePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serialNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->serialNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
