.class public Lcom/cnlaunch/golo3/http/HttpInfoClient;
.super Ljava/lang/Object;
.source "HttpInfoClient.java"


# static fields
.field private static final RESPONSE_CODE:Ljava/lang/String; = "code"

.field private static final RESPONSE_DATA:Ljava/lang/String; = "data"

.field private static final RESPONSE_MSG:Ljava/lang/String; = "msg"

.field private static final TAG:Ljava/lang/String; = "HttpInfoClient"

.field private static final UA:Ljava/lang/String; = "Android_ChatApp_1.0"

.field private static client:Lorg/apache/http/client/HttpClient;

.field private static instance:Lcom/cnlaunch/golo3/http/HttpInfoClient;


# instance fields
.field private cookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private targerServerUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/cnlaunch/golo3/http/HttpInfoClient;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/http/HttpInfoClient;-><init>()V

    sput-object v0, Lcom/cnlaunch/golo3/http/HttpInfoClient;->instance:Lcom/cnlaunch/golo3/http/HttpInfoClient;

    .line 74
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method private getHttpPost(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpPost;
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 210
    .local v2, request:Lorg/apache/http/client/methods/HttpPost;
    iget-object v3, p0, Lcom/cnlaunch/golo3/http/HttpInfoClient;->cookies:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/cnlaunch/golo3/http/HttpInfoClient;->cookies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/golo3/http/HttpInfoClient;->cookies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 219
    .end local v1           #i:I
    :cond_0
    const-string/jumbo v3, "User-Agent"

    const-string/jumbo v4, "Android_ChatApp_1.0"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-eqz p2, :cond_1

    .line 221
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, p2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 223
    :cond_1
    return-object v2

    .line 213
    .restart local v1       #i:I
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/golo3/http/HttpInfoClient;->cookies:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 214
    .local v0, cookie:Lorg/apache/http/cookie/Cookie;
    const-string/jumbo v3, "cookie"

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/cnlaunch/golo3/http/HttpInfoClient;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/cnlaunch/golo3/http/HttpInfoClient;->client:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/cnlaunch/golo3/http/HttpClientManager;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/golo3/http/HttpInfoClient;->client:Lorg/apache/http/client/HttpClient;

    .line 83
    :cond_0
    sget-object v0, Lcom/cnlaunch/golo3/http/HttpInfoClient;->instance:Lcom/cnlaunch/golo3/http/HttpInfoClient;

    return-object v0
.end method

.method private getJsonObjectByUrl(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getJsonObjectByUrl(Ljava/lang/String;ILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getJsonObjectByUrl(Ljava/lang/String;ILjava/util/List;)Lorg/json/JSONObject;
    .locals 5
    .parameter "url"
    .parameter "times"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x2

    if-le p2, v3, :cond_1

    .line 184
    const/4 v0, 0x0

    .line 197
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getHttpPost(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 188
    .local v1, request:Lorg/apache/http/client/methods/HttpPost;
    sget-object v3, Lcom/cnlaunch/golo3/http/HttpInfoClient;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 189
    .local v2, response:Lorg/apache/http/HttpResponse;
    new-instance v0, Lorg/json/JSONObject;

    .line 190
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 189
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, object:Lorg/json/JSONObject;
    const-string/jumbo v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 193
    add-int/lit8 p2, p2, 0x1

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getJsonObjectByUrl(Ljava/lang/String;ILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private getJsonObjectByUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getJsonObjectByUrl(Ljava/lang/String;ILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getJsonObjectByUrlForLogin(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getHttpPost(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 148
    .local v1, request:Lorg/apache/http/client/methods/HttpPost;
    sget-object v3, Lcom/cnlaunch/golo3/http/HttpInfoClient;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 149
    .local v2, response:Lorg/apache/http/HttpResponse;
    sget-object v3, Lcom/cnlaunch/golo3/http/HttpInfoClient;->client:Lorg/apache/http/client/HttpClient;

    check-cast v3, Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/golo3/http/HttpInfoClient;->cookies:Ljava/util/List;

    .line 150
    new-instance v0, Lorg/json/JSONObject;

    .line 151
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 150
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, object:Lorg/json/JSONObject;
    return-object v0
.end method

.method private inputStream2Bitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v8, 0x400

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 98
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-array v0, v8, [B

    .line 100
    .local v0, b:[B
    const/4 v4, 0x0

    .line 102
    .local v4, len:I
    :goto_0
    invoke-virtual {p1, v0, v10, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 107
    .local v3, bytes:[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 108
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 109
    .local v6, opts:Landroid/graphics/BitmapFactory$Options;
    array-length v5, v3

    .line 110
    .local v5, length:I
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Length---->"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    const v7, 0x32000

    if-le v5, v7, :cond_1

    .line 113
    iput v11, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    :goto_1
    array-length v7, v3

    invoke-static {v3, v10, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 120
    .local v2, bitmap:Landroid/graphics/Bitmap;
    return-object v2

    .line 103
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bytes:[B
    .end local v5           #length:I
    .end local v6           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    invoke-virtual {v1, v0, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 104
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    .line 115
    .restart local v3       #bytes:[B
    .restart local v5       #length:I
    .restart local v6       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iput v11, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1
.end method


# virtual methods
.method public getAreaInfoByUrl(Ljava/lang/String;)Lcom/cnlaunch/golo3/dto/AreaInfoDto;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getAreaInfoByUrl(Ljava/lang/String;Ljava/util/List;)Lcom/cnlaunch/golo3/dto/AreaInfoDto;

    move-result-object v0

    return-object v0
.end method

.method public getAreaInfoByUrl(Ljava/lang/String;Ljava/util/List;)Lcom/cnlaunch/golo3/dto/AreaInfoDto;
    .locals 5
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/cnlaunch/golo3/dto/AreaInfoDto;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 308
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getHttpPost(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 309
    .local v2, request:Lorg/apache/http/client/methods/HttpPost;
    sget-object v4, Lcom/cnlaunch/golo3/http/HttpInfoClient;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 310
    .local v3, response:Lorg/apache/http/HttpResponse;
    new-instance v1, Lorg/json/JSONObject;

    .line 311
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 310
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 312
    .local v1, object:Lorg/json/JSONObject;
    new-instance v0, Lcom/cnlaunch/golo3/dto/AreaInfoDto;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/dto/AreaInfoDto;-><init>()V

    .line 313
    .local v0, info:Lcom/cnlaunch/golo3/dto/AreaInfoDto;
    const-string/jumbo v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/cnlaunch/golo3/dto/AreaInfoDto;->setCode(I)V

    .line 314
    const-string/jumbo v4, "msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cnlaunch/golo3/dto/AreaInfoDto;->setMsg(Ljava/lang/String;)V

    .line 315
    const-string/jumbo v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    const-string/jumbo v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cnlaunch/golo3/dto/AreaInfoDto;->setJsonArray(Lorg/json/JSONArray;)V

    .line 317
    :cond_0
    return-object v0
.end method

.method public getBaseInfoDtoByGet(Ljava/lang/String;)Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .locals 7
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x2

    .line 645
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->sendGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 646
    .local v3, result:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cnlaunch/newgolo/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 653
    .local v2, object:Lorg/json/JSONObject;
    if-eqz v2, :cond_4

    .line 654
    new-instance v1, Lcom/cnlaunch/golo3/dto/BaseInfoDto;

    invoke-direct {v1}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;-><init>()V

    .line 655
    .local v1, info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    const-string/jumbo v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setCode(Ljava/lang/String;)V

    .line 656
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 657
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 658
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 659
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setMsg(Ljava/lang/String;)V

    .line 664
    :cond_0
    :goto_0
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 665
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 666
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 667
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 668
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setJsonObject(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 674
    :cond_1
    :goto_1
    return-object v1

    .line 647
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 648
    .local v0, e:Lcom/cnlaunch/newgolo/exception/HttpException;
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/exception/HttpException;->getCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4

    .line 661
    .end local v0           #e:Lcom/cnlaunch/newgolo/exception/HttpException;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .restart local v2       #object:Lorg/json/JSONObject;
    .restart local v3       #result:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setMsg(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 679
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .end local v2           #object:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 680
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-direct {v4, v6}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4

    .line 670
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .restart local v2       #object:Lorg/json/JSONObject;
    :cond_3
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setJsonObject(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 677
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    :cond_4
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public getBaseInfoDtoByGet1(Ljava/lang/String;)Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .locals 7
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x2

    .line 694
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->sendGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 695
    .local v3, result:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cnlaunch/newgolo/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 701
    .local v2, object:Lorg/json/JSONObject;
    if-eqz v2, :cond_4

    .line 702
    new-instance v1, Lcom/cnlaunch/golo3/dto/BaseInfoDto;

    invoke-direct {v1}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;-><init>()V

    .line 703
    .local v1, info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    const-string/jumbo v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setCode(Ljava/lang/String;)V

    .line 704
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 705
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 706
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 707
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setMsg(Ljava/lang/String;)V

    .line 712
    :cond_0
    :goto_0
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 713
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 714
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 715
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 716
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setData(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 722
    :cond_1
    :goto_1
    return-object v1

    .line 696
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 697
    .local v0, e:Lcom/cnlaunch/newgolo/exception/HttpException;
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/exception/HttpException;->getCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4

    .line 709
    .end local v0           #e:Lcom/cnlaunch/newgolo/exception/HttpException;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .restart local v2       #object:Lorg/json/JSONObject;
    .restart local v3       #result:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setMsg(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 727
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .end local v2           #object:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 728
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-direct {v4, v6}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4

    .line 718
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .restart local v2       #object:Lorg/json/JSONObject;
    :cond_3
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setData(Ljava/lang/String;)V

    goto :goto_1

    .line 725
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    :cond_4
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public getBaseInfoDtoByPost(Ljava/lang/String;Ljava/util/Map;)Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .locals 7
    .parameter "url"
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
            "Lcom/cnlaunch/golo3/dto/BaseInfoDto;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, -0x2

    .line 546
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->sendPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, result:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cnlaunch/newgolo/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 553
    .local v2, object:Lorg/json/JSONObject;
    if-eqz v2, :cond_4

    .line 554
    new-instance v1, Lcom/cnlaunch/golo3/dto/BaseInfoDto;

    invoke-direct {v1}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;-><init>()V

    .line 555
    .local v1, info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    const-string/jumbo v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setCode(Ljava/lang/String;)V

    .line 556
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 558
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 559
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setMsg(Ljava/lang/String;)V

    .line 564
    :cond_0
    :goto_0
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 565
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 566
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 567
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 568
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setJsonObject(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 574
    :cond_1
    :goto_1
    return-object v1

    .line 548
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Lcom/cnlaunch/newgolo/exception/HttpException;
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/exception/HttpException;->getCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4

    .line 561
    .end local v0           #e:Lcom/cnlaunch/newgolo/exception/HttpException;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .restart local v2       #object:Lorg/json/JSONObject;
    .restart local v3       #result:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setMsg(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 579
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .end local v2           #object:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 580
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-direct {v4, v6}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4

    .line 570
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .restart local v2       #object:Lorg/json/JSONObject;
    :cond_3
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setJsonObject(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 577
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    :cond_4
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public getBaseInfoDtoByPost1(Ljava/lang/String;Ljava/util/Map;)Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .locals 7
    .parameter "url"
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
            "Lcom/cnlaunch/golo3/dto/BaseInfoDto;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, -0x2

    .line 596
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->sendPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 597
    .local v3, result:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cnlaunch/newgolo/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 603
    .local v2, object:Lorg/json/JSONObject;
    if-eqz v2, :cond_4

    .line 604
    new-instance v1, Lcom/cnlaunch/golo3/dto/BaseInfoDto;

    invoke-direct {v1}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;-><init>()V

    .line 605
    .local v1, info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    const-string/jumbo v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setCode(Ljava/lang/String;)V

    .line 606
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 607
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 608
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 609
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setMsg(Ljava/lang/String;)V

    .line 614
    :cond_0
    :goto_0
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 615
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 616
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 617
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 618
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setData(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 624
    :cond_1
    :goto_1
    return-object v1

    .line 598
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 599
    .local v0, e:Lcom/cnlaunch/newgolo/exception/HttpException;
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/exception/HttpException;->getCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4

    .line 611
    .end local v0           #e:Lcom/cnlaunch/newgolo/exception/HttpException;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .restart local v2       #object:Lorg/json/JSONObject;
    .restart local v3       #result:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setMsg(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 629
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .end local v2           #object:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 630
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-direct {v4, v6}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4

    .line 620
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    .restart local v2       #object:Lorg/json/JSONObject;
    :cond_3
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->setData(Ljava/lang/String;)V

    goto :goto_1

    .line 627
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    :cond_4
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public getInfoByUrl(Ljava/lang/String;)Lcom/cnlaunch/golo3/dto/InfoDto;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getInfoByUrl(Ljava/lang/String;Ljava/util/List;)Lcom/cnlaunch/golo3/dto/InfoDto;

    move-result-object v0

    return-object v0
.end method

.method public getInfoByUrl(Ljava/lang/String;Ljava/util/List;)Lcom/cnlaunch/golo3/dto/InfoDto;
    .locals 7
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/cnlaunch/golo3/dto/InfoDto;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 283
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getHttpPost(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 284
    .local v2, request:Lorg/apache/http/client/methods/HttpPost;
    sget-object v5, Lcom/cnlaunch/golo3/http/HttpInfoClient;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 285
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, result:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V

    .line 287
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 289
    .local v1, object:Lorg/json/JSONObject;
    new-instance v0, Lcom/cnlaunch/golo3/dto/InfoDto;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/dto/InfoDto;-><init>()V

    .line 290
    .local v0, info:Lcom/cnlaunch/golo3/dto/InfoDto;
    const-string/jumbo v5, "code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/golo3/dto/InfoDto;->setCode(I)V

    .line 291
    const-string/jumbo v5, "msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/golo3/dto/InfoDto;->setMsg(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v5, "data"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    const-string/jumbo v5, "null"

    const-string/jumbo v6, "data"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 294
    const-string/jumbo v5, ""

    const-string/jumbo v6, "data"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 295
    const-string/jumbo v5, "data"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/golo3/dto/InfoDto;->setJsonObject(Lorg/json/JSONObject;)V

    .line 296
    :cond_0
    return-object v0
.end method

.method public getInfoByUrl1(Ljava/lang/String;)Lcom/cnlaunch/golo3/dto/InfoDto1;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getInfoByUrl1(Ljava/lang/String;Ljava/util/List;)Lcom/cnlaunch/golo3/dto/InfoDto1;

    move-result-object v0

    return-object v0
.end method

.method public getInfoByUrl1(Ljava/lang/String;Ljava/util/List;)Lcom/cnlaunch/golo3/dto/InfoDto1;
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/cnlaunch/golo3/dto/InfoDto1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 809
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getHttpPost(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 810
    .local v2, request:Lorg/apache/http/client/methods/HttpPost;
    sget-object v5, Lcom/cnlaunch/golo3/http/HttpInfoClient;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 811
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 813
    .local v4, result:Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 815
    .local v1, object:Lorg/json/JSONObject;
    new-instance v0, Lcom/cnlaunch/golo3/dto/InfoDto1;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/dto/InfoDto1;-><init>()V

    .line 816
    .local v0, info:Lcom/cnlaunch/golo3/dto/InfoDto1;
    const-string/jumbo v5, "code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/golo3/dto/InfoDto1;->setCode(I)V

    .line 817
    const-string/jumbo v5, "msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/golo3/dto/InfoDto1;->setMsg(Ljava/lang/String;)V

    .line 818
    const-string/jumbo v5, "data"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 819
    const-string/jumbo v5, "data"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/golo3/dto/InfoDto1;->setData(Ljava/lang/String;)V

    .line 821
    :cond_0
    return-object v0
.end method

.method public getInfoByUrl2Alarm(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 5
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 791
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getHttpPost(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 792
    .local v1, request:Lorg/apache/http/client/methods/HttpPost;
    sget-object v4, Lcom/cnlaunch/golo3/http/HttpInfoClient;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 793
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 795
    .local v3, result:Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 796
    .local v0, object:Lorg/json/JSONObject;
    return-object v0
.end method

.method public getJsonArrayByGet(Ljava/lang/String;)Lcom/cnlaunch/golo3/dto/NationInfoDto;
    .locals 7
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x2

    .line 743
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->sendGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 744
    .local v3, result:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cnlaunch/newgolo/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 750
    .local v2, object:Lorg/json/JSONObject;
    if-eqz v2, :cond_4

    .line 751
    new-instance v1, Lcom/cnlaunch/golo3/dto/NationInfoDto;

    invoke-direct {v1}, Lcom/cnlaunch/golo3/dto/NationInfoDto;-><init>()V

    .line 752
    .local v1, info:Lcom/cnlaunch/golo3/dto/NationInfoDto;
    const-string/jumbo v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->setCode(Ljava/lang/String;)V

    .line 753
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 754
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 755
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 756
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->setMsg(Ljava/lang/String;)V

    .line 761
    :cond_0
    :goto_0
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 762
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 763
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 764
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 765
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->setJsonArray(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 771
    :cond_1
    :goto_1
    return-object v1

    .line 745
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/NationInfoDto;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 746
    .local v0, e:Lcom/cnlaunch/newgolo/exception/HttpException;
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/exception/HttpException;->getCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4

    .line 758
    .end local v0           #e:Lcom/cnlaunch/newgolo/exception/HttpException;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/NationInfoDto;
    .restart local v2       #object:Lorg/json/JSONObject;
    .restart local v3       #result:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->setMsg(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 776
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/NationInfoDto;
    .end local v2           #object:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 777
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-direct {v4, v6}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4

    .line 767
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/NationInfoDto;
    .restart local v2       #object:Lorg/json/JSONObject;
    :cond_3
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->setJsonArray(Lorg/json/JSONArray;)V

    goto :goto_1

    .line 774
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/NationInfoDto;
    :cond_4
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public getNationInfoDtoByPost(Ljava/lang/String;Ljava/util/Map;)Lcom/cnlaunch/golo3/dto/NationInfoDto;
    .locals 7
    .parameter "url"
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
            "Lcom/cnlaunch/golo3/dto/NationInfoDto;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, -0x2

    .line 495
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->sendPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, result:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cnlaunch/newgolo/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 502
    .local v2, object:Lorg/json/JSONObject;
    if-eqz v2, :cond_4

    .line 503
    new-instance v1, Lcom/cnlaunch/golo3/dto/NationInfoDto;

    invoke-direct {v1}, Lcom/cnlaunch/golo3/dto/NationInfoDto;-><init>()V

    .line 504
    .local v1, info:Lcom/cnlaunch/golo3/dto/NationInfoDto;
    const-string/jumbo v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->setCode(Ljava/lang/String;)V

    .line 505
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 507
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 508
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->setMsg(Ljava/lang/String;)V

    .line 513
    :cond_0
    :goto_0
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 514
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 515
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 516
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 517
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->setJsonArray(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 523
    :cond_1
    :goto_1
    return-object v1

    .line 497
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/NationInfoDto;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Lcom/cnlaunch/newgolo/exception/HttpException;
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/exception/HttpException;->getCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4

    .line 510
    .end local v0           #e:Lcom/cnlaunch/newgolo/exception/HttpException;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/NationInfoDto;
    .restart local v2       #object:Lorg/json/JSONObject;
    .restart local v3       #result:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->setMsg(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 528
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/NationInfoDto;
    .end local v2           #object:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 529
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-direct {v4, v6}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4

    .line 519
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/NationInfoDto;
    .restart local v2       #object:Lorg/json/JSONObject;
    :cond_3
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v4}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->setJsonArray(Lorg/json/JSONArray;)V

    goto :goto_1

    .line 526
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/NationInfoDto;
    :cond_4
    new-instance v4, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cnlaunch/golo3/http/HttpInfoClient;->targerServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public inputstreamtofile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 6
    .parameter "ins"
    .parameter "file"

    .prologue
    .line 261
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 262
    .local v3, os:Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 263
    .local v1, bytesRead:I
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 264
    .local v0, buffer:[B
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x2000

    invoke-virtual {p1, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 267
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 268
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 272
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v3           #os:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 265
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #os:Ljava/io/OutputStream;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v3           #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 270
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public post(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 9
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .prologue
    .line 382
    .local p2, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v5, 0x0

    .line 383
    .local v5, response:Lorg/apache/http/HttpResponse;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 384
    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 385
    const-string/jumbo v7, "http.protocol.version"

    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    .line 384
    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 389
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 392
    .local v3, httpPost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v1, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 394
    .local v1, entity:Lorg/apache/http/entity/mime/MultipartEntity;
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_0

    .line 405
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 407
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 411
    .end local v1           #entity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v4           #index:I
    :goto_1
    return-object v5

    .line 395
    .restart local v1       #entity:Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v4       #index:I
    :cond_0
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/NameValuePair;

    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    .line 396
    new-instance v8, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/NameValuePair;

    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v1, v7, v8}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 408
    .end local v1           #entity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v4           #index:I
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public sendGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/HttpException;
        }
    .end annotation

    .prologue
    .line 466
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 467
    .local v1, get:Lorg/apache/http/client/methods/HttpGet;
    sget-object v4, Lcom/cnlaunch/golo3/http/HttpInfoClient;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 468
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 469
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 470
    const-string/jumbo v5, "UTF-8"

    .line 469
    invoke-static {v4, v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, result:Ljava/lang/String;
    const-string/jumbo v4, "yb"

    invoke-static {v4, v3}, Lcom/cnlaunch/golo3/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-object v3

    .line 474
    .end local v3           #result:Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/cnlaunch/newgolo/exception/HttpException;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 475
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 474
    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/HttpException;-><init>(I)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v1           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/cnlaunch/newgolo/exception/HttpException;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lcom/cnlaunch/newgolo/exception/HttpException;-><init>(I)V

    throw v4
.end method

.method public sendPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .parameter "url"
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
    .line 427
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 429
    .local v5, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v4, parameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    if-eqz p2, :cond_0

    .line 431
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 436
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 437
    const-string/jumbo v8, "UTF-8"

    .line 436
    invoke-direct {v1, v4, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 438
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 441
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    :cond_0
    sget-object v8, Lcom/cnlaunch/golo3/http/HttpInfoClient;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v8, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 442
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_2

    .line 444
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 445
    const-string/jumbo v9, "UTF-8"

    .line 444
    invoke-static {v8, v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 446
    .local v7, result:Ljava/lang/String;
    const-string/jumbo v8, "yb"

    invoke-static {v8, v7}, Lcom/cnlaunch/golo3/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-object v7

    .line 431
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #result:Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 432
    .local v2, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 433
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 432
    invoke-direct {v3, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .local v3, pair:Lorg/apache/http/message/BasicNameValuePair;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    .end local v2           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #pair:Lorg/apache/http/message/BasicNameValuePair;
    .end local v4           #parameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v5           #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/io/IOException;
    new-instance v8, Lcom/cnlaunch/newgolo/exception/HttpException;

    const/4 v9, -0x1

    invoke-direct {v8, v9}, Lcom/cnlaunch/newgolo/exception/HttpException;-><init>(I)V

    throw v8

    .line 449
    .end local v0           #e:Ljava/io/IOException;
    .restart local v4       #parameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v5       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_1
    new-instance v8, Lcom/cnlaunch/newgolo/exception/HttpException;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 450
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 449
    invoke-direct {v8, v9}, Lcom/cnlaunch/newgolo/exception/HttpException;-><init>(I)V

    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public uploadPicByGetUrl(Ljava/lang/String;Ljava/util/Map;)Lcom/cnlaunch/golo3/dto/InfoDto;
    .locals 6
    .parameter "url"
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
            "Lcom/cnlaunch/golo3/dto/InfoDto;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .line 353
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, ""

    .line 354
    .local v4, result:Ljava/lang/String;
    const/4 v1, 0x0

    .line 356
    .local v1, info:Lcom/cnlaunch/golo3/dto/InfoDto;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->sendPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 357
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 358
    .local v3, object:Lorg/json/JSONObject;
    new-instance v2, Lcom/cnlaunch/golo3/dto/InfoDto;

    invoke-direct {v2}, Lcom/cnlaunch/golo3/dto/InfoDto;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/InfoDto;
    .local v2, info:Lcom/cnlaunch/golo3/dto/InfoDto;
    :try_start_1
    const-string/jumbo v5, "code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/golo3/dto/InfoDto;->setCode(I)V

    .line 360
    const-string/jumbo v5, "msg"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/golo3/dto/InfoDto;->setMsg(Ljava/lang/String;)V

    .line 361
    const-string/jumbo v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 362
    const-string/jumbo v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/golo3/dto/InfoDto;->setJsonArray(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 368
    .end local v2           #info:Lcom/cnlaunch/golo3/dto/InfoDto;
    .end local v3           #object:Lorg/json/JSONObject;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/InfoDto;
    :goto_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    return-object v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #info:Lcom/cnlaunch/golo3/dto/InfoDto;
    .restart local v2       #info:Lcom/cnlaunch/golo3/dto/InfoDto;
    .restart local v3       #object:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #info:Lcom/cnlaunch/golo3/dto/InfoDto;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/InfoDto;
    goto :goto_1

    .end local v1           #info:Lcom/cnlaunch/golo3/dto/InfoDto;
    .restart local v2       #info:Lcom/cnlaunch/golo3/dto/InfoDto;
    :cond_0
    move-object v1, v2

    .end local v2           #info:Lcom/cnlaunch/golo3/dto/InfoDto;
    .restart local v1       #info:Lcom/cnlaunch/golo3/dto/InfoDto;
    goto :goto_0
.end method

.method public uploadPicByUrl(Ljava/lang/String;Ljava/util/List;)Lcom/cnlaunch/golo3/dto/InfoDto;
    .locals 5
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/cnlaunch/golo3/dto/InfoDto;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 330
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->post(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 331
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, result:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 335
    .local v1, object:Lorg/json/JSONObject;
    new-instance v0, Lcom/cnlaunch/golo3/dto/InfoDto;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/dto/InfoDto;-><init>()V

    .line 336
    .local v0, info:Lcom/cnlaunch/golo3/dto/InfoDto;
    const-string/jumbo v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/cnlaunch/golo3/dto/InfoDto;->setCode(I)V

    .line 337
    const-string/jumbo v4, "msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cnlaunch/golo3/dto/InfoDto;->setMsg(Ljava/lang/String;)V

    .line 338
    const-string/jumbo v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 339
    const-string/jumbo v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cnlaunch/golo3/dto/InfoDto;->setJsonObject(Lorg/json/JSONObject;)V

    .line 341
    :cond_0
    return-object v0
.end method
