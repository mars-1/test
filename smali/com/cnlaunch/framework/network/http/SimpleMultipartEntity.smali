.class Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;
.super Ljava/lang/Object;
.source "SimpleMultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;
    }
.end annotation


# static fields
.field private static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final CR_LF:[B = null

.field private static final LOG_TAG:Ljava/lang/String; = "SimpleMultipartEntity"

.field private static final MULTIPART_CHARS:[C

.field private static final TRANSFER_ENCODING_BINARY:[B


# instance fields
.field private boundary:Ljava/lang/String;

.field private boundaryEnd:[B

.field private boundaryLine:[B

.field private bytesWritten:I

.field private fileParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;",
            ">;"
        }
    .end annotation
.end field

.field private isRepeatable:Z

.field private out:Ljava/io/ByteArrayOutputStream;

.field private progressHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

.field private totalSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->CR_LF:[B

    .line 51
    const-string/jumbo v0, "Content-Transfer-Encoding: binary\r\n"

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 51
    sput-object v0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    .line 54
    const-string/jumbo v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    return-void
.end method

.method public constructor <init>(Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)V
    .locals 5
    .parameter "progressHandler"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->isRepeatable:Z

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    .line 65
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, buf:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 76
    .local v2, rand:Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x1e

    if-lt v1, v3, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->boundaryLine:[B

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "--\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->boundaryEnd:[B

    .line 84
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->progressHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    .line 85
    return-void

    .line 77
    :cond_0
    sget-object v3, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    sget-object v4, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;)[B
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->boundaryLine:[B

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;Ljava/lang/String;)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3()[B
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    return-object v0
.end method

.method static synthetic access$4()[B
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->CR_LF:[B

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->updateProgress(I)V

    return-void
.end method

.method private createContentDisposition(Ljava/lang/String;)[B
    .locals 2
    .parameter "key"

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 152
    return-object v0
.end method

.method private createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .parameter "key"
    .parameter "fileName"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 157
    return-object v0
.end method

.method private createContentType(Ljava/lang/String;)[B
    .locals 3
    .parameter "type"

    .prologue
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Content-Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, result:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private updateProgress(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 162
    iget v0, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->bytesWritten:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->bytesWritten:I

    .line 163
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->progressHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->progressHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    iget v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->bytesWritten:I

    iget v2, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->totalSize:I

    invoke-interface {v0, v1, v2}, Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;->sendProgressMessage(II)V

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .parameter "key"
    .parameter "file"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "file"
    .parameter "type"

    .prologue
    .line 110
    if-nez p3, :cond_0

    .line 111
    const-string/jumbo p3, "application/octet-stream"

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    new-instance v1, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;-><init>(Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 102
    const-string/jumbo v0, "text/plain; charset=UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "streamName"
    .parameter "inputStream"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p4, :cond_0

    .line 119
    const-string/jumbo p4, "application/octet-stream"

    .line 121
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->boundaryLine:[B

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 124
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 125
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p4}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 126
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v4, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 127
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v4, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 130
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 132
    .local v2, tmp:[B
    :goto_0
    invoke-virtual {p3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, l:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v4, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 139
    :try_start_0
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_1
    return-void

    .line 133
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v3, "SimpleMultipartEntity"

    const-string/jumbo v4, "Cannot close input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "contentType"

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->boundaryLine:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 90
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 91
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p3}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 92
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v2, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 93
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 94
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v2, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v1, "SimpleMultipartEntity"

    const-string/jumbo v2, "addPart ByteArrayOutputStream exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 285
    const-string/jumbo v1, "Streaming entity does not implement #consumeContent()"

    .line 284
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 292
    const-string/jumbo v1, "getContent() is not supported. Use writeTo() instead."

    .line 291
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 8

    .prologue
    .line 226
    iget-object v5, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    int-to-long v0, v5

    .line 227
    .local v0, contentLen:J
    iget-object v5, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 234
    iget-object v5, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->boundaryEnd:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    move-wide v5, v0

    .line 235
    :goto_1
    return-wide v5

    .line 227
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;

    .line 228
    .local v2, filePart:Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->getTotalLength()J

    move-result-wide v3

    .line 229
    .local v3, len:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gez v6, :cond_1

    .line 230
    const-wide/16 v5, -0x1

    goto :goto_1

    .line 232
    :cond_1
    add-long/2addr v0, v3

    goto :goto_0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    .prologue
    .line 240
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "multipart/form-data; boundary="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->isRepeatable:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public setIsRepeatable(Z)V
    .locals 0
    .parameter "isRepeatable"

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->isRepeatable:Z

    .line 250
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v1, 0x0

    iput v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->bytesWritten:I

    .line 265
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->getContentLength()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->totalSize:I

    .line 266
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 267
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->updateProgress(I)V

    .line 269
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->boundaryEnd:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 273
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->boundaryEnd:[B

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->updateProgress(I)V

    .line 274
    return-void

    .line 269
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;

    .line 270
    .local v0, filePart:Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;
    invoke-virtual {v0, p1}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0
.end method
