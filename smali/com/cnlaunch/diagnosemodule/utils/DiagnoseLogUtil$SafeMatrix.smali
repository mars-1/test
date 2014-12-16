.class public Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;
.super Ljava/lang/Object;
.source "DiagnoseLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafeMatrix"
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x1000

.field public static final MAX:I = 0x8

.field private static mDecryptionMatrix:[[B

.field private static mEncryptionMatrix:[[B


# instance fields
.field private mEncDecMatrix:[B

.field private mSrcMatrixBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 943
    new-array v0, v9, [[B

    const/4 v1, 0x0

    .line 944
    new-array v2, v9, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v9, [B

    const/4 v3, 0x1

    aput-byte v5, v2, v3

    const/16 v3, 0xf

    aput-byte v3, v2, v5

    aput-byte v5, v2, v7

    const/4 v3, 0x6

    aput-byte v3, v2, v6

    const/4 v3, 0x6

    aput-byte v3, v2, v8

    const/4 v3, 0x6

    const/4 v4, 0x7

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x6

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    .line 945
    new-array v1, v9, [B

    const/4 v2, 0x1

    aput-byte v7, v1, v2

    const/16 v2, 0x19

    aput-byte v2, v1, v5

    aput-byte v7, v1, v7

    const/16 v2, 0x9

    aput-byte v2, v1, v6

    const/16 v2, 0x9

    aput-byte v2, v1, v8

    const/4 v2, 0x6

    const/16 v3, 0xc

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0xb

    aput-byte v3, v1, v2

    aput-object v1, v0, v5

    new-array v1, v9, [B

    const/16 v2, 0x13

    aput-byte v2, v1, v5

    aput-byte v5, v1, v7

    const/16 v2, 0x9

    aput-byte v2, v1, v6

    const/4 v2, 0x7

    aput-byte v2, v1, v8

    const/4 v2, 0x6

    const/4 v3, 0x7

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0xa

    aput-byte v3, v1, v2

    aput-object v1, v0, v7

    .line 946
    new-array v1, v9, [B

    const/4 v2, 0x1

    aput-byte v5, v1, v2

    const/16 v2, 0x15

    aput-byte v2, v1, v5

    aput-byte v7, v1, v7

    const/16 v2, 0xa

    aput-byte v2, v1, v6

    aput-byte v9, v1, v8

    const/4 v2, 0x6

    const/16 v3, 0x9

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0xa

    aput-byte v3, v1, v2

    aput-object v1, v0, v6

    new-array v1, v9, [B

    const/16 v2, 0x1e

    aput-byte v2, v1, v5

    aput-byte v7, v1, v7

    const/16 v2, 0xe

    aput-byte v2, v1, v6

    const/16 v2, 0xb

    aput-byte v2, v1, v8

    const/4 v2, 0x6

    const/16 v3, 0xb

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x10

    aput-byte v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x6

    .line 947
    new-array v2, v9, [B

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    const/16 v3, 0x16

    aput-byte v3, v2, v5

    aput-byte v6, v2, v7

    const/16 v3, 0xd

    aput-byte v3, v2, v6

    aput-byte v9, v2, v8

    const/4 v3, 0x6

    const/16 v4, 0x9

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0xd

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    const/4 v3, 0x1

    aput-byte v5, v2, v3

    const/16 v3, 0x17

    aput-byte v3, v2, v5

    aput-byte v6, v2, v7

    const/16 v3, 0xc

    aput-byte v3, v2, v6

    const/16 v3, 0x9

    aput-byte v3, v2, v8

    const/4 v3, 0x6

    const/16 v4, 0xa

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0xb

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    .line 943
    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mEncryptionMatrix:[[B

    .line 950
    new-array v0, v9, [[B

    const/4 v1, 0x0

    .line 951
    new-array v2, v9, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 952
    new-array v2, v9, [B

    const/4 v3, 0x1

    const/4 v4, -0x2

    aput-byte v4, v2, v3

    const/4 v3, -0x7

    aput-byte v3, v2, v7

    aput-byte v5, v2, v6

    aput-byte v6, v2, v8

    const/4 v3, 0x6

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    new-array v1, v9, [B

    const/4 v2, 0x1

    const/4 v3, -0x6

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    aput-byte v2, v1, v5

    const/4 v2, -0x8

    aput-byte v2, v1, v7

    aput-byte v5, v1, v6

    aput-byte v8, v1, v8

    const/4 v2, 0x6

    const/4 v3, -0x3

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    aput-byte v6, v1, v2

    aput-object v1, v0, v5

    .line 953
    new-array v1, v9, [B

    const/4 v2, 0x1

    const/16 v3, -0xb

    aput-byte v3, v1, v2

    aput-byte v5, v1, v5

    const/16 v2, -0x20

    aput-byte v2, v1, v7

    const/4 v2, -0x1

    aput-byte v2, v1, v6

    const/16 v2, 0x14

    aput-byte v2, v1, v8

    const/4 v2, 0x6

    const/4 v3, -0x6

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0xc

    aput-byte v3, v1, v2

    aput-object v1, v0, v7

    .line 954
    new-array v1, v9, [B

    const/4 v2, 0x1

    aput-byte v8, v1, v2

    const/4 v2, -0x1

    aput-byte v2, v1, v5

    const/16 v2, 0x13

    aput-byte v2, v1, v7

    const/4 v2, 0x1

    aput-byte v2, v1, v6

    const/16 v2, -0xc

    aput-byte v2, v1, v8

    const/4 v2, 0x6

    aput-byte v7, v1, v2

    const/4 v2, 0x7

    const/4 v3, -0x6

    aput-byte v3, v1, v2

    aput-object v1, v0, v6

    new-array v1, v9, [B

    const/4 v2, 0x1

    aput-byte v6, v1, v2

    const/4 v2, -0x1

    aput-byte v2, v1, v5

    const/4 v2, -0x6

    aput-byte v2, v1, v7

    const/4 v2, -0x3

    aput-byte v2, v1, v6

    aput-byte v6, v1, v8

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x6

    .line 955
    new-array v2, v9, [B

    const/4 v3, 0x1

    const/16 v4, 0x9

    aput-byte v4, v2, v3

    const/4 v3, -0x1

    aput-byte v3, v2, v5

    const/16 v3, 0x18

    aput-byte v3, v2, v7

    const/4 v3, -0x2

    aput-byte v3, v2, v6

    const/16 v3, -0xf

    aput-byte v3, v2, v8

    const/4 v3, 0x6

    aput-byte v8, v2, v3

    const/4 v3, 0x7

    const/4 v4, -0x8

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    const/4 v3, -0x8

    aput-byte v3, v2, v7

    const/4 v3, -0x1

    aput-byte v3, v2, v6

    aput-byte v8, v2, v8

    const/4 v3, 0x7

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    .line 950
    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mDecryptionMatrix:[[B

    .line 955
    return-void

    .line 944
    :array_0
    .array-data 0x1
        0x1t
        0x2t
        0x1bt
        0x4t
        0xft
        0x8t
        0xbt
        0xet
    .end array-data

    .line 951
    :array_1
    .array-data 0x1
        0x1t
        0x4t
        0xfft
        0xe1t
        0xf7t
        0x14t
        0xfft
        0x6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x1000

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 940
    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mSrcMatrixBuffer:[B

    .line 941
    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mEncDecMatrix:[B

    .line 958
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mSrcMatrixBuffer:[B

    .line 959
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mEncDecMatrix:[B

    .line 960
    return-void
.end method

.method public static decryptionContent([B[BI)I
    .locals 1
    .parameter "srcMatrixBuffer"
    .parameter "decMatrix"
    .parameter "length"

    .prologue
    .line 969
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->safeContent([B[BIZ)I

    move-result v0

    return v0
.end method

.method public static encryptionContent([B[BI)I
    .locals 1
    .parameter "srcMatrixBuffer"
    .parameter "encMatrix"
    .parameter "length"

    .prologue
    .line 964
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->safeContent([B[BIZ)I

    move-result v0

    return v0
.end method

.method private static multiMatrix([B[[B[BIIII)V
    .locals 5
    .parameter "aMatrix"
    .parameter "bMatrix"
    .parameter "cMatrix"
    .parameter "aMatrixColumnStart"
    .parameter "aMatrixColumn"
    .parameter "bMatrixColumn"
    .parameter "cMatrixColumnStart"

    .prologue
    .line 1069
    const/4 v1, 0x0

    .line 1070
    .local v1, middle:B
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    if-lt v0, p5, :cond_0

    .line 1077
    return-void

    .line 1071
    :cond_0
    const/4 v2, 0x0

    .local v2, r:I
    :goto_1
    if-lt v2, p4, :cond_1

    .line 1074
    add-int v3, v0, p6

    aput-byte v1, p2, v3

    .line 1075
    const/4 v1, 0x0

    .line 1070
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1072
    :cond_1
    add-int v3, v2, p3

    aget-byte v3, p0, v3

    aget-object v4, p1, v2

    aget-byte v4, v4, v0

    mul-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-byte v1, v3

    .line 1071
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static safeContent([B[BIZ)I
    .locals 9
    .parameter "srcMatrixBuffer"
    .parameter "encDecMatrix"
    .parameter "length"
    .parameter "isEncryption"

    .prologue
    const/16 v0, 0x1000

    const/16 v4, 0x8

    .line 974
    const/4 v1, 0x0

    .line 975
    .local v1, safeMatrix:[[B
    if-eqz p3, :cond_1

    .line 976
    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mEncryptionMatrix:[[B

    .line 980
    :goto_0
    if-ne p2, v0, :cond_3

    .line 981
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/16 v0, 0x200

    if-lt v7, v0, :cond_2

    .line 1001
    .end local v7           #i:I
    :cond_0
    return p2

    .line 978
    :cond_1
    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mDecryptionMatrix:[[B

    goto :goto_0

    .line 983
    .restart local v7       #i:I
    :cond_2
    mul-int/lit8 v3, v7, 0x8

    mul-int/lit8 v6, v7, 0x8

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    .line 982
    invoke-static/range {v0 .. v6}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->multiMatrix([B[[B[BIIII)V

    .line 981
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 986
    .end local v7           #i:I
    :cond_3
    const/4 v8, 0x0

    .line 987
    .local v8, modMAX:I
    if-lez p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 988
    rem-int/lit8 v8, p2, 0x8

    .line 989
    if-eqz v8, :cond_4

    .line 990
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    rsub-int/lit8 v0, v8, 0x8

    if-lt v7, v0, :cond_5

    .line 993
    rsub-int/lit8 v0, v8, 0x8

    add-int/2addr p2, v0

    .line 995
    .end local v7           #i:I
    :cond_4
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    div-int/lit8 v0, p2, 0x8

    if-ge v7, v0, :cond_0

    .line 997
    mul-int/lit8 v3, v7, 0x8

    mul-int/lit8 v6, v7, 0x8

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    .line 996
    invoke-static/range {v0 .. v6}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->multiMatrix([B[[B[BIIII)V

    .line 995
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 991
    :cond_5
    add-int v0, p2, v7

    const/4 v2, 0x0

    aput-byte v2, p0, v0

    .line 990
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method private safeFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16
    .parameter "sourceFile"
    .parameter "targetFile"
    .parameter "isEncryption"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    const/4 v2, 0x0

    .line 1010
    .local v2, safeMatrix:[[B
    if-eqz p3, :cond_2

    .line 1011
    sget-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mEncryptionMatrix:[[B

    .line 1015
    :goto_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v14, sFile:Ljava/io/File;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1017
    new-instance v9, Ljava/io/DataInputStream;

    .line 1018
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1017
    invoke-direct {v9, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1023
    .local v9, dataInputStream:Ljava/io/DataInputStream;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v15, tFile:Ljava/io/File;
    new-instance v10, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1026
    .local v10, dataOutputStream:Ljava/io/DataOutputStream;
    const/4 v13, 0x0

    .line 1027
    .local v13, readCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mSrcMatrixBuffer:[B

    invoke-virtual {v9, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v13

    .line 1028
    :goto_1
    const/16 v1, 0x1000

    if-eq v13, v1, :cond_4

    .line 1036
    const/4 v12, 0x0

    .line 1037
    .local v12, modMAX:I
    const/4 v8, 0x0

    .line 1038
    .local v8, addCount:I
    if-lez v13, :cond_1

    const/16 v1, 0x1000

    if-ge v13, v1, :cond_1

    .line 1039
    rem-int/lit8 v12, v13, 0x8

    .line 1040
    if-eqz v12, :cond_0

    .line 1041
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    rsub-int/lit8 v1, v12, 0x8

    if-lt v11, v1, :cond_6

    .line 1044
    rsub-int/lit8 v8, v12, 0x8

    .line 1046
    .end local v11           #i:I
    :cond_0
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_3
    add-int v1, v13, v8

    div-int/lit8 v1, v1, 0x8

    if-lt v11, v1, :cond_7

    .line 1050
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mEncDecMatrix:[B

    const/4 v3, 0x0

    add-int v4, v13, v8

    invoke-virtual {v10, v1, v3, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1052
    .end local v11           #i:I
    :cond_1
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 1053
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    .line 1054
    return-void

    .line 1013
    .end local v8           #addCount:I
    .end local v9           #dataInputStream:Ljava/io/DataInputStream;
    .end local v10           #dataOutputStream:Ljava/io/DataOutputStream;
    .end local v12           #modMAX:I
    .end local v13           #readCount:I
    .end local v14           #sFile:Ljava/io/File;
    .end local v15           #tFile:Ljava/io/File;
    :cond_2
    sget-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mDecryptionMatrix:[[B

    goto :goto_0

    .line 1020
    .restart local v14       #sFile:Ljava/io/File;
    :cond_3
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " not Found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1029
    .restart local v9       #dataInputStream:Ljava/io/DataInputStream;
    .restart local v10       #dataOutputStream:Ljava/io/DataOutputStream;
    .restart local v13       #readCount:I
    .restart local v15       #tFile:Ljava/io/File;
    :cond_4
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_4
    const/16 v1, 0x200

    if-lt v11, v1, :cond_5

    .line 1033
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mEncDecMatrix:[B

    invoke-virtual {v10, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mSrcMatrixBuffer:[B

    invoke-virtual {v9, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v13

    goto :goto_1

    .line 1030
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mSrcMatrixBuffer:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mEncDecMatrix:[B

    .line 1031
    mul-int/lit8 v4, v11, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    mul-int/lit8 v7, v11, 0x8

    .line 1030
    invoke-static/range {v1 .. v7}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->multiMatrix([B[[B[BIIII)V

    .line 1029
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1042
    .restart local v8       #addCount:I
    .restart local v12       #modMAX:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mSrcMatrixBuffer:[B

    add-int v3, v13, v11

    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 1041
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1047
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mSrcMatrixBuffer:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->mEncDecMatrix:[B

    .line 1048
    mul-int/lit8 v4, v11, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    mul-int/lit8 v7, v11, 0x8

    .line 1047
    invoke-static/range {v1 .. v7}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->multiMatrix([B[[B[BIIII)V

    .line 1046
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method


# virtual methods
.method public decryptionFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceFile"
    .parameter "targetFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1063
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->safeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1064
    return-void
.end method

.method public encryptionFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceFile"
    .parameter "targetFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->safeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1059
    return-void
.end method
