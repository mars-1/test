.class public Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;
.super Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;
.source "JsonHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JsonHttpResponseHandler"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/cnlaunch/framework/network/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "statusCode"
    .parameter "e"
    .parameter "errorResponse"

    .prologue
    .line 140
    invoke-virtual {p0, p2, p3}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    .line 141
    return-void
.end method

.method public onFailure(ILjava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "statusCode"
    .parameter "e"
    .parameter "errorResponse"

    .prologue
    .line 127
    invoke-virtual {p0, p2, p3}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 128
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "e"

    .prologue
    .line 187
    if-eqz p3, :cond_0

    .line 188
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;-><init>(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 219
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string/jumbo v0, "JsonHttpResponseHandler"

    const-string/jumbo v1, "response body is null, calling onFailure(Throwable, JSONObject)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "e"
    .parameter "errorResponse"

    .prologue
    .line 144
    invoke-virtual {p0, p1, p3, p4}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(ILjava/lang/Throwable;Lorg/json/JSONArray;)V

    .line 145
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "e"
    .parameter "errorResponse"

    .prologue
    .line 131
    invoke-virtual {p0, p1, p3, p4}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(ILjava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 132
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "e"
    .parameter "errorResponse"

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 137
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "e"
    .parameter "errorResponse"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method public onSuccess(ILorg/json/JSONArray;)V
    .locals 0
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 118
    invoke-virtual {p0, p2}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONArray;)V

    .line 119
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 0
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 95
    invoke-virtual {p0, p2}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONObject;)V

    .line 96
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 149
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;-><init>(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 107
    invoke-virtual {p0, p1, p3}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONArray;)V

    .line 108
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 84
    invoke-virtual {p0, p1, p3}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 85
    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 73
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 63
    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "responseBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 227
    if-nez p1, :cond_1

    .line 228
    const/4 v1, 0x0

    .line 238
    :cond_0
    :goto_0
    return-object v1

    .line 229
    :cond_1
    const/4 v1, 0x0

    .line 231
    .local v1, result:Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, jsonString:Ljava/lang/String;
    const-string/jumbo v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    :cond_2
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 235
    .end local v1           #result:Ljava/lang/Object;
    :cond_3
    if-nez v1, :cond_0

    .line 236
    move-object v1, v0

    .local v1, result:Ljava/lang/String;
    goto :goto_0
.end method
