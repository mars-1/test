.class public Lcom/cnlaunch/newgolo/Http/HttpExecutor;
.super Ljava/lang/Object;
.source "HttpExecutor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpExecutor"

.field private static executor:Lcom/cnlaunch/newgolo/Http/HttpExecutor;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/newgolo/Http/HttpExecutor;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->executor:Lcom/cnlaunch/newgolo/Http/HttpExecutor;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/cnlaunch/newgolo/Http/HttpExecutor;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->executor:Lcom/cnlaunch/newgolo/Http/HttpExecutor;

    .line 57
    :cond_0
    sget-object v0, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->executor:Lcom/cnlaunch/newgolo/Http/HttpExecutor;

    return-object v0
.end method


# virtual methods
.method public downLoadThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "thumbUrl"

    .prologue
    const/16 v7, 0x7530

    .line 91
    const/4 v6, 0x0

    .line 92
    .local v6, thumbMap:Landroid/graphics/Bitmap;
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 93
    .local v3, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 94
    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 95
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 97
    .local v0, client:Lorg/apache/http/client/HttpClient;
    const/4 v5, 0x0

    .line 99
    .local v5, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 100
    const/16 v7, 0xc8

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 101
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 102
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 109
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v6

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 107
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public download(Ljava/io/File;Ljava/lang/String;)V
    .locals 13
    .parameter "file"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, in:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 116
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 117
    .local v7, params:Lorg/apache/http/params/HttpParams;
    const/16 v11, 0x7530

    invoke-static {v7, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 118
    const/16 v11, 0x7530

    invoke-static {v7, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 119
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 120
    .local v8, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 121
    .local v1, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v1, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 122
    .local v9, response:Lorg/apache/http/HttpResponse;
    const/16 v11, 0xc8

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    if-ne v11, v12, :cond_0

    .line 123
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 127
    .local v10, result:Lorg/apache/http/HttpEntity;
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 128
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    .end local v5           #out:Ljava/io/FileOutputStream;
    .local v6, out:Ljava/io/FileOutputStream;
    const/16 v11, 0x200

    :try_start_1
    new-array v0, v11, [B

    .line 131
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .local v4, length:I
    const/4 v11, -0x1

    if-ne v4, v11, :cond_3

    move-object v5, v6

    .line 136
    .end local v0           #buffer:[B
    .end local v4           #length:I
    .end local v6           #out:Ljava/io/FileOutputStream;
    .end local v10           #result:Lorg/apache/http/HttpEntity;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v5, :cond_1

    .line 138
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 145
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 151
    :cond_2
    :goto_2
    return-void

    .line 132
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #length:I
    .restart local v6       #out:Ljava/io/FileOutputStream;
    .restart local v10       #result:Lorg/apache/http/HttpEntity;
    :cond_3
    const/4 v11, 0x0

    :try_start_4
    invoke-virtual {v6, v0, v11, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 135
    .end local v0           #buffer:[B
    .end local v4           #length:I
    :catchall_0
    move-exception v11

    move-object v5, v6

    .line 136
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .end local v7           #params:Lorg/apache/http/params/HttpParams;
    .end local v8           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #result:Lorg/apache/http/HttpEntity;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v5, :cond_4

    .line 138
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 143
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 145
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 150
    :cond_5
    :goto_5
    throw v11

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 146
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 147
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 139
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v7       #params:Lorg/apache/http/params/HttpParams;
    .restart local v8       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v9       #response:Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v2

    .line 140
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 147
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 135
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #params:Lorg/apache/http/params/HttpParams;
    .end local v8           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v11

    goto :goto_3
.end method

.method public executeGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/HttpException;
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 179
    .local v4, timeoutParams:Lorg/apache/http/params/HttpParams;
    const/16 v5, 0x7530

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 180
    const/16 v5, 0x7530

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 181
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 182
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 183
    .local v3, response:Lorg/apache/http/HttpResponse;
    const/16 v5, 0xc8

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 184
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 186
    :cond_0
    new-instance v5, Lcom/cnlaunch/newgolo/exception/HttpException;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/cnlaunch/newgolo/exception/HttpException;-><init>(I)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    .end local v4           #timeoutParams:Lorg/apache/http/params/HttpParams;
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Lcom/cnlaunch/newgolo/exception/HttpException;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/cnlaunch/newgolo/exception/HttpException;-><init>(I)V

    throw v5
.end method

.method public executePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .parameter "action"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/HttpException;
        }
    .end annotation

    .prologue
    .line 155
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 156
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    .line 157
    invoke-virtual {p0, p2}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->getHttpEntity(Ljava/util/Map;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 158
    .local v2, entity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 160
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    :cond_0
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 161
    .local v5, timeoutParams:Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x7530

    invoke-static {v5, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 162
    const/16 v6, 0x7530

    invoke-static {v5, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 163
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 164
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 165
    .local v4, response:Lorg/apache/http/HttpResponse;
    const/16 v6, 0xc8

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 166
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 168
    :cond_1
    new-instance v6, Lcom/cnlaunch/newgolo/exception/HttpException;

    const-string/jumbo v7, "Http server no response!"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/cnlaunch/newgolo/exception/HttpException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v5           #timeoutParams:Lorg/apache/http/params/HttpParams;
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Ljava/io/IOException;
    new-instance v6, Lcom/cnlaunch/newgolo/exception/HttpException;

    const-string/jumbo v7, "Http request time out!"

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Lcom/cnlaunch/newgolo/exception/HttpException;-><init>(Ljava/lang/String;I)V

    throw v6
.end method

.method public getHttpEntity(Ljava/util/Map;)Lorg/apache/http/HttpEntity;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 194
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v2, pairList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v3

    .line 195
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 196
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v1, pair:Lorg/apache/http/message/BasicNameValuePair;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public upLoadThumb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileType"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, thumbUrl:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getInstance()Lcom/cnlaunch/golo3/http/HttpInfoProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->uploadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method public upload(Ljava/lang/String;Lorg/apache/http/entity/mime/MultipartEntity;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/HttpException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 62
    :try_start_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 63
    .local v2, params:Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x7530

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    const/16 v6, 0x7530

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 65
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 66
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v3, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 67
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 68
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 69
    .local v4, response:Lorg/apache/http/HttpResponse;
    const-string/jumbo v6, "HttpExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "response: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/16 v6, 0xc8

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 71
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 79
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #params:Lorg/apache/http/params/HttpParams;
    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v5

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
