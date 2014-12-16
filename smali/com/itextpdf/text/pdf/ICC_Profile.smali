.class public Lcom/itextpdf/text/pdf/ICC_Profile;
.super Ljava/lang/Object;
.source "ICC_Profile.java"


# static fields
.field private static cstags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected data:[B

.field protected numComponents:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    .line 136
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "XYZ "

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "Lab "

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "Luv "

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "YCbr"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "Yxy "

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "RGB "

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "GRAY"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "HSV "

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "HLS "

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "CMYK"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "CMY "

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "2CLR"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "3CLR"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "4CLR"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "5CLR"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "6CLR"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "7CLR"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "8CLR"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "9CLR"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "ACLR"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "BCLR"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "CCLR"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "DCLR"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "ECLR"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string/jumbo v1, "FCLR"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static GetInstance(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ICC_Profile;
    .locals 6
    .parameter "fname"

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, fs:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1           #fs:Ljava/io/FileInputStream;
    .local v2, fs:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/itextpdf/text/pdf/ICC_Profile;->getInstance(Ljava/io/InputStream;)Lcom/itextpdf/text/pdf/ICC_Profile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 123
    .local v3, icc:Lcom/itextpdf/text/pdf/ICC_Profile;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-object v3

    .line 119
    .end local v2           #fs:Ljava/io/FileInputStream;
    .end local v3           #icc:Lcom/itextpdf/text/pdf/ICC_Profile;
    .restart local v1       #fs:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 120
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    throw v4

    .end local v1           #fs:Ljava/io/FileInputStream;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    .restart local v3       #icc:Lcom/itextpdf/text/pdf/ICC_Profile;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v2           #fs:Ljava/io/FileInputStream;
    .end local v3           #icc:Lcom/itextpdf/text/pdf/ICC_Profile;
    .restart local v1       #fs:Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v1           #fs:Ljava/io/FileInputStream;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fs:Ljava/io/FileInputStream;
    .restart local v1       #fs:Ljava/io/FileInputStream;
    goto :goto_2

    .line 119
    .end local v1           #fs:Ljava/io/FileInputStream;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #fs:Ljava/io/FileInputStream;
    .restart local v1       #fs:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getInstance(Ljava/io/InputStream;)Lcom/itextpdf/text/pdf/ICC_Profile;
    .locals 9
    .parameter "file"

    .prologue
    .line 79
    const/16 v6, 0x80

    :try_start_0
    new-array v1, v6, [B

    .line 80
    .local v1, head:[B
    array-length v5, v1

    .line 81
    .local v5, remain:I
    const/4 v4, 0x0

    .line 82
    .local v4, ptr:I
    :goto_0
    if-lez v5, :cond_1

    .line 83
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 84
    .local v3, n:I
    if-gez v3, :cond_0

    .line 85
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "invalid.icc.profile"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1           #head:[B
    .end local v3           #n:I
    .end local v4           #ptr:I
    .end local v5           #remain:I
    :catch_0
    move-exception v0

    .line 108
    .local v0, ex:Ljava/lang/Exception;
    new-instance v6, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v6, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 86
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #head:[B
    .restart local v3       #n:I
    .restart local v4       #ptr:I
    .restart local v5       #remain:I
    :cond_0
    sub-int/2addr v5, v3

    .line 87
    add-int/2addr v4, v3

    .line 88
    goto :goto_0

    .line 89
    .end local v3           #n:I
    :cond_1
    const/16 v6, 0x24

    :try_start_1
    aget-byte v6, v1, v6

    const/16 v7, 0x61

    if-ne v6, v7, :cond_2

    const/16 v6, 0x25

    aget-byte v6, v1, v6

    const/16 v7, 0x63

    if-ne v6, v7, :cond_2

    const/16 v6, 0x26

    aget-byte v6, v1, v6

    const/16 v7, 0x73

    if-ne v6, v7, :cond_2

    const/16 v6, 0x27

    aget-byte v6, v1, v6

    const/16 v7, 0x70

    if-eq v6, v7, :cond_3

    .line 91
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "invalid.icc.profile"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 92
    :cond_3
    const/4 v6, 0x0

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v5, v6, v7

    .line 94
    new-array v2, v5, [B

    .line 95
    .local v2, icc:[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    array-length v6, v1

    sub-int/2addr v5, v6

    .line 97
    array-length v4, v1

    .line 98
    :goto_1
    if-lez v5, :cond_5

    .line 99
    invoke-virtual {p0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 100
    .restart local v3       #n:I
    if-gez v3, :cond_4

    .line 101
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "invalid.icc.profile"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 102
    :cond_4
    sub-int/2addr v5, v3

    .line 103
    add-int/2addr v4, v3

    .line 104
    goto :goto_1

    .line 105
    .end local v3           #n:I
    :cond_5
    invoke-static {v2}, Lcom/itextpdf/text/pdf/ICC_Profile;->getInstance([B)Lcom/itextpdf/text/pdf/ICC_Profile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    return-object v6
.end method

.method public static getInstance([B)Lcom/itextpdf/text/pdf/ICC_Profile;
    .locals 8
    .parameter "data"

    .prologue
    .line 63
    :try_start_0
    array-length v3, p0

    const/16 v4, 0x80

    if-lt v3, v4, :cond_0

    const/16 v3, 0x24

    aget-byte v3, p0, v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_0

    const/16 v3, 0x25

    aget-byte v3, p0, v3

    const/16 v4, 0x63

    if-ne v3, v4, :cond_0

    const/16 v3, 0x26

    aget-byte v3, p0, v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_0

    const/16 v3, 0x27

    aget-byte v3, p0, v3

    const/16 v4, 0x70

    if-eq v3, v4, :cond_1

    .line 65
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "invalid.icc.profile"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, ex:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 66
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v2, Lcom/itextpdf/text/pdf/ICC_Profile;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/ICC_Profile;-><init>()V

    .line 67
    .local v2, icc:Lcom/itextpdf/text/pdf/ICC_Profile;
    iput-object p0, v2, Lcom/itextpdf/text/pdf/ICC_Profile;->data:[B

    .line 68
    sget-object v3, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/String;

    const/16 v5, 0x10

    const/4 v6, 0x4

    const-string/jumbo v7, "US-ASCII"

    invoke-direct {v4, p0, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 69
    .local v0, cs:Ljava/lang/Integer;
    if-nez v0, :cond_2

    const/4 v3, 0x0

    :goto_0
    iput v3, v2, Lcom/itextpdf/text/pdf/ICC_Profile;->numComponents:I

    .line 70
    return-object v2

    .line 69
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ICC_Profile;->data:[B

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/itextpdf/text/pdf/ICC_Profile;->numComponents:I

    return v0
.end method
