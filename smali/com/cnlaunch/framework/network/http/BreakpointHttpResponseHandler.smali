.class public Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
.super Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;
.source "BreakpointHttpResponseHandler.java"


# static fields
.field private static final TEMP_SUFFIX:Ljava/lang/String; = ".download"


# instance fields
.field private context:Landroid/content/Context;

.field private downloadSize:J

.field private enable_breakpoint:Z

.field private fileName:Ljava/lang/String;

.field private fileSize:J

.field private interrupt:Z

.field private params:Lcom/cnlaunch/framework/network/http/RequestParams;

.field private previousFileSize:J

.field private randomAccessFile:Ljava/io/RandomAccessFile;

.field private final tag:Ljava/lang/String;

.field private targetFile:Ljava/io/File;

.field private tempFile:Ljava/io/File;

.field private totalSize:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/framework/network/download/DownloadParam;)V
    .locals 4
    .parameter "downloadParam"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;-><init>()V

    .line 38
    const-class v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tag:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->interrupt:Z

    .line 68
    iput-boolean v1, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->enable_breakpoint:Z

    .line 74
    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/download/DownloadParam;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->context:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->url:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/download/DownloadParam;->getParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 77
    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/download/DownloadParam;->getFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileSize:J

    .line 78
    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/download/DownloadParam;->getEnableBreakpoint()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->enable_breakpoint:Z

    .line 80
    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/download/DownloadParam;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileName:Ljava/lang/String;

    .line 86
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/download/DownloadParam;->getDownPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->targetFile:Ljava/io/File;

    .line 87
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/download/DownloadParam;->getDownPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ".download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tempFile:Ljava/io/File;

    .line 88
    return-void

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/download/DownloadParam;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getEnableBreakpoint()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->enable_breakpoint:Z

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/cnlaunch/framework/utils/MD5Utils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, fileName:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    const-string/jumbo v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 99
    const-string/jumbo v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 100
    .local v1, index:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .end local v1           #index:I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getParams()Lcom/cnlaunch/framework/network/http/RequestParams;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    return-object v0
.end method

.method public getPreviousFileSize()J
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->previousFileSize:J

    return-wide v0
.end method

.method public getTargetFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->targetFile:Ljava/io/File;

    return-object v0
.end method

.method public getTempFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isInterrupt()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->interrupt:Z

    return v0
.end method

.method public onFailure(ILjava/lang/Throwable;Ljava/io/File;)V
    .locals 0
    .parameter "statusCode"
    .parameter "e"
    .parameter "response"

    .prologue
    .line 124
    invoke-virtual {p0, p2, p3}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/io/File;)V

    .line 125
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "e"
    .parameter "response"

    .prologue
    .line 128
    invoke-virtual {p0, p1, p3, p4}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->onFailure(ILjava/lang/Throwable;Ljava/io/File;)V

    .line 129
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "error"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 134
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 0
    .parameter "e"
    .parameter "response"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method

.method public onSuccess(ILjava/io/File;)V
    .locals 0
    .parameter "statusCode"
    .parameter "file"

    .prologue
    .line 111
    invoke-virtual {p0, p2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->onSuccess(Ljava/io/File;)V

    .line 112
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "file"

    .prologue
    .line 115
    invoke-virtual {p0, p1, p3}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->onSuccess(ILjava/io/File;)V

    .line 116
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V

    .line 139
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 108
    return-void
.end method

.method public sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 33
    .parameter "response"

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v25

    if-nez v25, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->interrupt:Z

    move/from16 v25, v0

    if-nez v25, :cond_3

    .line 146
    const/4 v12, 0x0

    .line 147
    .local v12, error:Ljava/lang/Throwable;
    const/4 v15, 0x0

    .line 148
    .local v15, instream:Ljava/io/InputStream;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    .line 149
    .local v19, status:Lorg/apache/http/StatusLine;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 150
    .local v11, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v14

    .line 152
    .local v14, headers:[Lorg/apache/http/Header;
    array-length v0, v14

    move/from16 v26, v0

    const/16 v25, 0x0

    :goto_0
    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    .line 171
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "download fileName: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    if-nez v11, :cond_7

    .line 173
    new-instance v25, Ljava/io/IOException;

    const-string/jumbo v26, "Fail download. entity is null."

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 245
    :catch_0
    move-exception v10

    .line 246
    .local v10, e:Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    move-object v12, v10

    .line 256
    if-eqz v15, :cond_0

    :try_start_2
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 257
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 265
    .end local v10           #e:Ljava/lang/IllegalStateException;
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v25

    if-nez v25, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->interrupt:Z

    move/from16 v25, v0

    if-nez v25, :cond_3

    .line 266
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    const/16 v26, 0x12c

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    if-eqz v12, :cond_17

    .line 267
    :cond_2
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v26

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 280
    .end local v11           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #error:Ljava/lang/Throwable;
    .end local v14           #headers:[Lorg/apache/http/Header;
    .end local v15           #instream:Ljava/io/InputStream;
    .end local v19           #status:Lorg/apache/http/StatusLine;
    :cond_3
    :goto_2
    return-void

    .line 152
    .restart local v11       #entity:Lorg/apache/http/HttpEntity;
    .restart local v12       #error:Ljava/lang/Throwable;
    .restart local v14       #headers:[Lorg/apache/http/Header;
    .restart local v15       #instream:Ljava/io/InputStream;
    .restart local v19       #status:Lorg/apache/http/StatusLine;
    :cond_4
    aget-object v13, v14, v25

    .line 153
    .local v13, header:Lorg/apache/http/Header;
    invoke-interface {v13}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "code"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "-1"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 154
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v26

    const-string/jumbo v27, "Token is invalid!"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    .line 155
    new-instance v28, Lorg/apache/http/client/HttpResponseException;

    const/16 v29, -0x1

    const-string/jumbo v30, "Token is invalid!"

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "Token is invalid!"

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 159
    :cond_5
    invoke-interface {v13}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "Content-Type"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 160
    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v24

    .line 161
    .local v24, value:Ljava/lang/String;
    const-string/jumbo v27, "text/html"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 162
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v26

    const-string/jumbo v27, "Content-Type: text/html"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    .line 163
    new-instance v28, Lorg/apache/http/client/HttpResponseException;

    const/16 v29, -0x2

    const-string/jumbo v30, "Content-Type is not right! Content-Type: text/html"

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "Content-Type is not right! Content-Type: text/html"

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 152
    .end local v24           #value:Ljava/lang/String;
    :cond_6
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 177
    .end local v13           #header:Lorg/apache/http/Header;
    :cond_7
    :try_start_3
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    .line 178
    .local v6, contentLength:J
    const-wide/16 v25, 0x0

    cmp-long v25, v6, v25

    if-gtz v25, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileSize:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-lez v25, :cond_a

    .line 180
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileSize:J

    .line 187
    :cond_8
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 188
    if-nez v15, :cond_c

    .line 189
    new-instance v25, Ljava/io/IOException;

    const-string/jumbo v26, "Fail download. instream is null."

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 248
    .end local v6           #contentLength:J
    :catch_1
    move-exception v10

    .line 249
    .local v10, e:Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 250
    move-object v12, v10

    .line 256
    if-eqz v15, :cond_9

    :try_start_5
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 257
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 258
    :catch_2
    move-exception v10

    .line 259
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    move-object v12, v10

    goto/16 :goto_1

    .line 182
    .end local v10           #e:Ljava/io/IOException;
    .restart local v6       #contentLength:J
    :cond_a
    :try_start_6
    new-instance v25, Ljava/io/IOException;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "Fail download. contentLength = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 251
    .end local v6           #contentLength:J
    :catch_3
    move-exception v10

    .line 252
    .restart local v10       #e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 253
    move-object v12, v10

    .line 256
    if-eqz v15, :cond_b

    :try_start_8
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 257
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    .line 258
    :catch_4
    move-exception v10

    .line 259
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    move-object v12, v10

    goto/16 :goto_1

    .line 192
    .end local v10           #e:Ljava/io/IOException;
    .restart local v6       #contentLength:J
    :cond_c
    :try_start_9
    new-instance v25, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tempFile:Ljava/io/File;

    move-object/from16 v26, v0

    const-string/jumbo v27, "rw"

    invoke-direct/range {v25 .. v27}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 194
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->enable_breakpoint:Z

    move/from16 v25, v0

    if-eqz v25, :cond_11

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tempFile:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tempFile:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->previousFileSize:J

    .line 203
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->previousFileSize:J

    move-wide/from16 v25, v0

    add-long v25, v25, v6

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->totalSize:J

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v29, ", previousFileSize: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->previousFileSize:J

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 206
    const-string/jumbo v29, ", contentLength: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 207
    const-string/jumbo v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 205
    invoke-static/range {v25 .. v26}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    const/16 v16, 0x0

    .line 209
    .local v16, length:I
    const-wide/16 v8, 0x0

    .line 210
    .local v8, count:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->previousFileSize:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->downloadSize:J

    .line 211
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->downloadSize:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->totalSize:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->sendProgressMessage(II)V

    .line 212
    const/16 v25, 0x1000

    move/from16 v0, v25

    new-array v5, v0, [B

    .line 213
    .local v5, buffer:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 214
    .local v20, time:J
    const-wide/16 v22, 0x0

    .line 215
    .local v22, totalTime:J
    const-wide/16 v17, 0x0

    .line 216
    .local v17, rate:J
    :goto_4
    invoke-virtual {v15, v5}, Ljava/io/InputStream;->read([B)I

    move-result v16

    const/16 v25, -0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v25

    if-nez v25, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->interrupt:Z

    move/from16 v25, v0

    if-eqz v25, :cond_12

    .line 233
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v29, ", Finished. Rate: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "KB/S"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 234
    const-string/jumbo v29, ". Elapsed time:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-wide/16 v29, 0x3e8

    div-long v29, v22, v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "S"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 233
    invoke-static/range {v25 .. v26}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "contentLength: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", count: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 235
    invoke-static/range {v25 .. v26}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v25

    if-nez v25, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->interrupt:Z

    move/from16 v25, v0

    if-nez v25, :cond_15

    .line 240
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->downloadSize:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->totalSize:J

    move-wide/from16 v27, v0

    cmp-long v25, v25, v27

    if-eqz v25, :cond_15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->totalSize:J

    move-wide/from16 v25, v0

    const-wide/16 v27, -0x1

    cmp-long v25, v25, v27

    if-eqz v25, :cond_15

    .line 241
    new-instance v25, Ljava/io/IOException;

    const-string/jumbo v26, "Fail download. totalSize not eq downloadSize."

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 254
    .end local v5           #buffer:[B
    .end local v6           #contentLength:J
    .end local v8           #count:J
    .end local v16           #length:I
    .end local v17           #rate:J
    .end local v20           #time:J
    .end local v22           #totalTime:J
    :catchall_0
    move-exception v25

    .line 256
    if-eqz v15, :cond_f

    :try_start_a
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 257
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 262
    :cond_10
    :goto_5
    throw v25

    .line 200
    .restart local v6       #contentLength:J
    :cond_11
    const-wide/16 v25, 0x0

    :try_start_b
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->previousFileSize:J

    goto/16 :goto_3

    .line 217
    .restart local v5       #buffer:[B
    .restart local v8       #count:J
    .restart local v16       #length:I
    .restart local v17       #rate:J
    .restart local v20       #time:J
    .restart local v22       #totalTime:J
    :cond_12
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    add-long v8, v8, v25

    .line 218
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->enable_breakpoint:Z

    move/from16 v25, v0

    if-eqz v25, :cond_13

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->downloadSize:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 221
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 222
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->downloadSize:J

    move-wide/from16 v25, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v27, v0

    add-long v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->downloadSize:J

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v22, v25, v20

    .line 224
    const-wide/16 v25, 0x0

    cmp-long v25, v22, v25

    if-lez v25, :cond_14

    .line 225
    const-wide/16 v25, 0x3e8

    mul-long v25, v25, v8

    const-wide/16 v27, 0x400

    div-long v25, v25, v27

    div-long v17, v25, v22

    .line 227
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v29, ", Rate: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "KB/S, downloaded: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 228
    const-wide/16 v29, 0x400

    div-long v29, v8, v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "KB, totalLength: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-wide/16 v29, 0x400

    div-long v29, v6, v29

    const-wide/16 v31, 0x400

    div-long v29, v29, v31

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 229
    const-string/jumbo v29, "MB, elapsed time: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-wide/16 v29, 0x3e8

    div-long v29, v22, v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "S."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 227
    invoke-static/range {v25 .. v26}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->downloadSize:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->totalSize:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->sendProgressMessage(II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_4

    .line 258
    .end local v5           #buffer:[B
    .end local v6           #contentLength:J
    .end local v8           #count:J
    .end local v16           #length:I
    .end local v17           #rate:J
    .end local v20           #time:J
    .end local v22           #totalTime:J
    .local v10, e:Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v10

    .line 259
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    move-object v12, v10

    goto/16 :goto_1

    .line 258
    .end local v10           #e:Ljava/io/IOException;
    :catch_6
    move-exception v10

    .line 259
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    move-object v12, v10

    goto/16 :goto_5

    .line 256
    .end local v10           #e:Ljava/io/IOException;
    .restart local v5       #buffer:[B
    .restart local v6       #contentLength:J
    .restart local v8       #count:J
    .restart local v16       #length:I
    .restart local v17       #rate:J
    .restart local v20       #time:J
    .restart local v22       #totalTime:J
    :cond_15
    if-eqz v15, :cond_16

    :try_start_c
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 257
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->randomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_1

    .line 258
    :catch_7
    move-exception v10

    .line 259
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    move-object v12, v10

    goto/16 :goto_1

    .line 270
    .end local v5           #buffer:[B
    .end local v6           #contentLength:J
    .end local v8           #count:J
    .end local v10           #e:Ljava/io/IOException;
    .end local v16           #length:I
    .end local v17           #rate:J
    .end local v20           #time:J
    .end local v22           #totalTime:J
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->targetFile:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->totalSize:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->targetFile:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v27

    cmp-long v25, v25, v27

    if-nez v25, :cond_18

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v29, ", Output file already exists. Skipping download."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->totalSize:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->totalSize:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->sendProgressMessage(II)V

    .line 276
    :goto_6
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v26

    const-string/jumbo v27, "success"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->sendSuccessMessage(I[Lorg/apache/http/Header;[B)V

    goto/16 :goto_2

    .line 274
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tempFile:Ljava/io/File;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->targetFile:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_6
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->context:Landroid/content/Context;

    .line 289
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->fileName:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setInterrupt(Z)V
    .locals 0
    .parameter "interrupt"

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->interrupt:Z

    .line 329
    return-void
.end method

.method public setParams(Lcom/cnlaunch/framework/network/http/RequestParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 337
    return-void
.end method

.method public setPreviousFileSize(I)V
    .locals 2
    .parameter "previousFileSize"

    .prologue
    .line 320
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->previousFileSize:J

    .line 321
    return-void
.end method

.method public setTargetFile(Ljava/io/File;)V
    .locals 0
    .parameter "targetFile"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->targetFile:Ljava/io/File;

    .line 313
    return-void
.end method

.method public setTempFile(Ljava/io/File;)V
    .locals 0
    .parameter "tempFile"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->tempFile:Ljava/io/File;

    .line 301
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->url:Ljava/lang/String;

    .line 297
    return-void
.end method
