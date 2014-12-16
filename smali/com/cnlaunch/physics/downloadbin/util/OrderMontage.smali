.class public Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;
.super Ljava/lang/Object;
.source "OrderMontage.java"


# static fields
.field private static D:Ljava/lang/Boolean; = null

.field private static commandWord:Ljava/lang/String; = null

.field private static counter:Ljava/lang/String; = null

.field private static dataArea:Ljava/lang/String; = null

.field private static packLengths:Ljava/lang/String; = null

.field private static packVerify:Ljava/lang/String; = null

.field private static final source:Ljava/lang/String; = "F8"

.field private static final startCode:Ljava/lang/String; = "55aa"

.field private static final target:Ljava/lang/String; = "F0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->D:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DPU2106()[B
    .locals 9

    .prologue
    .line 170
    const/4 v7, 0x0

    .line 171
    .local v7, o2106:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 176
    const-string/jumbo v0, "2106"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 177
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 179
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 180
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 179
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 186
    return-object v7

    .line 173
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static DPUBluetoothAddress2116()[B
    .locals 9

    .prologue
    .line 515
    const/4 v7, 0x0

    .line 516
    .local v7, o2116:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 517
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 521
    const-string/jumbo v0, "2116"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 522
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 524
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 525
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 524
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 527
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 530
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 531
    return-object v7

    .line 518
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static DPUKuVer2104()[B
    .locals 9

    .prologue
    .line 120
    const/4 v7, 0x0

    .line 121
    .local v7, o2104:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "2104"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 130
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 129
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 136
    return-object v7

    .line 123
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static DPULicence2115()[B
    .locals 9

    .prologue
    .line 490
    const/4 v7, 0x0

    .line 491
    .local v7, o2115:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 492
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 496
    const-string/jumbo v0, "2115"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 497
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 499
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 500
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 499
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 502
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 505
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 506
    return-object v7

    .line 493
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static DPUVer2105()[B
    .locals 9

    .prologue
    .line 145
    const/4 v7, 0x0

    .line 146
    .local v7, o2105:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, "2105"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 152
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 154
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 155
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 154
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 161
    return-object v7

    .line 148
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static DPUVerInfo2103()[B
    .locals 9

    .prologue
    .line 95
    const/4 v7, 0x0

    .line 96
    .local v7, o2103:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, "2103"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 105
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 104
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 111
    return-object v7

    .line 98
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static ValidateAllFilesMd52408()[B
    .locals 9

    .prologue
    .line 1147
    const/4 v7, 0x0

    .line 1148
    .local v7, o2408:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 1149
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1152
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1153
    const-string/jumbo v0, "2403"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 1154
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 1156
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1157
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1156
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1159
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1160
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1163
    return-object v7

    .line 1150
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static ValidateUpdateFinished2405()[B
    .locals 9

    .prologue
    .line 1121
    const/4 v7, 0x0

    .line 1122
    .local v7, o2405:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 1123
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1127
    const-string/jumbo v0, "2405"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 1128
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 1130
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1131
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1130
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1133
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1134
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1137
    return-object v7

    .line 1124
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static breakpointResume2406()[B
    .locals 9

    .prologue
    .line 817
    const/4 v7, 0x0

    .line 818
    .local v7, o2406:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 819
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 823
    const-string/jumbo v0, "2406"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 824
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 826
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 827
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 826
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 829
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 832
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 833
    return-object v7

    .line 820
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static checkDPU2117(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9
    .parameter "ucContext"
    .parameter "ucSignature"

    .prologue
    .line 542
    const/4 v7, 0x0

    .line 543
    .local v7, o2117:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 544
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 548
    const-string/jumbo v0, "2117"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 551
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 552
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 551
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 554
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 557
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 558
    return-object v7

    .line 545
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static clearFlash210A(Ljava/lang/String;)[B
    .locals 9
    .parameter "code"

    .prologue
    .line 281
    const/4 v7, 0x0

    .line 282
    .local v7, o210A:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 287
    const-string/jumbo v0, "210A"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 288
    sput-object p0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 290
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 291
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 290
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 296
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 297
    return-object v7

    .line 284
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static currentStatus2114()[B
    .locals 9

    .prologue
    .line 465
    const/4 v7, 0x0

    .line 466
    .local v7, o2114:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 467
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 471
    const-string/jumbo v0, "2114"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 472
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 474
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 475
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 474
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 477
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 480
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 481
    return-object v7

    .line 468
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static diagnosticList2500()[B
    .locals 9

    .prologue
    .line 1018
    const/4 v7, 0x0

    .line 1019
    .local v7, o2500:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 1020
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1024
    const-string/jumbo v0, "2500"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 1025
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 1027
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1028
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1027
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1030
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1033
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1034
    return-object v7

    .line 1021
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static disconnected2504()[B
    .locals 9

    .prologue
    .line 968
    const/4 v7, 0x0

    .line 969
    .local v7, o2504:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 970
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 973
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 974
    const-string/jumbo v0, "2504"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 975
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 977
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 978
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 977
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 980
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 983
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 984
    return-object v7

    .line 971
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static download2111()[B
    .locals 9

    .prologue
    .line 386
    const/4 v7, 0x0

    .line 387
    .local v7, o2111:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 392
    const-string/jumbo v0, "2111"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 393
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 395
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 396
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 395
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 401
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 402
    return-object v7

    .line 389
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static exitSimpleDiagnostic211a()[B
    .locals 9

    .prologue
    .line 626
    const/4 v7, 0x0

    .line 627
    .local v7, o211a:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 628
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 632
    const-string/jumbo v0, "211a"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 633
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 635
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 636
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 635
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 638
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 641
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 642
    return-object v7

    .line 629
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static intoLowPowerMode211b()[B
    .locals 9

    .prologue
    .line 651
    const/4 v7, 0x0

    .line 652
    .local v7, o211b:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 653
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 657
    const-string/jumbo v0, "211b"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 658
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 660
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 661
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 660
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 663
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 666
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 667
    return-object v7

    .line 654
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static link2501()[B
    .locals 9

    .prologue
    .line 895
    const/4 v7, 0x0

    .line 896
    .local v7, o2501:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 897
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 901
    const-string/jumbo v0, "2501"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 902
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 904
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 905
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 904
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 907
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 906
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 910
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 911
    return-object v7

    .line 898
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static modifyPw210B(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9
    .parameter "oldPw"
    .parameter "newPw"

    .prologue
    .line 308
    const/4 v7, 0x0

    .line 309
    .local v7, o210B:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 314
    const-string/jumbo v0, "210B"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 317
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 318
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 317
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 323
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 324
    return-object v7

    .line 311
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static readClock2102()[B
    .locals 9

    .prologue
    .line 47
    const/4 v7, 0x0

    .line 48
    .local v7, o2102:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "2102"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 61
    return-object v7

    .line 50
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static readConFile2113()[B
    .locals 9

    .prologue
    .line 440
    const/4 v7, 0x0

    .line 441
    .local v7, o2113:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 442
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 446
    const-string/jumbo v0, "2113"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 447
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 449
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 450
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 449
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 452
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 456
    return-object v7

    .line 443
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static readConnector2119(Ljava/lang/String;)[B
    .locals 9
    .parameter "fileName"

    .prologue
    .line 601
    const/4 v7, 0x0

    .line 602
    .local v7, o2119:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 603
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 607
    const-string/jumbo v0, "2119"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 608
    sput-object p0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 610
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 611
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 610
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 613
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 612
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 616
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 617
    return-object v7

    .line 604
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static readModelFileInfo2408(Ljava/lang/String;)[B
    .locals 9
    .parameter "buffer"

    .prologue
    .line 868
    const/4 v7, 0x0

    .line 869
    .local v7, o2408:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 870
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 874
    const-string/jumbo v0, "2408"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 875
    sput-object p0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 877
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 878
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 877
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 880
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 883
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 884
    return-object v7

    .line 871
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static requestConnect2502()[B
    .locals 9

    .prologue
    .line 920
    const/4 v7, 0x0

    .line 921
    .local v7, o2502:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 922
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 926
    const-string/jumbo v0, "2502"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 927
    const-string/jumbo v0, "02"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 929
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 933
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 934
    return-object v7

    .line 923
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static resetConnector2505()[B
    .locals 9

    .prologue
    .line 993
    const/4 v7, 0x0

    .line 994
    .local v7, o2505:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 995
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 999
    const-string/jumbo v0, "2505"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 1000
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 1002
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1003
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1002
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1005
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1004
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1008
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1009
    return-object v7

    .line 996
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static resumePw210f(Ljava/lang/String;)[B
    .locals 9
    .parameter "str"

    .prologue
    .line 335
    const/4 v7, 0x0

    .line 336
    .local v7, o210f:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 341
    const-string/jumbo v0, "210f"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 342
    sput-object p0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 344
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 345
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 344
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 351
    return-object v7

    .line 338
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static resumePw2110(Ljava/lang/String;)[B
    .locals 9
    .parameter "oldPw"

    .prologue
    .line 361
    const/4 v7, 0x0

    .line 362
    .local v7, o2110:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 367
    const-string/jumbo v0, "2110"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 368
    invoke-static {p0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->dpuString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 370
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 371
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 370
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 373
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 376
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 377
    return-object v7

    .line 364
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static securityCheck2503(Ljava/lang/String;)[B
    .locals 9
    .parameter "verify"

    .prologue
    .line 943
    const/4 v7, 0x0

    .line 944
    .local v7, o2503:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 945
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 949
    const-string/jumbo v0, "2503"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 950
    sput-object p0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 952
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 953
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 952
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 955
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 954
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 958
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 959
    return-object v7

    .line 946
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static sendFileNameAndLength2402(Ljava/io/File;)[B
    .locals 10
    .parameter "file"

    .prologue
    .line 1070
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cnlaunch/physics/downloadbin/util/DpuOrderUtils;->fileNameAndLength(Ljava/lang/String;Ljava/io/File;)[B

    move-result-object v9

    .line 1071
    .local v9, param:[B
    const/4 v7, 0x0

    .line 1072
    .local v7, o2402:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 1073
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1077
    const-string/jumbo v0, "2402"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 1078
    invoke-static {v9}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 1080
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1081
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1080
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1083
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1082
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1084
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1087
    return-object v7

    .line 1074
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static sendUpdateFileMd52404(Ljava/lang/String;)[B
    .locals 9
    .parameter "md5"

    .prologue
    .line 1097
    const/4 v7, 0x0

    .line 1098
    .local v7, o2404:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 1099
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1103
    const-string/jumbo v0, "2404"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 1104
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 1106
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1107
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1106
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1109
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1110
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1113
    return-object v7

    .line 1100
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static sendUpdateFilesContent2403([B)[B
    .locals 9
    .parameter "param"

    .prologue
    .line 1173
    const/4 v7, 0x0

    .line 1174
    .local v7, o2403:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 1175
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1179
    const-string/jumbo v0, "2403"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 1180
    invoke-static {p0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 1182
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1183
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1182
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1185
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1186
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1189
    return-object v7

    .line 1176
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static setBluetoothName2108(Ljava/lang/String;)[B
    .locals 9
    .parameter "name"

    .prologue
    .line 227
    const/4 v7, 0x0

    .line 228
    .local v7, o2108:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 233
    const-string/jumbo v0, "2108"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 234
    sput-object p0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 236
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 237
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 236
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 243
    return-object v7

    .line 230
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static setClock2101()[B
    .locals 9

    .prologue
    .line 70
    const/4 v7, 0x0

    .line 71
    .local v7, o2101:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "2101"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->currentData()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 80
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 79
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 86
    return-object v7

    .line 73
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static smartBox2701([B)[B
    .locals 9
    .parameter "param"

    .prologue
    .line 1201
    const/4 v7, 0x0

    .line 1202
    .local v7, o2701:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 1203
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1207
    const-string/jumbo v0, "2701"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 1208
    invoke-static {p0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 1210
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1211
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1210
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1213
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1214
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1217
    return-object v7

    .line 1204
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static smartBox2701No([B)[B
    .locals 9
    .parameter "param"

    .prologue
    .line 1044
    const/4 v7, 0x0

    .line 1045
    .local v7, o2701:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 1046
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1050
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 1051
    invoke-static {p0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 1053
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 1054
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 1053
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1056
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1055
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1057
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1060
    return-object v7

    .line 1047
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static transferDPUMode2109(I)[B
    .locals 10
    .parameter "mode"

    .prologue
    .line 254
    const/4 v8, 0x0

    .line 255
    .local v8, o2109:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 260
    const-string/jumbo v0, "2109"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 261
    new-instance v7, Ljava/text/DecimalFormat;

    const-string/jumbo v0, "00"

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 262
    .local v7, format:Ljava/text/DecimalFormat;
    int-to-long v0, p0

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 264
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 265
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 264
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 270
    .local v9, order:Ljava/lang/String;
    invoke-static {v9}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 271
    return-object v8

    .line 257
    .end local v7           #format:Ljava/text/DecimalFormat;
    .end local v9           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static updateFirmware2407()[B
    .locals 9

    .prologue
    .line 842
    const/4 v7, 0x0

    .line 843
    .local v7, o2407:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 844
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 848
    const-string/jumbo v0, "2407"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 849
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 851
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 852
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 851
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 854
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 857
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 858
    return-object v7

    .line 845
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static upgrade2401(Ljava/lang/String;)[B
    .locals 9
    .parameter "buffer"

    .prologue
    .line 679
    const/4 v7, 0x0

    .line 680
    .local v7, o2401:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 681
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 685
    const-string/jumbo v0, "2401"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 686
    sput-object p0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 688
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 689
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 688
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 691
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 694
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 695
    return-object v7

    .line 682
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static upgradeComplete2405()[B
    .locals 9

    .prologue
    .line 792
    const/4 v7, 0x0

    .line 793
    .local v7, o2405:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 794
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 798
    const-string/jumbo v0, "2405"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 799
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 801
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 802
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 801
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 804
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 803
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 807
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 808
    return-object v7

    .line 795
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static upgradeFileConVerify2404(Ljava/lang/String;)[B
    .locals 9
    .parameter "md5Str"

    .prologue
    .line 767
    const/4 v7, 0x0

    .line 768
    .local v7, o2404:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 769
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 773
    const-string/jumbo v0, "2404"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 774
    sput-object p0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 776
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 777
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 776
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 779
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 782
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 783
    return-object v7

    .line 770
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static upgradeFileContent2403(Ljava/lang/Long;Ljava/lang/Short;Ljava/nio/Buffer;)[B
    .locals 9
    .parameter "writePosition"
    .parameter "dataLength"
    .parameter "fileContent"

    .prologue
    .line 740
    const/4 v7, 0x0

    .line 741
    .local v7, o2403:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 742
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 746
    const-string/jumbo v0, "2403"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 749
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 750
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 749
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 752
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 755
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 756
    return-object v7

    .line 743
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static upgradeFileName2402(Ljava/lang/String;Ljava/lang/Long;)[B
    .locals 9
    .parameter "fileName"
    .parameter "fileSize"

    .prologue
    .line 708
    const/4 v7, 0x0

    .line 709
    .local v7, o2402:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 710
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 714
    const-string/jumbo v0, "2402"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 717
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 718
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 717
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 720
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 723
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 724
    return-object v7

    .line 711
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static writeConFile2112(Ljava/lang/Short;Ljava/nio/Buffer;)[B
    .locals 9
    .parameter "fileLength"
    .parameter "content"

    .prologue
    .line 415
    const/4 v7, 0x0

    .line 416
    .local v7, o2112:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 417
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 421
    const-string/jumbo v0, "2112"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 424
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 425
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 424
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 430
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 431
    return-object v7

    .line 418
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static writeConnector2118(Ljava/lang/String;Ljava/lang/Short;Ljava/nio/Buffer;)[B
    .locals 9
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "fileContent"

    .prologue
    .line 574
    const/4 v7, 0x0

    .line 575
    .local v7, o2118:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 576
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 580
    const-string/jumbo v0, "2118"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 583
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 584
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 583
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 586
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 589
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 590
    return-object v7

    .line 577
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static writeDPUSerialNum2107(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9
    .parameter "mode"
    .parameter "serialNum"

    .prologue
    .line 200
    const/4 v7, 0x0

    .line 201
    .local v7, o2107:[B
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    sput-object v6, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 206
    const-string/jumbo v0, "2107"

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    .line 209
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    .line 210
    sget-object v4, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    .line 209
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 215
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 216
    return-object v7

    .line 203
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method
