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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->id:Ljava/lang/Long;

    .line 40
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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->id:Ljava/lang/Long;

    .line 46
    iput-object p2, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->softPackageId:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name_zh:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->icon:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->areaId:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname:Ljava/lang/String;

    .line 52
    iput-object p8, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname_zh:Ljava/lang/String;

    .line 53
    iput-object p9, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->maxversion:Ljava/lang/String;

    .line 54
    iput-object p10, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->versionlist:Ljava/lang/String;

    .line 55
    iput-object p11, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->isDownload:Ljava/lang/Boolean;

    .line 56
    iput-object p12, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->languageList:Ljava/lang/String;

    .line 57
    iput-object p13, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->vehiclePath:Ljava/lang/String;

    .line 58
    iput-object p14, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->serialNo:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getAreaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->areaId:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsDownload()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->isDownload:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLanguageList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->languageList:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->maxversion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName_zh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name_zh:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method public getSname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname:Ljava/lang/String;

    return-object v0
.end method

.method public getSname_zh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname_zh:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->softPackageId:Ljava/lang/String;

    return-object v0
.end method

.method public getVehiclePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->vehiclePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionlist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->versionlist:Ljava/lang/String;

    return-object v0
.end method

.method public getZhShowName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 209
    const-string/jumbo v2, ""

    .line 211
    .local v2, zhShowName:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name_zh:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 212
    .local v1, zhNameRsId:I
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 217
    .end local v1           #zhNameRsId:I
    :goto_0
    return-object v2

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V

    .line 215
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name_zh:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAreaId(Ljava/lang/String;)V
    .locals 0
    .parameter "areaId"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->areaId:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->icon:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->id:Ljava/lang/Long;

    .line 67
    return-void
.end method

.method public setIsDownload(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isDownload"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->isDownload:Ljava/lang/Boolean;

    .line 182
    return-void
.end method

.method public setLanguageList(Ljava/lang/String;)V
    .locals 0
    .parameter "languageList"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->languageList:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setMaxversion(Ljava/lang/String;)V
    .locals 0
    .parameter "maxversion"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->maxversion:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setName_zh(Ljava/lang/String;)V
    .locals 0
    .parameter "name_zh"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->name_zh:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0
    .parameter "serialNo"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->serialNo:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setSname(Ljava/lang/String;)V
    .locals 0
    .parameter "sname"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setSname_zh(Ljava/lang/String;)V
    .locals 0
    .parameter "sname_zh"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->sname_zh:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setSoftPackageId(Ljava/lang/String;)V
    .locals 0
    .parameter "softPackageId"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->softPackageId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setVehiclePath(Ljava/lang/String;)V
    .locals 0
    .parameter "vehiclePath"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->vehiclePath:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setVersionlist(Ljava/lang/String;)V
    .locals 0
    .parameter "versionlist"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->versionlist:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
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

    .line 222
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

    .line 223
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

    .line 224
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

    .line 225
    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->versionlist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->isDownload:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 226
    const-string/jumbo v1, ", languageList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->languageList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", vehiclePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 227
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

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
