.class public Lcom/cnlaunch/physics/utils/DPU_Short;
.super Ljava/lang/Object;
.source "DPU_Short.java"


# static fields
.field public static final TYPE_LEN:I = 0x2


# instance fields
.field value:S


# direct methods
.method public constructor <init>(S)V
    .locals 0
    .parameter "i"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-short p1, p0, Lcom/cnlaunch/physics/utils/DPU_Short;->value:S

    .line 16
    return-void
.end method

.method public static bytesToDPUShort([B)S
    .locals 3
    .parameter "data"

    .prologue
    .line 32
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v0, v1

    .line 33
    .local v0, val:S
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 38
    new-instance v0, Lcom/cnlaunch/physics/utils/DPU_Short;

    const/16 v1, 0x7b

    invoke-direct {v0, v1}, Lcom/cnlaunch/physics/utils/DPU_Short;-><init>(S)V

    .line 39
    .local v0, sh:Lcom/cnlaunch/physics/utils/DPU_Short;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/DPU_Short;->toBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/physics/utils/DPU_Short;->bytesToDPUShort([B)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    return v0
.end method

.method public toBytes()[B
    .locals 3

    .prologue
    .line 20
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 21
    .local v0, ret:[B
    const/4 v1, 0x0

    iget-short v2, p0, Lcom/cnlaunch/physics/utils/DPU_Short;->value:S

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 22
    const/4 v1, 0x1

    iget-short v2, p0, Lcom/cnlaunch/physics/utils/DPU_Short;->value:S

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 23
    return-object v0
.end method
