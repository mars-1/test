.class public Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
.super Ljava/lang/Object;
.source "RandomAccessFileOrArray.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field arrayIn:[B

.field arrayInPtr:I

.field back:B

.field filename:Ljava/lang/String;

.field isBack:Z

.field plainRandomAccess:Z

.field rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

.field private startOffset:I

.field trf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V
    .locals 1
    .parameter "file"

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 76
    iput v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    .line 160
    iget-object v0, p1, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    .line 161
    iget-object v0, p1, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    .line 162
    iget v0, p1, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    iput v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    .line 163
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 76
    iput v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    .line 139
    invoke-static {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->InputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    sget-boolean v1, Lcom/itextpdf/text/Document;->plainRandomAccess:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/lang/String;ZZ)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 6
    .parameter "filename"
    .parameter "forceRead"
    .parameter "plainRandomAccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 76
    iput v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    .line 83
    iput-boolean p3, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_4

    .line 86
    const-string/jumbo v4, "file:/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "http://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "https://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "jar:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "wsjar:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    :cond_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 90
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->InputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 126
    .end local v1           #is:Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-void

    .line 94
    .restart local v1       #is:Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    throw v4

    .line 98
    .end local v1           #is:Ljava/io/InputStream;
    :cond_2
    invoke-static {p1}, Lcom/itextpdf/text/pdf/BaseFont;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 99
    .restart local v1       #is:Ljava/io/InputStream;
    if-nez v1, :cond_3

    .line 100
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "1.not.found.as.file.or.resource"

    invoke-static {v5, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    :cond_3
    :try_start_3
    invoke-static {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->InputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_2
    throw v4

    .line 110
    .end local v1           #is:Ljava/io/InputStream;
    :cond_4
    if-eqz p2, :cond_6

    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, s:Ljava/io/InputStream;
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 114
    .end local v2           #s:Ljava/io/InputStream;
    .local v3, s:Ljava/io/InputStream;
    :try_start_7
    invoke-static {v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->InputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 117
    if-eqz v3, :cond_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    .end local v3           #s:Ljava/io/InputStream;
    .restart local v2       #s:Ljava/io/InputStream;
    :catchall_2
    move-exception v4

    :goto_3
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_5
    :goto_4
    throw v4

    .line 121
    .end local v2           #s:Ljava/io/InputStream;
    :cond_6
    iput-object p1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    .line 122
    if-eqz p3, :cond_7

    .line 123
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 125
    :cond_7
    new-instance v4, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, p1, v5}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    goto :goto_0

    .line 94
    .restart local v1       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_1

    .line 106
    :catch_4
    move-exception v5

    goto :goto_2

    .line 117
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #s:Ljava/io/InputStream;
    :catch_5
    move-exception v5

    goto :goto_4

    .end local v2           #s:Ljava/io/InputStream;
    .restart local v3       #s:Ljava/io/InputStream;
    :catchall_3
    move-exception v4

    move-object v2, v3

    .end local v3           #s:Ljava/io/InputStream;
    .restart local v2       #s:Ljava/io/InputStream;
    goto :goto_3
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 76
    iput v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    .line 129
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 131
    .local v0, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->InputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :goto_0
    return-void

    .line 134
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "arrayIn"

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 76
    iput v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    .line 156
    iput-object p1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    .line 157
    return-void
.end method

.method public static InputStreamToArray(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 144
    .local v0, b:[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 146
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 147
    .local v2, read:I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 151
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 152
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 149
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 290
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->close()V

    .line 292
    iput-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 300
    iput-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    goto :goto_0
.end method

.method public getFilePointer()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->insureOpen()V

    .line 333
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 334
    .local v0, n:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    if-nez v1, :cond_2

    .line 335
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    :goto_1
    long-to-int v1, v1

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    sub-int/2addr v1, v2

    .line 338
    :goto_2
    return v1

    .line 333
    .end local v0           #n:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    .restart local v0       #n:I
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->getFilePointer()J

    move-result-wide v1

    goto :goto_1

    .line 338
    :cond_2
    iget v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:I

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    sub-int/2addr v1, v2

    goto :goto_2
.end method

.method public getNioByteBuffer()Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 635
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 639
    .local v0, channel:Ljava/nio/channels/FileChannel;
    :goto_0
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    .line 641
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    :goto_1
    return-object v1

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    goto :goto_0

    .line 641
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_1
.end method

.method public getStartOffset()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    return v0
.end method

.method protected insureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 282
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    if-nez v0, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->insureOpen()V

    .line 307
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    :goto_0
    long-to-int v0, v0

    iget v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    sub-int/2addr v0, v1

    .line 310
    :goto_1
    return v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->length()J

    move-result-wide v0

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    array-length v0, v0

    iget v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method public pushBack(B)V
    .locals 1
    .parameter "b"

    .prologue
    .line 167
    iput-byte p1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->back:B

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 169
    return-void
.end method

.method public reOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 270
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v0, :cond_1

    .line 271
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    .line 275
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 276
    return-void

    .line 273
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    goto :goto_0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 174
    iget-byte v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->back:B

    and-int/lit16 v0, v0, 0xff

    .line 181
    :goto_0
    return v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    if-nez v0, :cond_2

    .line 177
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->read()I

    move-result v0

    goto :goto_0

    .line 179
    :cond_2
    iget v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 180
    const/4 v0, -0x1

    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    iget v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    if-nez p3, :cond_0

    .line 211
    :goto_0
    return v2

    .line 188
    :cond_0
    const/4 v0, 0x0

    .line 189
    .local v0, n:I
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    if-eqz v4, :cond_2

    .line 190
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 191
    if-ne p3, v3, :cond_1

    .line 192
    iget-byte v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->back:B

    aput-byte v2, p1, p2

    move v2, v3

    .line 193
    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x1

    .line 197
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, off:I
    iget-byte v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->back:B

    aput-byte v2, p1, p2

    .line 198
    add-int/lit8 p3, p3, -0x1

    move p2, v1

    .line 201
    .end local v1           #off:I
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    if-nez v2, :cond_4

    .line 202
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    invoke-virtual {v2, p1, p2, p3}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->read([BII)I

    move-result v2

    goto :goto_1

    .line 205
    :cond_4
    iget v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:I

    iget-object v3, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    array-length v3, v3

    if-lt v2, v3, :cond_5

    .line 206
    const/4 v2, -0x1

    goto :goto_0

    .line 207
    :cond_5
    iget v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:I

    add-int/2addr v2, p3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    array-length v3, v3

    if-le v2, v3, :cond_6

    .line 208
    iget-object v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    array-length v2, v2

    iget v3, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:I

    sub-int p3, v2, v3

    .line 209
    :cond_6
    iget-object v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    iget v3, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:I

    invoke-static {v2, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:I

    .line 211
    add-int v2, p3, v0

    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 343
    .local v0, ch:I
    if-gez v0, :cond_0

    .line 344
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 345
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 350
    .local v0, ch:I
    if-gez v0, :cond_0

    .line 351
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 352
    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 438
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 439
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 440
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 441
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-char v2, v2

    return v2
.end method

.method public final readCharLE()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 466
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 467
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 468
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 469
    :cond_0
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v3, v0, 0x0

    add-int/2addr v2, v3

    int-to-char v2, v2

    return v2
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleLE()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readLongLE()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFloatLE()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([BII)V

    .line 221
    return-void
.end method

.method public readFully([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 226
    .local v1, n:I
    :cond_0
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read([BII)I

    move-result v0

    .line 227
    .local v0, count:I
    if-gez v0, :cond_1

    .line 228
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 229
    :cond_1
    add-int/2addr v1, v0

    .line 230
    if-lt v1, p3, :cond_0

    .line 231
    return-void
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 474
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 475
    .local v1, ch2:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v2

    .line 476
    .local v2, ch3:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v3

    .line 477
    .local v3, ch4:I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    .line 478
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 479
    :cond_0
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    return v4
.end method

.method public final readIntLE()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 505
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 506
    .local v1, ch2:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v2

    .line 507
    .local v2, ch3:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v3

    .line 508
    .local v3, ch4:I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    .line 509
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 510
    :cond_0
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v0, 0x0

    add-int/2addr v4, v5

    return v4
.end method

.method public readLine()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 581
    .local v3, input:Ljava/lang/StringBuffer;
    const/4 v0, -0x1

    .line 582
    .local v0, c:I
    const/4 v2, 0x0

    .line 584
    .local v2, eol:Z
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 585
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 598
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 588
    :sswitch_0
    const/4 v2, 0x1

    .line 589
    goto :goto_0

    .line 591
    :sswitch_1
    const/4 v2, 0x1

    .line 592
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()I

    move-result v1

    .line 593
    .local v1, cur:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 594
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    goto :goto_0

    .line 603
    .end local v1           #cur:I
    :cond_1
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 604
    const/4 v4, 0x0

    .line 606
    :goto_1
    return-object v4

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 585
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final readLongLE()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    .line 559
    .local v0, i1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v1

    .line 560
    .local v1, i2:I
    int-to-long v2, v1

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 364
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 365
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 366
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 367
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-short v2, v2

    return v2
.end method

.method public final readShortLE()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 393
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 394
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 395
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 396
    :cond_0
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v3, v0, 0x0

    add-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 357
    .local v0, ch:I
    if-gez v0, :cond_0

    .line 358
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 359
    :cond_0
    return v0
.end method

.method public final readUnsignedInt()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v0, v8

    .line 535
    .local v0, ch1:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v2, v8

    .line 536
    .local v2, ch2:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v4, v8

    .line 537
    .local v4, ch3:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v6, v8

    .line 538
    .local v6, ch4:J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 539
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 540
    :cond_0
    const/16 v8, 0x18

    shl-long v8, v0, v8

    const/16 v10, 0x10

    shl-long v10, v2, v10

    add-long/2addr v8, v10

    const/16 v10, 0x8

    shl-long v10, v4, v10

    add-long/2addr v8, v10

    const/4 v10, 0x0

    shl-long v10, v6, v10

    add-long/2addr v8, v10

    return-wide v8
.end method

.method public final readUnsignedIntLE()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v0, v8

    .line 545
    .local v0, ch1:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v2, v8

    .line 546
    .local v2, ch2:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v4, v8

    .line 547
    .local v4, ch3:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v6, v8

    .line 548
    .local v6, ch4:J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 549
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 550
    :cond_0
    const/16 v8, 0x18

    shl-long v8, v6, v8

    const/16 v10, 0x10

    shl-long v10, v4, v10

    add-long/2addr v8, v10

    const/16 v10, 0x8

    shl-long v10, v2, v10

    add-long/2addr v8, v10

    const/4 v10, 0x0

    shl-long v10, v0, v10

    add-long/2addr v8, v10

    return-wide v8
.end method

.method public readUnsignedShort()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 401
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 402
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 403
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 404
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    return v2
.end method

.method public final readUnsignedShortLE()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 430
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 431
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 432
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 433
    :cond_0
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v3, v0, 0x0

    add-int/2addr v2, v3

    return v2
.end method

.method public seek(I)V
    .locals 3
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    add-int/2addr p1, v0

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 316
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    if-nez v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->insureOpen()V

    .line 318
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 325
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->seek(J)V

    goto :goto_0

    .line 324
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:I

    goto :goto_0
.end method

.method public seek(J)V
    .locals 1
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 329
    return-void
.end method

.method public setStartOffset(I)V
    .locals 0
    .parameter "startOffset"

    .prologue
    .line 626
    iput p1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:I

    .line 627
    return-void
.end method

.method public skip(J)J
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public skipBytes(I)I
    .locals 7
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    if-gtz p1, :cond_0

    .line 265
    :goto_0
    return v4

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 242
    .local v0, adj:I
    iget-boolean v6, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    if-eqz v6, :cond_2

    .line 243
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 244
    if-ne p1, v5, :cond_1

    move v4, v5

    .line 245
    goto :goto_0

    .line 248
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 249
    const/4 v0, 0x1

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()I

    move-result v3

    .line 257
    .local v3, pos:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()I

    move-result v1

    .line 258
    .local v1, len:I
    add-int v2, v3, p1

    .line 259
    .local v2, newpos:I
    if-le v2, v1, :cond_3

    .line 260
    move v2, v1

    .line 262
    :cond_3
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 265
    sub-int v4, v2, v3

    add-int/2addr v4, v0

    goto :goto_0
.end method
