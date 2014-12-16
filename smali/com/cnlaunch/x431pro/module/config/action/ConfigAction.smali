.class public Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;
.super Lcom/cnlaunch/x431pro/module/base/BaseAction;
.source "ConfigAction.java"


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 33
    const-class v0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->tag:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getConfigService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    .locals 4
    .parameter "url"
    .parameter "config_no"
    .parameter "area"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    const-string/jumbo v3, "getConfigService url is not null."

    invoke-direct {v2, v3}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 83
    .local v1, response:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 84
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v3, "config_no"

    invoke-virtual {v2, v3, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v3, "area"

    invoke-virtual {v2, v3, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v2, p1, v3}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    const-class v2, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;

    invoke-virtual {p0, v0, v2}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    check-cast v1, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;

    .line 93
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    :cond_1
    return-object v1
.end method

.method public getIp()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 104
    const-string/jumbo v2, ""

    .line 106
    .local v2, ip:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v7, "http://pv.sohu.com/cityjson?ie=utf-8"

    .line 107
    .local v7, url:Ljava/lang/String;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {v8, v7}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, returnSN:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 109
    const-string/jumbo v8, "{"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 110
    .local v6, start:I
    const-string/jumbo v8, "}"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, end:I
    if-eq v6, v13, :cond_0

    if-ne v1, v13, :cond_2

    .line 113
    :cond_0
    const-string/jumbo v2, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    .end local v1           #end:I
    .end local v5           #returnSN:Ljava/lang/String;
    .end local v6           #start:I
    .end local v7           #url:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/Tools;->checkIpSuccess(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v2

    .line 175
    :goto_1
    return-object v8

    .line 116
    .restart local v1       #end:I
    .restart local v5       #returnSN:Ljava/lang/String;
    .restart local v6       #start:I
    .restart local v7       #url:Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v1, 0x1

    :try_start_1
    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, jsonStr:Ljava/lang/String;
    const-string/jumbo v8, "Sanda"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "sohujsonStr="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    .local v3, json:Lorg/json/JSONObject;
    const-string/jumbo v8, "cip"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 123
    .end local v1           #end:I
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #jsonStr:Ljava/lang/String;
    .end local v5           #returnSN:Ljava/lang/String;
    .end local v6           #start:I
    .end local v7           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 125
    const-string/jumbo v2, ""

    goto :goto_0

    .line 126
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    const-string/jumbo v2, ""

    goto :goto_0

    .line 135
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_2
    const-string/jumbo v7, "http://city.ip138.com/ip2city.asp"

    .line 136
    .restart local v7       #url:Ljava/lang/String;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {v8, v7}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, json:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 138
    const-string/jumbo v8, "["

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 139
    .restart local v6       #start:I
    const-string/jumbo v8, "]"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 140
    .restart local v1       #end:I
    if-eq v6, v13, :cond_4

    if-ne v1, v13, :cond_5

    .line 141
    :cond_4
    const-string/jumbo v2, ""

    .line 143
    :cond_5
    const-string/jumbo v8, "["

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 144
    const-string/jumbo v8, "]"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 147
    const-string/jumbo v8, "Sanda"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "city.ip138 ip : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    .end local v1           #end:I
    .end local v3           #json:Ljava/lang/String;
    .end local v6           #start:I
    .end local v7           #url:Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/Tools;->checkIpSuccess(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, v2

    .line 155
    goto/16 :goto_1

    .line 149
    :catch_2
    move-exception v0

    .line 150
    .restart local v0       #e:Ljava/lang/Exception;
    const-string/jumbo v2, ""

    goto :goto_2

    .line 159
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_3
    const-string/jumbo v7, "http://20140507.ip138.com/ic.asp"

    .line 160
    .restart local v7       #url:Ljava/lang/String;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {v8, v7}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .restart local v3       #json:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 162
    const-string/jumbo v8, "["

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 163
    .restart local v6       #start:I
    const-string/jumbo v8, "]"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    .line 164
    .restart local v1       #end:I
    if-eq v6, v13, :cond_8

    if-ne v1, v13, :cond_9

    .line 165
    :cond_8
    const-string/jumbo v8, ""

    goto/16 :goto_1

    .line 167
    :cond_9
    :try_start_4
    const-string/jumbo v8, "["

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 168
    const-string/jumbo v8, "]"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 171
    const-string/jumbo v8, "Sanda"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ip : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .end local v1           #end:I
    .end local v6           #start:I
    :cond_a
    move-object v8, v2

    .line 173
    goto/16 :goto_1

    .line 174
    .end local v3           #json:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 175
    .restart local v0       #e:Ljava/lang/Exception;
    const-string/jumbo v8, ""

    goto/16 :goto_1
.end method

.method public getIpArea(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    .locals 6
    .parameter "ip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, response:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    :try_start_0
    const-string/jumbo v3, "http://ip.taobao.com/service/getIpInfo.php"

    .line 53
    .local v3, url:Ljava/lang/String;
    new-instance v4, Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-direct {v4}, Lcom/cnlaunch/framework/network/http/RequestParams;-><init>()V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 54
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v5, "ip"

    invoke-virtual {v4, v5, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v4, v3, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, json:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    const-class v4, Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;

    invoke-virtual {p0, v1, v4}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1           #json:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
