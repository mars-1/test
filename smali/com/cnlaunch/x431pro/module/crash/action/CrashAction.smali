.class public Lcom/cnlaunch/x431pro/module/crash/action/CrashAction;
.super Lcom/cnlaunch/x431pro/module/base/BaseAction;
.source "CrashAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashAction"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method


# virtual methods
.method public upload(Ljava/io/File;)Z
    .locals 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v3, 0x0

    .line 51
    .local v3, result:Z
    sget-object v5, Lcom/cnlaunch/framework/common/KeyConstant;->log_upload:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/crash/action/CrashAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/crash/action/CrashAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/crash/action/CrashAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 53
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/crash/action/CrashAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v6, "file"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, p1, v7}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 54
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/crash/action/CrashAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/crash/action/CrashAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v6, v7}, Lcom/cnlaunch/x431pro/module/crash/action/CrashAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Z)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/crash/action/CrashAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, json:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 57
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, jObject:Lorg/json/JSONObject;
    const-string/jumbo v5, "code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 59
    const/4 v3, 0x1

    .line 65
    .end local v1           #jObject:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-string/jumbo v5, "CrashAction"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "result:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",json:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v3

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
