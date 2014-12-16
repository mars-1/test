.class public Lcom/cnlaunch/framework/network/http/BinaryHttpResponseHandler;
.super Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;
.source "BinaryHttpResponseHandler.java"


# instance fields
.field private mAllowedContentTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;-><init>()V

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 55
    const-string/jumbo v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 56
    const-string/jumbo v2, "image/png"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cnlaunch/framework/network/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "allowedContentTypes"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/cnlaunch/framework/network/http/BinaryHttpResponseHandler;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public getAllowedContentTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .parameter "statusCode"
    .parameter "headers"
    .parameter "binaryData"
    .parameter "error"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p4, v0}, Lcom/cnlaunch/framework/network/http/BinaryHttpResponseHandler;->onFailure(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onSuccess(I[B)V
    .locals 0
    .parameter "statusCode"
    .parameter "binaryData"

    .prologue
    .line 107
    invoke-virtual {p0, p2}, Lcom/cnlaunch/framework/network/http/BinaryHttpResponseHandler;->onSuccess([B)V

    .line 108
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "binaryData"

    .prologue
    .line 120
    invoke-virtual {p0, p1, p3}, Lcom/cnlaunch/framework/network/http/BinaryHttpResponseHandler;->onSuccess(I[B)V

    .line 121
    return-void
.end method

.method public onSuccess([B)V
    .locals 0
    .parameter "binaryData"

    .prologue
    .line 98
    return-void
.end method

.method public final sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 13
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x0

    .line 145
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 146
    .local v5, status:Lorg/apache/http/StatusLine;
    const-string/jumbo v7, "Content-Type"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 147
    .local v2, contentTypeHeaders:[Lorg/apache/http/Header;
    array-length v7, v2

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 149
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    new-instance v8, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const-string/jumbo v10, "None, or more than one, Content-Type Header found!"

    invoke-direct {v8, v9, v10}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v6, v7, v12, v8}, Lcom/cnlaunch/framework/network/http/BinaryHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 169
    :goto_0
    return-void

    .line 152
    :cond_0
    aget-object v1, v2, v6

    .line 153
    .local v1, contentTypeHeader:Lorg/apache/http/Header;
    const/4 v4, 0x0

    .line 154
    .local v4, foundAllowedContentType:Z
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/http/BinaryHttpResponseHandler;->getAllowedContentTypes()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    :goto_1
    if-lt v6, v8, :cond_1

    .line 163
    if-nez v4, :cond_3

    .line 165
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    new-instance v8, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const-string/jumbo v10, "Content-Type not allowed!"

    invoke-direct {v8, v9, v10}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v6, v7, v12, v8}, Lcom/cnlaunch/framework/network/http/BinaryHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 154
    :cond_1
    aget-object v0, v7, v6

    .line 156
    .local v0, anAllowedContentType:Ljava/lang/String;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_2

    .line 157
    const/4 v4, 0x1

    .line 154
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 159
    :catch_0
    move-exception v3

    .line 160
    .local v3, e:Ljava/util/regex/PatternSyntaxException;
    const-string/jumbo v9, "BinaryHttpResponseHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Given pattern is not valid: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 168
    .end local v0           #anAllowedContentType:Ljava/lang/String;
    .end local v3           #e:Ljava/util/regex/PatternSyntaxException;
    :cond_3
    invoke-super {p0, p1}, Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    goto :goto_0
.end method
