.class final Lcom/kenai/jbosh/GZIPCodec;
.super Ljava/lang/Object;
.source "GZIPCodec.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x200


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static decode([B)[B
    .locals 7
    .parameter "compressed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 85
    .local v1, byteIn:Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local v2, byteOut:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 88
    .local v3, gzIn:Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v3           #gzIn:Ljava/util/zip/GZIPInputStream;
    .local v4, gzIn:Ljava/util/zip/GZIPInputStream;
    const/16 v6, 0x200

    :try_start_1
    new-array v0, v6, [B

    .line 92
    .local v0, buffer:[B
    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    .line 93
    .local v5, read:I
    if-lez v5, :cond_1

    .line 94
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 91
    :cond_1
    if-gez v5, :cond_0

    .line 97
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 99
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 100
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 97
    return-object v6

    .line 98
    .end local v0           #buffer:[B
    .end local v4           #gzIn:Ljava/util/zip/GZIPInputStream;
    .end local v5           #read:I
    .restart local v3       #gzIn:Ljava/util/zip/GZIPInputStream;
    :catchall_0
    move-exception v6

    .line 99
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 100
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 101
    throw v6

    .line 98
    .end local v3           #gzIn:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #gzIn:Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #gzIn:Ljava/util/zip/GZIPInputStream;
    .restart local v3       #gzIn:Ljava/util/zip/GZIPInputStream;
    goto :goto_0
.end method

.method public static encode([B)[B
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    .local v0, byteOut:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 65
    .local v1, gzOut:Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v1           #gzOut:Ljava/util/zip/GZIPOutputStream;
    .local v2, gzOut:Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 67
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 68
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 71
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 69
    return-object v3

    .line 70
    .end local v2           #gzOut:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #gzOut:Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v3

    .line 71
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 73
    throw v3

    .line 70
    .end local v1           #gzOut:Ljava/util/zip/GZIPOutputStream;
    .restart local v2       #gzOut:Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #gzOut:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #gzOut:Ljava/util/zip/GZIPOutputStream;
    goto :goto_0
.end method

.method public static getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "gzip"

    return-object v0
.end method