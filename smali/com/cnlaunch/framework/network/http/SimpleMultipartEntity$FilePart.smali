.class Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;
.super Ljava/lang/Object;
.source "SimpleMultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePart"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public header:[B

.field final synthetic this$0:Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "key"
    .parameter "file"
    .parameter "type"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->header:[B

    .line 174
    iput-object p3, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    .line 175
    return-void
.end method

.method private createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .parameter "key"
    .parameter "filename"
    .parameter "type"

    .prologue
    .line 178
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    .local v1, headerStream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;

    #getter for: Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->boundaryLine:[B
    invoke-static {v2}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->access$0(Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 183
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;

    #calls: Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B
    invoke-static {v2, p1, p2}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->access$1(Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 184
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;

    #calls: Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B
    invoke-static {v2, p3}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->access$2(Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 185
    invoke-static {}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->access$3()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 186
    invoke-static {}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->access$4()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 187
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v2, "SimpleMultipartEntity"

    const-string/jumbo v3, "createHeader ByteArrayOutputStream exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getTotalLength()J
    .locals 4

    .prologue
    .line 195
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 196
    .local v0, streamLength:J
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->header:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->header:[B

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 201
    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;

    iget-object v5, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->header:[B

    array-length v5, v5

    #calls: Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->updateProgress(I)V
    invoke-static {v4, v5}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->access$5(Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;I)V

    .line 203
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 204
    .local v1, inputStream:Ljava/io/FileInputStream;
    const/16 v4, 0x1000

    new-array v3, v4, [B

    .line 206
    .local v3, tmp:[B
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, l:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 210
    invoke-static {}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->access$4()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 211
    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;

    invoke-static {}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->access$4()[B

    move-result-object v5

    array-length v5, v5

    #calls: Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->updateProgress(I)V
    invoke-static {v4, v5}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->access$5(Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;I)V

    .line 212
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 214
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    return-void

    .line 207
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 208
    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;

    #calls: Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->updateProgress(I)V
    invoke-static {v4, v2}, Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;->access$5(Lcom/cnlaunch/framework/network/http/SimpleMultipartEntity;I)V

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v4, "SimpleMultipartEntity"

    const-string/jumbo v5, "Cannot close input stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
