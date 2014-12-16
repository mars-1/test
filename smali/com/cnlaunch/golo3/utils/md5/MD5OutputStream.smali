.class public Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;
.super Ljava/io/FilterOutputStream;
.source "MD5OutputStream.java"


# instance fields
.field private md5:Lcom/cnlaunch/golo3/utils/md5/MD5;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    new-instance v0, Lcom/cnlaunch/golo3/utils/md5/MD5;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/utils/md5/MD5;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;->md5:Lcom/cnlaunch/golo3/utils/md5/MD5;

    .line 59
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .parameter "arg"

    .prologue
    .line 103
    :try_start_0
    new-instance v4, Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;

    new-instance v7, Lcom/cnlaunch/golo3/utils/md5/NullOutputStream;

    invoke-direct {v7}, Lcom/cnlaunch/golo3/utils/md5/NullOutputStream;-><init>()V

    invoke-direct {v4, v7}, Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    .local v4, out:Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    const/4 v8, 0x0

    aget-object v8, p0, v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 105
    .local v2, in:Ljava/io/InputStream;
    const/high16 v7, 0x1

    new-array v0, v7, [B

    .line 107
    .local v0, buf:[B
    const-wide/16 v5, 0x0

    .line 108
    .local v5, total_read:J
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, num_read:I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_0

    .line 112
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;->hash()[B

    move-result-object v9

    invoke-static {v9}, Lcom/cnlaunch/golo3/utils/md5/MD5;->asHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 114
    invoke-virtual {v4}, Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;->close()V

    .line 118
    .end local v0           #buf:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #num_read:I
    .end local v4           #out:Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;
    .end local v5           #total_read:J
    :goto_1
    return-void

    .line 109
    .restart local v0       #buf:[B
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v3       #num_read:I
    .restart local v4       #out:Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;
    .restart local v5       #total_read:J
    :cond_0
    int-to-long v7, v3

    add-long/2addr v5, v7

    .line 110
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v3}, Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v0           #buf:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #num_read:I
    .end local v4           #out:Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;
    .end local v5           #total_read:J
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getMD5()Lcom/cnlaunch/golo3/utils/md5/MD5;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;->md5:Lcom/cnlaunch/golo3/utils/md5/MD5;

    return-object v0
.end method

.method public hash()[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;->md5:Lcom/cnlaunch/golo3/utils/md5/MD5;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Final()[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;->md5:Lcom/cnlaunch/golo3/utils/md5/MD5;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update(B)V

    .line 70
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 80
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5OutputStream;->md5:Lcom/cnlaunch/golo3/utils/md5/MD5;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update([BII)V

    .line 81
    return-void
.end method
