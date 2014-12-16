.class public Lcom/cnlaunch/newgolo/model/LoginLogic;
.super Ljava/lang/Object;
.source "LoginLogic.java"


# instance fields
.field private callback:Lcom/cnlaunch/newgolo/model/LoginCallback;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/model/LoginCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/cnlaunch/newgolo/model/LoginLogic;->callback:Lcom/cnlaunch/newgolo/model/LoginCallback;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/model/LoginLogic;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cnlaunch/newgolo/model/LoginLogic;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/newgolo/model/LoginLogic;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/LoginLogic;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private checkNetwork()Z
    .locals 4

    .prologue
    .line 150
    sget-object v2, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 151
    .local v1, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 152
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 153
    const/4 v2, 0x1

    .line 155
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyStatusChange(Lcom/cnlaunch/newgolo/model/LoginCallback$Status;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/LoginLogic;->callback:Lcom/cnlaunch/newgolo/model/LoginCallback;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/LoginLogic;->callback:Lcom/cnlaunch/newgolo/model/LoginCallback;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/model/LoginCallback;->onStatusChange(Lcom/cnlaunch/newgolo/model/LoginCallback$Status;)V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public getUrlTool(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .parameter "sb"
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

    .prologue
    .line 158
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 160
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, url:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 172
    .end local v0           #i:I
    .end local v2           #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #url:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 162
    .restart local v0       #i:I
    .restart local v2       #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #url:Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, key:Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 164
    .local v4, value:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_1

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 172
    .end local v0           #i:I
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public declared-synchronized login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "name"
    .parameter "password"

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/model/LoginLogic;->checkNetwork()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_5

    .line 52
    :try_start_1
    invoke-static {}, Lcom/cnlaunch/newgolo/Http/HttpHelper;->getInstance()Lcom/cnlaunch/newgolo/Http/HttpHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/cnlaunch/newgolo/Http/HttpHelper;->getLoginUrl()Ljava/lang/String;

    move-result-object v9

    .line 53
    .local v9, url:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getInstance()Lcom/cnlaunch/golo3/http/HttpInfoProvider;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getBeforeUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 54
    invoke-static {}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->getInstance()Lcom/cnlaunch/golo3/dao/InterfaceDao;

    move-result-object v11

    const-string/jumbo v12, "config_no"

    invoke-virtual {v11, v12}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, config_no:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->getInstance()Lcom/cnlaunch/golo3/dao/InterfaceDao;

    move-result-object v11

    const-string/jumbo v12, "config_area"

    invoke-virtual {v11, v12}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, config_area:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, lan:Ljava/lang/String;
    const/4 v10, 0x0

    .line 58
    .local v10, v_zone:Ljava/lang/String;
    sget v11, Lcom/cnlaunch/newgolo/GoloApplication;->OVER_SEA:I

    if-nez v11, :cond_4

    .line 59
    const-string/jumbo v10, "1"

    .line 63
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 64
    const-string/jumbo v3, "0.0.0"

    .line 66
    :cond_1
    if-nez v2, :cond_2

    .line 67
    const-string/jumbo v2, "1"

    .line 69
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, addMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v11, "config_no"

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v11, "config_area"

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v11, "lan"

    invoke-interface {v0, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v11, "v_zone"

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0, v9, v0}, Lcom/cnlaunch/newgolo/model/LoginLogic;->getUrlTool(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 75
    invoke-static {}, Lcom/cnlaunch/newgolo/Http/HttpHelper;->getInstance()Lcom/cnlaunch/newgolo/Http/HttpHelper;

    move-result-object v11

    invoke-virtual {v11, p1, p2}, Lcom/cnlaunch/newgolo/Http/HttpHelper;->getLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 76
    .local v8, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->getInstance()Lcom/cnlaunch/newgolo/Http/HttpExecutor;

    move-result-object v11

    invoke-virtual {v11, v9, v8}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->executePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, content:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v6, json:Lorg/json/JSONObject;
    const-string/jumbo v11, "code"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 79
    const-string/jumbo v11, "code"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 80
    .local v1, code:I
    sparse-switch v1, :sswitch_data_0

    .line 147
    .end local v0           #addMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #code:I
    .end local v2           #config_area:Ljava/lang/String;
    .end local v3           #config_no:Ljava/lang/String;
    .end local v4           #content:Ljava/lang/String;
    .end local v6           #json:Lorg/json/JSONObject;
    .end local v7           #lan:Ljava/lang/String;
    .end local v8           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #url:Ljava/lang/String;
    .end local v10           #v_zone:Ljava/lang/String;
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 60
    .restart local v2       #config_area:Ljava/lang/String;
    .restart local v3       #config_no:Ljava/lang/String;
    .restart local v7       #lan:Ljava/lang/String;
    .restart local v9       #url:Ljava/lang/String;
    .restart local v10       #v_zone:Ljava/lang/String;
    :cond_4
    :try_start_2
    sget v11, Lcom/cnlaunch/newgolo/GoloApplication;->OVER_SEA:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 61
    const-string/jumbo v10, "2"

    goto :goto_0

    .line 82
    .restart local v0       #addMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #code:I
    .restart local v4       #content:Ljava/lang/String;
    .restart local v6       #json:Lorg/json/JSONObject;
    .restart local v8       #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_0
    sget-object v11, Lcom/cnlaunch/newgolo/model/LoginCallback$Status;->successfully:Lcom/cnlaunch/newgolo/model/LoginCallback$Status;

    invoke-direct {p0, v11}, Lcom/cnlaunch/newgolo/model/LoginLogic;->notifyStatusChange(Lcom/cnlaunch/newgolo/model/LoginCallback$Status;)V

    .line 83
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/cnlaunch/newgolo/model/LoginLogic$1;

    invoke-direct {v12, p0, v4, v6}, Lcom/cnlaunch/newgolo/model/LoginLogic$1;-><init>(Lcom/cnlaunch/newgolo/model/LoginLogic;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 140
    .end local v0           #addMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #code:I
    .end local v2           #config_area:Ljava/lang/String;
    .end local v3           #config_no:Ljava/lang/String;
    .end local v4           #content:Ljava/lang/String;
    .end local v6           #json:Lorg/json/JSONObject;
    .end local v7           #lan:Ljava/lang/String;
    .end local v8           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #url:Ljava/lang/String;
    .end local v10           #v_zone:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 141
    .local v5, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    sget-object v11, Lcom/cnlaunch/newgolo/model/LoginCallback$Status;->no_response:Lcom/cnlaunch/newgolo/model/LoginCallback$Status;

    invoke-direct {p0, v11}, Lcom/cnlaunch/newgolo/model/LoginLogic;->notifyStatusChange(Lcom/cnlaunch/newgolo/model/LoginCallback$Status;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 50
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 127
    .restart local v0       #addMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #code:I
    .restart local v2       #config_area:Ljava/lang/String;
    .restart local v3       #config_no:Ljava/lang/String;
    .restart local v4       #content:Ljava/lang/String;
    .restart local v6       #json:Lorg/json/JSONObject;
    .restart local v7       #lan:Ljava/lang/String;
    .restart local v8       #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #url:Ljava/lang/String;
    .restart local v10       #v_zone:Ljava/lang/String;
    :sswitch_1
    :try_start_4
    sget-object v11, Lcom/cnlaunch/newgolo/model/LoginCallback$Status;->pwd_error:Lcom/cnlaunch/newgolo/model/LoginCallback$Status;

    invoke-direct {p0, v11}, Lcom/cnlaunch/newgolo/model/LoginLogic;->notifyStatusChange(Lcom/cnlaunch/newgolo/model/LoginCallback$Status;)V

    goto :goto_1

    .line 130
    :sswitch_2
    sget-object v11, Lcom/cnlaunch/newgolo/model/LoginCallback$Status;->no_registered:Lcom/cnlaunch/newgolo/model/LoginCallback$Status;

    invoke-direct {p0, v11}, Lcom/cnlaunch/newgolo/model/LoginLogic;->notifyStatusChange(Lcom/cnlaunch/newgolo/model/LoginCallback$Status;)V

    goto :goto_1

    .line 133
    :sswitch_3
    sget-object v11, Lcom/cnlaunch/newgolo/model/LoginCallback$Status;->area_wrong:Lcom/cnlaunch/newgolo/model/LoginCallback$Status;

    invoke-direct {p0, v11}, Lcom/cnlaunch/newgolo/model/LoginLogic;->notifyStatusChange(Lcom/cnlaunch/newgolo/model/LoginCallback$Status;)V

    goto :goto_1

    .line 136
    :sswitch_4
    sget-object v11, Lcom/cnlaunch/newgolo/model/LoginCallback$Status;->version_wrong:Lcom/cnlaunch/newgolo/model/LoginCallback$Status;

    invoke-direct {p0, v11}, Lcom/cnlaunch/newgolo/model/LoginLogic;->notifyStatusChange(Lcom/cnlaunch/newgolo/model/LoginCallback$Status;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 145
    .end local v0           #addMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #code:I
    .end local v2           #config_area:Ljava/lang/String;
    .end local v3           #config_no:Ljava/lang/String;
    .end local v4           #content:Ljava/lang/String;
    .end local v6           #json:Lorg/json/JSONObject;
    .end local v7           #lan:Ljava/lang/String;
    .end local v8           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #url:Ljava/lang/String;
    .end local v10           #v_zone:Ljava/lang/String;
    :cond_5
    :try_start_5
    sget-object v11, Lcom/cnlaunch/newgolo/model/LoginCallback$Status;->network_invalid:Lcom/cnlaunch/newgolo/model/LoginCallback$Status;

    invoke-direct {p0, v11}, Lcom/cnlaunch/newgolo/model/LoginLogic;->notifyStatusChange(Lcom/cnlaunch/newgolo/model/LoginCallback$Status;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9c40 -> :sswitch_3
        0x9c41 -> :sswitch_4
        0x186a1 -> :sswitch_1
        0x186a2 -> :sswitch_2
    .end sparse-switch
.end method
