.class public Lcom/cnlaunch/physics/utils/DPU_Long;
.super Ljava/lang/Object;
.source "DPU_Long.java"


# static fields
.field public static final TYPE_LEN:I = 0x4


# instance fields
.field value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/cnlaunch/physics/utils/DPU_Long;->value:J

    .line 11
    return-void
.end method

.method public static bytesToDPULong([B)J
    .locals 4
    .parameter "data"

    .prologue
    .line 30
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-long v0, v2

    .line 31
    .local v0, val:J
    return-wide v0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 9
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v1, sb:Ljava/lang/StringBuilder;
    array-length v4, p0

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 37
    :cond_0
    aget-byte v0, p0, v2

    .line 38
    .local v0, b:B
    new-instance v5, Ljava/util/Formatter;

    invoke-direct {v5}, Ljava/util/Formatter;-><init>()V

    const-string/jumbo v6, "%02x-"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 46
    new-instance v0, Lcom/cnlaunch/physics/utils/DPU_Long;

    const-wide/32 v1, 0x1e240

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/physics/utils/DPU_Long;-><init>(J)V

    .line 47
    .local v0, lon:Lcom/cnlaunch/physics/utils/DPU_Long;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/DPU_Long;->toBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/physics/utils/DPU_Long;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/DPU_Long;->toBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/physics/utils/DPU_Long;->bytesToDPULong([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->println(J)V

    .line 49
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x4

    return v0
.end method

.method public toBytes()[B
    .locals 5

    .prologue
    .line 15
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 16
    .local v0, ret:[B
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/cnlaunch/physics/utils/DPU_Long;->value:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 17
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/cnlaunch/physics/utils/DPU_Long;->value:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 18
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/cnlaunch/physics/utils/DPU_Long;->value:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 19
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/cnlaunch/physics/utils/DPU_Long;->value:J

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 20
    return-object v0
.end method
