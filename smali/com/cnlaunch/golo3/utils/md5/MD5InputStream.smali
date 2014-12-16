.class public Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;
.super Ljava/io/FilterInputStream;
.source "MD5InputStream.java"


# instance fields
.field private md5:Lcom/cnlaunch/golo3/utils/md5/MD5;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    new-instance v0, Lcom/cnlaunch/golo3/utils/md5/MD5;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/utils/md5/MD5;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;->md5:Lcom/cnlaunch/golo3/utils/md5/MD5;

    .line 58
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .parameter "arg"

    .prologue
    const/4 v11, -0x1

    .line 123
    :try_start_0
    array-length v9, p0

    add-int/lit8 v9, v9, -0x1

    aget-object v3, p0, v9

    .line 124
    .local v3, filename:Ljava/lang/String;
    const/4 v7, 0x0

    .line 125
    .local v7, use_default_md5:Z
    const/4 v8, 0x1

    .line 126
    .local v8, use_native_lib:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v9, p0

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_0

    .line 136
    const/high16 v9, 0x1

    new-array v0, v9, [B

    .line 141
    .local v0, buf:[B
    if-eqz v7, :cond_4

    .line 142
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 143
    .local v5, in:Ljava/io/InputStream;
    const-string/jumbo v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 144
    .local v1, digest:Ljava/security/MessageDigest;
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, num_read:I
    if-ne v6, v11, :cond_3

    .line 147
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    invoke-static {v11}, Lcom/cnlaunch/golo3/utils/md5/MD5;->asHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 170
    .end local v0           #buf:[B
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v3           #filename:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/InputStream;
    .end local v6           #num_read:I
    .end local v7           #use_default_md5:Z
    .end local v8           #use_native_lib:Z
    :goto_2
    return-void

    .line 127
    .restart local v3       #filename:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v7       #use_default_md5:Z
    .restart local v8       #use_native_lib:Z
    :cond_0
    aget-object v9, p0, v4

    const-string/jumbo v10, "--use-default-md5"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 128
    const/4 v7, 0x1

    .line 126
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    :cond_2
    aget-object v9, p0, v4

    const-string/jumbo v10, "--no-native-lib"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 130
    const/4 v8, 0x0

    goto :goto_3

    .line 145
    .restart local v0       #buf:[B
    .restart local v1       #digest:Ljava/security/MessageDigest;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v6       #num_read:I
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 167
    .end local v0           #buf:[B
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v3           #filename:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/InputStream;
    .end local v6           #num_read:I
    .end local v7           #use_default_md5:Z
    .end local v8           #use_native_lib:Z
    :catch_0
    move-exception v2

    .line 168
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 156
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #buf:[B
    .restart local v3       #filename:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v7       #use_default_md5:Z
    .restart local v8       #use_native_lib:Z
    :cond_4
    if-nez v8, :cond_5

    .line 157
    const/4 v9, 0x1

    :try_start_1
    invoke-static {v9}, Lcom/cnlaunch/golo3/utils/md5/MD5;->initNativeLibrary(Z)V

    .line 162
    :cond_5
    new-instance v5, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;-><init>(Ljava/io/InputStream;)V

    .line 163
    .local v5, in:Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;
    :cond_6
    invoke-virtual {v5, v0}, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;->read([B)I

    move-result v6

    .restart local v6       #num_read:I
    if-ne v6, v11, :cond_6

    .line 164
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;->hash()[B

    move-result-object v11

    invoke-static {v11}, Lcom/cnlaunch/golo3/utils/md5/MD5;->asHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v5}, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public getMD5()Lcom/cnlaunch/golo3/utils/md5/MD5;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;->md5:Lcom/cnlaunch/golo3/utils/md5/MD5;

    return-object v0
.end method

.method public hash()[B
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;->md5:Lcom/cnlaunch/golo3/utils/md5/MD5;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Final()[B

    move-result-object v0

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 65
    iget-object v2, p0, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 67
    .local v0, c:I
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 76
    .end local v0           #c:I
    :goto_0
    return v0

    .line 70
    .restart local v0       #c:I
    :cond_0
    and-int/lit16 v1, v0, -0x100

    if-eqz v1, :cond_1

    .line 71
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "MD5InputStream.read() got character with (c & ~0xff) != 0)!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;->md5:Lcom/cnlaunch/golo3/utils/md5/MD5;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update(I)V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v1, p0, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, r:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;->md5:Lcom/cnlaunch/golo3/utils/md5/MD5;

    invoke-virtual {v1, p1, p2, v0}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update([BII)V

    goto :goto_0
.end method
