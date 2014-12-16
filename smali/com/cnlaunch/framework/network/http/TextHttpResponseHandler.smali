.class public Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;
.super Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;
.source "TextHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextHttpResponseHandler"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;->setCharset(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "error"

    .prologue
    .line 78
    invoke-virtual {p0, p3, p4}, Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 5
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    .line 108
    if-nez p3, :cond_0

    move-object v1, v2

    .line 109
    .local v1, response:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .end local v1           #response:Ljava/lang/String;
    :goto_1
    return-void

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p3, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "TextHttpResponseHandler"

    const-string/jumbo v4, "String encoding failed, calling onFailure(int, Header[], String, Throwable)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p2, v2, v0}, Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "responseBody"
    .parameter "error"

    .prologue
    .line 67
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 91
    invoke-virtual {p0, p1, p3}, Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 92
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 5
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    const/4 v2, 0x0

    .line 97
    if-nez p3, :cond_0

    move-object v1, v2

    .line 98
    .local v1, response:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    .line 103
    .end local v1           #response:Ljava/lang/String;
    :goto_1
    return-void

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p3, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "TextHttpResponseHandler"

    const-string/jumbo v4, "String encoding failed, calling onFailure(int, Header[], String, Throwable)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p2, v2, v0}, Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
