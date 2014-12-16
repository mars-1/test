.class public Lcom/cnlaunch/physics/utils/DPU_String;
.super Ljava/lang/Object;
.source "DPU_String.java"


# static fields
.field public static BASE_POS:I

.field public static MD5_LENGTH:I

.field public static PARA_LENGTH_BYTE_COUNT:I

.field public static TAG:Ljava/lang/String;


# instance fields
.field len:I

.field str:Ljava/lang/String;

.field str_len:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "DPU_String"

    sput-object v0, Lcom/cnlaunch/physics/utils/DPU_String;->TAG:Ljava/lang/String;

    .line 11
    const/16 v0, 0x9

    sput v0, Lcom/cnlaunch/physics/utils/DPU_String;->BASE_POS:I

    .line 12
    const/4 v0, 0x2

    sput v0, Lcom/cnlaunch/physics/utils/DPU_String;->PARA_LENGTH_BYTE_COUNT:I

    .line 13
    const/16 v0, 0x20

    sput v0, Lcom/cnlaunch/physics/utils/DPU_String;->MD5_LENGTH:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/cnlaunch/physics/utils/DPU_String;->str:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cnlaunch/physics/utils/DPU_String;->str_len:I

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/cnlaunch/physics/utils/DPU_String;->len:I

    .line 20
    return-void
.end method

.method public static append([B[B)[B
    .locals 4
    .parameter "src"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 79
    array-length v1, p0

    if-lez v1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 81
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 82
    .local v0, ret:[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-object v0

    .line 86
    .end local v0           #ret:[B
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "byte arguments error"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static asString([B)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 37
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 39
    aget-byte v2, p0, v4

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    or-int v0, v2, v3

    .line 40
    .local v0, len:I
    add-int/lit8 v2, v0, -0x1

    new-array v1, v2, [B

    .line 41
    .local v1, ret:[B
    const/4 v2, 0x2

    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 44
    .end local v0           #len:I
    .end local v1           #ret:[B
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 9
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v1, sb:Ljava/lang/StringBuilder;
    array-length v4, p0

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 92
    :cond_0
    aget-byte v0, p0, v2

    .line 93
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

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .parameter "args"

    .prologue
    const/4 v8, 0x0

    .line 106
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "-------------------------- test DPUbytesToString()---------------------"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    new-instance v2, Lcom/cnlaunch/physics/utils/DPU_String;

    const-string/jumbo v5, "Hello"

    invoke-direct {v2, v5}, Lcom/cnlaunch/physics/utils/DPU_String;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, hello:Lcom/cnlaunch/physics/utils/DPU_String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcom/cnlaunch/physics/utils/DPU_String;->toBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/physics/utils/DPU_String;->asString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "=====================test DPUStringArrayToStringArray(byte[] data)=========================="

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    const/4 v5, 0x4

    new-array v0, v5, [Lcom/cnlaunch/physics/utils/DPU_String;

    .line 112
    new-instance v5, Lcom/cnlaunch/physics/utils/DPU_String;

    const-string/jumbo v6, "this"

    invoke-direct {v5, v6}, Lcom/cnlaunch/physics/utils/DPU_String;-><init>(Ljava/lang/String;)V

    aput-object v5, v0, v8

    const/4 v5, 0x1

    .line 113
    new-instance v6, Lcom/cnlaunch/physics/utils/DPU_String;

    const-string/jumbo v7, "may"

    invoke-direct {v6, v7}, Lcom/cnlaunch/physics/utils/DPU_String;-><init>(Ljava/lang/String;)V

    aput-object v6, v0, v5

    const/4 v5, 0x2

    .line 114
    new-instance v6, Lcom/cnlaunch/physics/utils/DPU_String;

    const-string/jumbo v7, "fun"

    invoke-direct {v6, v7}, Lcom/cnlaunch/physics/utils/DPU_String;-><init>(Ljava/lang/String;)V

    aput-object v6, v0, v5

    const/4 v5, 0x3

    .line 115
    new-instance v6, Lcom/cnlaunch/physics/utils/DPU_String;

    const-string/jumbo v7, "Gooo!"

    invoke-direct {v6, v7}, Lcom/cnlaunch/physics/utils/DPU_String;-><init>(Ljava/lang/String;)V

    aput-object v6, v0, v5

    .line 117
    .local v0, da:[Lcom/cnlaunch/physics/utils/DPU_String;
    aget-object v5, v0, v8

    invoke-virtual {v5}, Lcom/cnlaunch/physics/utils/DPU_String;->toBytes()[B

    move-result-object v1

    .line 118
    .local v1, dpu_da:[B
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-lt v3, v5, :cond_0

    .line 122
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lcom/cnlaunch/physics/utils/DPU_String;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    invoke-static {v1}, Lcom/cnlaunch/physics/utils/DPU_String;->toStringArray([B)Ljava/util/ArrayList;

    move-result-object v4

    .line 124
    .local v4, sa:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(I)V

    .line 125
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 129
    return-void

    .line 120
    .end local v4           #sa:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/cnlaunch/physics/utils/DPU_String;->toBytes()[B

    move-result-object v5

    invoke-static {v1, v5}, Lcom/cnlaunch/physics/utils/DPU_String;->append([B[B)[B

    move-result-object v1

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .restart local v4       #sa:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ":"

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static toStringArray([B)Ljava/util/ArrayList;
    .locals 8
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    if-eqz p0, :cond_1

    .line 54
    array-length v3, p0

    .line 55
    .local v3, total_bytes:I
    const/4 v5, 0x3

    if-lt v3, v5, :cond_1

    .line 56
    const/4 v4, 0x0

    .line 57
    .local v4, walkthrough:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, result_strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lt v4, v5, :cond_0

    .line 69
    .end local v0           #result_strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #total_bytes:I
    .end local v4           #walkthrough:I
    :goto_1
    return-object v0

    .line 60
    .restart local v0       #result_strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #total_bytes:I
    .restart local v4       #walkthrough:I
    :cond_0
    aget-byte v5, p0, v4

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    or-int v2, v5, v6

    .line 61
    .local v2, temp_len:I
    add-int/lit8 v5, v2, -0x1

    new-array v1, v5, [B

    .line 62
    .local v1, str_bytes:[B
    add-int/lit8 v5, v4, 0x2

    const/4 v6, 0x0

    add-int/lit8 v7, v2, -0x1

    invoke-static {p0, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    goto :goto_0

    .line 69
    .end local v0           #result_strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #str_bytes:[B
    .end local v2           #temp_len:I
    .end local v3           #total_bytes:I
    .end local v4           #walkthrough:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/cnlaunch/physics/utils/DPU_String;->len:I

    return v0
.end method

.method public toBytes()[B
    .locals 5

    .prologue
    .line 24
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 25
    .local v0, len:[B
    const/4 v3, 0x0

    iget v4, p0, Lcom/cnlaunch/physics/utils/DPU_String;->str_len:I

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 26
    const/4 v3, 0x1

    iget v4, p0, Lcom/cnlaunch/physics/utils/DPU_String;->str_len:I

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 27
    iget-object v3, p0, Lcom/cnlaunch/physics/utils/DPU_String;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cnlaunch/physics/utils/DPU_String;->append([B[B)[B

    move-result-object v2

    .line 28
    .local v2, temp:[B
    const-string/jumbo v3, "\u0000"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/physics/utils/DPU_String;->append([B[B)[B

    move-result-object v1

    .line 29
    .local v1, ret:[B
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DPU_String [len="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cnlaunch/physics/utils/DPU_String;->len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", str="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DPU_String;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
