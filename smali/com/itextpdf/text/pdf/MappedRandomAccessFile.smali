.class public Lcom/itextpdf/text/pdf/MappedRandomAccessFile;
.super Ljava/lang/Object;
.source "MappedRandomAccessFile.java"


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private mappedByteBuffer:Ljava/nio/MappedByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    .line 65
    iput-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 77
    const-string/jumbo v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->init(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel$MapMode;)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->init(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel$MapMode;)V

    goto :goto_0
.end method

.method public static clean(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .parameter "buffer"

    .prologue
    .line 196
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    :cond_0
    const/4 v1, 0x0

    .line 217
    :goto_0
    return v1

    .line 199
    :cond_1
    new-instance v1, Lcom/itextpdf/text/pdf/MappedRandomAccessFile$1;

    invoke-direct {v1, p0}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile$1;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 217
    .local v0, b:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method private init(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel$MapMode;)V
    .locals 6
    .parameter "channel"
    .parameter "mapMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 98
    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    .line 99
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    .line 100
    return-void
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

    .line 173
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->clean(Ljava/nio/ByteBuffer;)Z

    .line 174
    iput-object v1, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    .line 175
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 177
    :cond_0
    iput-object v1, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 178
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->close()V

    .line 187
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 188
    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public getFilePointer()J
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public read()I
    .locals 4

    .prologue
    .line 115
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->get()B
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 116
    .local v0, b:B
    and-int/lit16 v2, v0, 0xff

    .line 120
    .end local v0           #b:B
    :goto_0
    return v2

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/nio/BufferUnderflowException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .parameter "bytes"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 132
    iget-object v3, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v2

    .line 133
    .local v2, pos:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v0

    .line 134
    .local v0, limit:I
    if-ne v2, v0, :cond_0

    .line 135
    const/4 v3, -0x1

    .line 141
    :goto_0
    return v3

    .line 136
    :cond_0
    add-int v3, v2, p3

    sub-int v1, v3, p2

    .line 137
    .local v1, newlimit:I
    if-le v1, v0, :cond_1

    .line 138
    sub-int p3, v0, v2

    .line 140
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, p1, p2, p3}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move v3, p3

    .line 141
    goto :goto_0
.end method

.method public seek(J)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    return-void
.end method
