.class public Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
.super Ljava/lang/Object;
.source "X431PadDtoSoft.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5d10a83411781969L


# instance fields
.field private diagVehicleType:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileSize:J

.field private freeUseEndTime:Ljava/lang/String;

.field private isChecked:Z

.field private isExpired:Z

.field private isMust:Z

.field private lanId:Ljava/lang/String;

.field private mRemarks:Ljava/lang/String;

.field private maxOldVersion:Ljava/lang/String;

.field private progress:I

.field private purchased:I

.field private serverCurrentTime:Ljava/lang/String;

.field private softApplicableArea:Ljava/lang/String;

.field private softId:Ljava/lang/String;

.field private softName:Ljava/lang/String;

.field private softPackageID:Ljava/lang/String;

.field private softUpdateTime:Ljava/lang/String;

.field private state:I

.field private type:I

.field private url:Ljava/lang/String;

.field private versionDetailId:Ljava/lang/String;

.field private versionNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isMust:Z

    .line 76
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isExpired:Z

    .line 13
    return-void
.end method


# virtual methods
.method public getDiagVehicleType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->diagVehicleType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpired()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isExpired:Z

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->fileSize:J

    return-wide v0
.end method

.method public getFreeUseEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->freeUseEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLanId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->lanId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxOldVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->maxOldVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->progress:I

    return v0
.end method

.method public getPurchased()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->purchased:I

    return v0
.end method

.method public getRemarks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->mRemarks:Ljava/lang/String;

    return-object v0
.end method

.method public getServerCurrentTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->serverCurrentTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftApplicableArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softApplicableArea:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softId:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softName:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftPackageID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softPackageID:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->state:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionDetailId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->versionDetailId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->versionNo:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isChecked:Z

    return v0
.end method

.method public isMust()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isMust:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isChecked:Z

    .line 207
    return-void
.end method

.method public setDiagVehicleType(Ljava/lang/String;)V
    .locals 0
    .parameter "diagVehicleType"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->diagVehicleType:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setExpired(Z)V
    .locals 0
    .parameter "expired"

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isExpired:Z

    .line 255
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->fileName:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->fileSize:J

    .line 87
    return-void
.end method

.method public setFreeUseEndTime(Ljava/lang/String;)V
    .locals 0
    .parameter "freeUseEndTime"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->freeUseEndTime:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setLanId(Ljava/lang/String;)V
    .locals 0
    .parameter "lanId"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->lanId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setMaxOldVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "maxOldVersion"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->maxOldVersion:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setMust(Z)V
    .locals 0
    .parameter "isMust"

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isMust:Z

    .line 215
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 238
    iput p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->progress:I

    .line 239
    return-void
.end method

.method public setPurchased(I)V
    .locals 0
    .parameter "purchased"

    .prologue
    .line 182
    iput p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->purchased:I

    .line 183
    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .locals 0
    .parameter "remarks"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->mRemarks:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setServerCurrentTime(Ljava/lang/String;)V
    .locals 0
    .parameter "serverCurrentTime"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->serverCurrentTime:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setSoftApplicableArea(Ljava/lang/String;)V
    .locals 0
    .parameter "softApplicableArea"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softApplicableArea:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setSoftId(Ljava/lang/String;)V
    .locals 0
    .parameter "softId"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softId:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setSoftName(Ljava/lang/String;)V
    .locals 0
    .parameter "softName"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setSoftPackageID(Ljava/lang/String;)V
    .locals 0
    .parameter "softPackageID"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softPackageID:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setSoftUpdateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "softUpdateTime"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softUpdateTime:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 246
    iput p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->state:I

    .line 247
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 198
    iput p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->type:I

    .line 199
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->url:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setVersionDetailId(Ljava/lang/String;)V
    .locals 0
    .parameter "versionDetailId"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->versionDetailId:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setVersionNo(Ljava/lang/String;)V
    .locals 0
    .parameter "versionNo"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->versionNo:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "X431PadDtoSoft [softName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", softId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    const-string/jumbo v1, ", versionDetailId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->versionDetailId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", versionNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->versionNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", softUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softUpdateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    const-string/jumbo v1, ", softApplicableArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softApplicableArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    const-string/jumbo v1, ", serverCurrentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->serverCurrentTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    const-string/jumbo v1, ", freeUseEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->freeUseEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", softPackageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->softPackageID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", diagVehicleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->diagVehicleType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    const-string/jumbo v1, ", lanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->lanId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", purchased="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->purchased:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 276
    const-string/jumbo v1, ", maxOldVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->maxOldVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    const-string/jumbo v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
