.class public Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "DiagnoseRunningInfo.java"


# static fields
.field public static final KeepStatues:I = -0x1

.field private static final serialVersionUID:J = -0x45b91a5e0ff02346L


# instance fields
.field private appVersion:Ljava/lang/String;

.field private binVersion:Ljava/lang/String;

.field private carSoftName:Ljava/lang/String;

.field private dataStreamCount:I

.field private dataStreamJumpType:I

.field private dataStreamSelectJumpType:Ljava/lang/String;

.field private datastreamSelectIndex:I

.field private diagnoseStatue:I

.field private isActiveTest:Z

.field private isBinding:Z

.field private isDataStream:Z

.field private isDatastreamRecord:Z

.field private isFaultCode:Z

.field private isPrinting:Z

.field private isSpeciaFunction:Z

.field private isUploadSaveReport:Z

.field private serialNum:Ljava/lang/String;

.field private softLan:Ljava/lang/String;

.field private softPackageid:Ljava/lang/String;

.field private softVersion:Ljava/lang/String;

.field private subTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    .line 28
    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/MConfiguration;->getDefaultDiagnoseType()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->diagnoseStatue:I

    .line 30
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isBinding:Z

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->subTitle:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->carSoftName:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->softPackageid:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->appVersion:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->binVersion:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->softVersion:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->serialNum:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->softLan:Ljava/lang/String;

    .line 50
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isPrinting:Z

    .line 52
    iput v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->dataStreamJumpType:I

    .line 54
    iput v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->dataStreamCount:I

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->dataStreamSelectJumpType:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDataStream:Z

    .line 62
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isSpeciaFunction:Z

    .line 64
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isFaultCode:Z

    .line 66
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isActiveTest:Z

    .line 68
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord:Z

    .line 70
    iput v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->datastreamSelectIndex:I

    .line 72
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isUploadSaveReport:Z

    .line 14
    return-void
.end method


# virtual methods
.method public getAllTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->carSoftName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->subTitle:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    const-string/jumbo v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBinVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->binVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCarSoftName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->carSoftName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataStreamCount()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->dataStreamCount:I

    return v0
.end method

.method public getDataStreamJumpType()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->dataStreamJumpType:I

    return v0
.end method

.method public getDataStreamSelectJumpType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->dataStreamSelectJumpType:Ljava/lang/String;

    return-object v0
.end method

.method public getDatastreamSelectIndex()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->datastreamSelectIndex:I

    return v0
.end method

.method public getDiagnoseStatue()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->diagnoseStatue:I

    return v0
.end method

.method public getSerialNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->serialNum:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftLan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->softLan:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftPackageid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->softPackageid:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->softVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isActiveTest()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isActiveTest:Z

    return v0
.end method

.method public isBinding()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isBinding:Z

    return v0
.end method

.method public isDataStream()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDataStream:Z

    return v0
.end method

.method public isDatastreamRecord()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord:Z

    return v0
.end method

.method public isFaultCode()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isFaultCode:Z

    return v0
.end method

.method public isPrinting()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isPrinting:Z

    return v0
.end method

.method public isSpeciaFunction()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isSpeciaFunction:Z

    return v0
.end method

.method public isUploadSaveReport()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isUploadSaveReport:Z

    return v0
.end method

.method public setActiveTest(Z)V
    .locals 0
    .parameter "isActiveTest"

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isActiveTest:Z

    .line 272
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "appVersion"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->appVersion:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setBinVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "binVersion"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->binVersion:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setBinding(Z)V
    .locals 0
    .parameter "isBinding"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isBinding:Z

    .line 144
    return-void
.end method

.method public setCarSoftName(Ljava/lang/String;)V
    .locals 0
    .parameter "carTitle"

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->carSoftName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDataStream(Z)V
    .locals 0
    .parameter "isDataStream"

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDataStream:Z

    .line 280
    return-void
.end method

.method public setDataStreamCount(I)V
    .locals 0
    .parameter "dataStreamCount"

    .prologue
    .line 215
    iput p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->dataStreamCount:I

    .line 216
    return-void
.end method

.method public setDataStreamJumpType(I)V
    .locals 0
    .parameter "dataStreamJumpType"

    .prologue
    .line 207
    iput p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->dataStreamJumpType:I

    .line 208
    return-void
.end method

.method public setDataStreamSelectJumpType(Ljava/lang/String;)V
    .locals 0
    .parameter "dataStreamSelectJumpType"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->dataStreamSelectJumpType:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setDatastreamRecord(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord:Z

    .line 256
    return-void
.end method

.method public setDatastreamSelectIndex(I)V
    .locals 0
    .parameter "datastreamSelectIndex"

    .prologue
    .line 263
    iput p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->datastreamSelectIndex:I

    .line 264
    return-void
.end method

.method public setDiagnoseStatue(I)V
    .locals 0
    .parameter "diagnoseStatue"

    .prologue
    .line 135
    iput p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->diagnoseStatue:I

    .line 136
    return-void
.end method

.method public setFaultCode(Z)V
    .locals 0
    .parameter "isFaultCode"

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isFaultCode:Z

    .line 248
    return-void
.end method

.method public setPrinting(Z)V
    .locals 0
    .parameter "isPrinting"

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isPrinting:Z

    .line 184
    return-void
.end method

.method public setSerialNum(Ljava/lang/String;)V
    .locals 0
    .parameter "serialNum"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->serialNum:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setSoftLan(Ljava/lang/String;)V
    .locals 0
    .parameter "softLan"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->softLan:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setSoftPackageid(Ljava/lang/String;)V
    .locals 0
    .parameter "softPackageid"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->softPackageid:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSoftVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "softVersion"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->softVersion:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSpeciaFunction(Z)V
    .locals 0
    .parameter "isSpeciaFunction"

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isSpeciaFunction:Z

    .line 240
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "subTitle"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->subTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUploadSaveReport(Z)V
    .locals 0
    .parameter "isUploadSaveReport"

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isUploadSaveReport:Z

    .line 297
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DiagnoseRunningInfo [diagnoseStatue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->diagnoseStatue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isBinding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isBinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", carSoftName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->carSoftName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", softPackageid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->softPackageid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    const-string/jumbo v1, ", appVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", binVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->binVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", softVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->softVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serialNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->serialNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", softLan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->softLan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    const-string/jumbo v1, ", isPrinting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isPrinting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
