.class public Lcom/cnlaunch/physics/entity/DPUHardwareInfo;
.super Ljava/lang/Object;
.source "DPUHardwareInfo.java"


# static fields
.field public static DATE:Ljava/lang/String;

.field public static DEVICE_TYPE:Ljava/lang/String;

.field public static ID:Ljava/lang/String;

.field public static SERIAL_NO:Ljava/lang/String;

.field public static VERSION:Ljava/lang/String;


# instance fields
.field private date:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private serialNo:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string/jumbo v0, "id"

    sput-object v0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->ID:Ljava/lang/String;

    .line 7
    const-string/jumbo v0, "serialNo"

    sput-object v0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->SERIAL_NO:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, "version"

    sput-object v0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->VERSION:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, "date"

    sput-object v0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->DATE:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, "deviceType"

    sput-object v0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->DEVICE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 28
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->id:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->serialNo:Ljava/lang/String;

    .line 30
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->version:Ljava/lang/String;

    .line 31
    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->date:Ljava/lang/String;

    .line 32
    const/4 v0, 0x4

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->deviceType:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->serialNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->version:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->deviceType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->date:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->date:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceType"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->deviceType:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->id:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0
    .parameter "serialNo"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->serialNo:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->version:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DPUHardwareInfo [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serialNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->serialNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    const-string/jumbo v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
