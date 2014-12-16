.class public Lcom/cnlaunch/physics/downloadbin/util/DpuOrderUtils;
.super Ljava/lang/Object;
.source "DpuOrderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dataChunkParams(I[BI)[B
    .locals 5
    .parameter "writePos"
    .parameter "dataChunk"
    .parameter "dataLen"

    .prologue
    .line 95
    new-instance v2, Lcom/cnlaunch/physics/utils/DPU_Long;

    int-to-long v3, p0

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/physics/utils/DPU_Long;-><init>(J)V

    .line 96
    .local v2, write_pos:Lcom/cnlaunch/physics/utils/DPU_Long;
    new-instance v0, Lcom/cnlaunch/physics/utils/DPU_Short;

    int-to-short v3, p2

    invoke-direct {v0, v3}, Lcom/cnlaunch/physics/utils/DPU_Short;-><init>(S)V

    .line 97
    .local v0, data_len:Lcom/cnlaunch/physics/utils/DPU_Short;
    const/4 v1, 0x0

    .line 98
    .local v1, params:[B
    invoke-virtual {v2}, Lcom/cnlaunch/physics/utils/DPU_Long;->toBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/DPU_Short;->toBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->appendByteArray([B[B)[B

    move-result-object v1

    .line 99
    invoke-static {v1, p1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->appendByteArray([B[B)[B

    move-result-object v1

    .line 100
    return-object v1
.end method

.method public static fileNameAndLength(Ljava/lang/String;Ljava/io/File;)[B
    .locals 5
    .parameter "name"
    .parameter "file"

    .prologue
    .line 76
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 77
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "file name and file obj should not be null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_1
    new-instance v0, Lcom/cnlaunch/physics/utils/DPU_String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/cnlaunch/physics/utils/DPU_String;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, fileName:Lcom/cnlaunch/physics/utils/DPU_String;
    new-instance v1, Lcom/cnlaunch/physics/utils/DPU_Long;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/cnlaunch/physics/utils/DPU_Long;-><init>(J)V

    .line 81
    .local v1, file_len:Lcom/cnlaunch/physics/utils/DPU_Long;
    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/DPU_String;->toBytes()[B

    move-result-object v3

    .line 82
    invoke-virtual {v1}, Lcom/cnlaunch/physics/utils/DPU_Long;->toBytes()[B

    move-result-object v4

    .line 81
    invoke-static {v3, v4}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->appendByteArray([B[B)[B

    move-result-object v2

    .line 83
    .local v2, params:[B
    return-object v2
.end method

.method public static filterOutCmdParameters([B)[B
    .locals 11
    .parameter "data"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/cnlaunch/physics/downloadbin/util/DpuOrderUtils;->filterReturnDataPackage([B)[B

    move-result-object v8

    .line 41
    .local v8, pkg:[B
    array-length v9, v8

    .line 42
    .local v9, pkg_total_len:I
    const/4 v5, 0x0

    .line 43
    .local v5, param_start_pos:I
    add-int/lit8 v4, v9, -0x2

    .line 44
    .local v4, param_end_pos:I
    sub-int v10, v4, v5

    add-int/lit8 v6, v10, 0x1

    .line 45
    .local v6, param_total_len:I
    new-array v7, v6, [B

    .line 46
    .local v7, parameters:[B
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v5

    .local v2, index:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    if-lt v1, v6, :cond_0

    .line 49
    return-object v7

    .line 47
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v10, v8, v3

    aput-byte v10, v7, v1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method public static filterOutPackageLen([B)I
    .locals 4
    .parameter "data"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/cnlaunch/physics/downloadbin/util/DpuOrderUtils;->isValidPackageHeader([B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const/4 v3, 0x5

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 55
    .local v2, low8:I
    const/4 v3, 0x4

    aget-byte v3, p0, v3

    and-int/lit16 v0, v3, 0xff

    .line 56
    .local v0, high8:I
    shl-int/lit8 v3, v0, 0x8

    or-int v1, v3, v2

    .line 59
    .end local v0           #high8:I
    .end local v2           #low8:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static filterReturnDataPackage([B)[B
    .locals 7
    .parameter "data"

    .prologue
    .line 17
    array-length v6, p0

    if-lez v6, :cond_1

    .line 18
    invoke-static {p0}, Lcom/cnlaunch/physics/downloadbin/util/DpuOrderUtils;->isValidPackageHeader([B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 20
    const/4 v6, 0x5

    aget-byte v6, p0, v6

    and-int/lit16 v4, v6, 0xff

    .line 21
    .local v4, low8:I
    const/4 v6, 0x4

    aget-byte v6, p0, v6

    and-int/lit16 v1, v6, 0xff

    .line 22
    .local v1, high8:I
    shl-int/lit8 v6, v1, 0x8

    or-int v3, v6, v4

    .line 23
    .local v3, len:I
    add-int/lit8 v5, v3, 0x7

    .line 24
    .local v5, total_len:I
    array-length v6, p0

    if-ge v5, v6, :cond_1

    .line 26
    new-array v0, v5, [B

    .line 27
    .local v0, Package:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 34
    .end local v0           #Package:[B
    .end local v1           #high8:I
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #low8:I
    .end local v5           #total_len:I
    :goto_1
    return-object v0

    .line 28
    .restart local v0       #Package:[B
    .restart local v1       #high8:I
    .restart local v2       #i:I
    .restart local v3       #len:I
    .restart local v4       #low8:I
    .restart local v5       #total_len:I
    :cond_0
    aget-byte v6, p0, v2

    aput-byte v6, v0, v2

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #Package:[B
    .end local v1           #high8:I
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #low8:I
    .end local v5           #total_len:I
    :cond_1
    move-object v0, p0

    .line 34
    goto :goto_1
.end method

.method public static isValidPackageHeader([B)Z
    .locals 4
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    aget-byte v2, p0, v1

    const/16 v3, 0x55

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v0

    const/16 v3, -0x56

    if-ne v2, v3, :cond_0

    .line 66
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
