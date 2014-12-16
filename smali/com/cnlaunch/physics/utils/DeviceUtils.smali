.class public Lcom/cnlaunch/physics/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static deviceUtils:Lcom/cnlaunch/physics/utils/DeviceUtils;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/cnlaunch/physics/utils/DeviceUtils;->deviceUtils:Lcom/cnlaunch/physics/utils/DeviceUtils;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/cnlaunch/physics/utils/DeviceUtils;

    invoke-direct {v0}, Lcom/cnlaunch/physics/utils/DeviceUtils;-><init>()V

    sput-object v0, Lcom/cnlaunch/physics/utils/DeviceUtils;->deviceUtils:Lcom/cnlaunch/physics/utils/DeviceUtils;

    .line 39
    :cond_0
    sget-object v0, Lcom/cnlaunch/physics/utils/DeviceUtils;->deviceUtils:Lcom/cnlaunch/physics/utils/DeviceUtils;

    return-object v0
.end method


# virtual methods
.method public getActivateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "serialNo"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getActivateTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivateTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "serialNo"
    .parameter "baseDir"

    .prologue
    .line 178
    invoke-static {p1, p2}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/utils/DeviceProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getActivateTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDPUHardwareInfo(Ljava/lang/String;)Lcom/cnlaunch/physics/entity/DPUHardwareInfo;
    .locals 1
    .parameter "serialNo"

    .prologue
    .line 72
    invoke-static {p1}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getInstance(Ljava/lang/String;)Lcom/cnlaunch/physics/utils/DeviceProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getDPUHardwareInfo()Lcom/cnlaunch/physics/entity/DPUHardwareInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDPUHardwareInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/entity/DPUHardwareInfo;
    .locals 1
    .parameter "serialNo"
    .parameter "baseDir"

    .prologue
    .line 81
    invoke-static {p1, p2}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/utils/DeviceProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getDPUHardwareInfo()Lcom/cnlaunch/physics/entity/DPUHardwareInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDPUSoftInfo(Ljava/lang/String;)Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    .locals 1
    .parameter "serialNo"

    .prologue
    .line 117
    invoke-static {p1}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getInstance(Ljava/lang/String;)Lcom/cnlaunch/physics/utils/DeviceProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getDPUSoftInfo()Lcom/cnlaunch/physics/entity/DPUSoftInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    .locals 1
    .parameter "serialNo"
    .parameter "baseDir"

    .prologue
    .line 126
    invoke-static {p1, p2}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/utils/DeviceProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getDPUSoftInfo()Lcom/cnlaunch/physics/entity/DPUSoftInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasDPUHardwareInfo(Ljava/lang/String;)Z
    .locals 1
    .parameter "serialNo"

    .prologue
    .line 50
    invoke-static {p1}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getInstance(Ljava/lang/String;)Lcom/cnlaunch/physics/utils/DeviceProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->hasHardwareInfo()Z

    move-result v0

    return v0
.end method

.method public hasDPUSoftInfo(Ljava/lang/String;)Z
    .locals 1
    .parameter "serialNo"

    .prologue
    .line 59
    invoke-static {p1}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getInstance(Ljava/lang/String;)Lcom/cnlaunch/physics/utils/DeviceProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->hasSoftInfo()Z

    move-result v0

    return v0
.end method

.method public saveActivateTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serialNo"
    .parameter "activateTime"

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveActivateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public saveActivateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serialNo"
    .parameter "baseDir"
    .parameter "activateTime"

    .prologue
    .line 196
    invoke-static {p1, p2}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/utils/DeviceProperties;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/cnlaunch/physics/utils/DeviceProperties;->saveActivateTime(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public saveDPUHardwareInfo(Ljava/lang/String;Lcom/cnlaunch/physics/entity/DPUHardwareInfo;)V
    .locals 1
    .parameter "serialNo"
    .parameter "dpInfo"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveDPUHardwareInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/physics/entity/DPUHardwareInfo;)V

    .line 92
    return-void
.end method

.method public saveDPUHardwareInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/physics/entity/DPUHardwareInfo;)V
    .locals 1
    .parameter "serialNo"
    .parameter "baseDir"
    .parameter "dpInfo"

    .prologue
    .line 107
    invoke-static {p1, p2}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/utils/DeviceProperties;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/cnlaunch/physics/utils/DeviceProperties;->saveDPUHardwareInfo(Lcom/cnlaunch/physics/entity/DPUHardwareInfo;)V

    .line 108
    return-void
.end method

.method public saveDPUHardwareInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "serialNo"
    .parameter "baseDir"
    .parameter "info"

    .prologue
    .line 97
    new-instance v0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;

    invoke-direct {v0, p3}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;-><init>([Ljava/lang/String;)V

    .line 98
    .local v0, dpInfo:Lcom/cnlaunch/physics/entity/DPUHardwareInfo;
    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveDPUHardwareInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/physics/entity/DPUHardwareInfo;)V

    .line 99
    return-void
.end method

.method public saveDPUHardwareInfo(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "serialNo"
    .parameter "info"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveDPUHardwareInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public saveDPUSoftInfo(Ljava/lang/String;Lcom/cnlaunch/physics/entity/DPUSoftInfo;)V
    .locals 1
    .parameter "serialNo"
    .parameter "dpInfo"

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/physics/entity/DPUSoftInfo;)V

    .line 137
    return-void
.end method

.method public saveDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/physics/entity/DPUSoftInfo;)V
    .locals 1
    .parameter "serialNo"
    .parameter "baseDir"
    .parameter "dpInfo"

    .prologue
    .line 159
    invoke-static {p1, p2}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/utils/DeviceProperties;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/cnlaunch/physics/utils/DeviceProperties;->saveDPUSoftInfo(Lcom/cnlaunch/physics/entity/DPUSoftInfo;)V

    .line 160
    return-void
.end method

.method public saveDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "serialNo"
    .parameter "baseDir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p3, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;

    invoke-direct {v0, p3}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;-><init>(Ljava/util/ArrayList;)V

    .line 150
    .local v0, dsInfo:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/physics/entity/DPUSoftInfo;)V

    .line 151
    return-void
.end method

.method public saveDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "serialNo"
    .parameter "baseDir"
    .parameter "info"

    .prologue
    .line 145
    new-instance v0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;

    invoke-direct {v0, p3}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;-><init>([Ljava/lang/String;)V

    .line 146
    .local v0, dsInfo:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/physics/entity/DPUSoftInfo;)V

    .line 147
    return-void
.end method

.method public saveDPUSoftInfo(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "serialNo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 143
    return-void
.end method

.method public saveDPUSoftInfo(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "serialNo"
    .parameter "info"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 140
    return-void
.end method
