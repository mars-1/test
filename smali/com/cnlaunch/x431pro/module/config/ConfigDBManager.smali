.class public Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;
.super Ljava/lang/Object;
.source "ConfigDBManager.java"


# static fields
.field private static instance:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;


# instance fields
.field private DB_NAME:Ljava/lang/String;

.field private configDaoMaster:Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;

.field private configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

.field private configSession:Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;

.field private mContext:Landroid/content/Context;

.field private final tag:Ljava/lang/String;

.field private timeKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v1, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->tag:Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "configCacheTime"

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->timeKey:Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "config_db"

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->DB_NAME:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster$DevOpenHelper;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->DB_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 85
    .local v0, helper:Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster$OpenHelper;
    new-instance v1, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configDaoMaster:Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;

    .line 86
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configDaoMaster:Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;->newSession()Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configSession:Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;

    .line 88
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configSession:Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;->getConfigInfoDao()Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;)Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    sget-object v0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->instance:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    if-nez v0, :cond_1

    .line 69
    const-class v1, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->instance:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->instance:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    sget-object v0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->instance:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public UpdateConfig()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 201
    new-instance v0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;

    iget-object v9, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, action:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;
    const-string/jumbo v2, "http://base.api.dbscar.com/?action=config_service.urls"

    .line 203
    .local v2, configurl:Ljava/lang/String;
    const-string/jumbo v1, "1"

    .line 205
    .local v1, configlan:Ljava/lang/String;
    iget-object v9, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v9

    const-string/jumbo v10, "isRelease"

    invoke-virtual {v9, v10, v12}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v5

    .line 206
    .local v5, isRelease:Z
    iget-object v9, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v9

    const-string/jumbo v10, "current_country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, lan:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 208
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getIp()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, ip:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/utils/Tools;->checkIpSuccess(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 210
    invoke-virtual {v0, v4}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getIpArea(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;

    move-result-object v8

    .line 211
    .local v8, res:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;->getCode()I

    move-result v9

    if-nez v9, :cond_2

    .line 212
    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;->getData()Lcom/cnlaunch/x431pro/module/config/model/IpAreaData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/config/model/IpAreaData;->getCountry_id()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, country_id:Ljava/lang/String;
    iget-object v9, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v9

    const-string/jumbo v10, "current_country"

    invoke-virtual {v9, v10, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v9, "CN"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 215
    const-string/jumbo v2, "http://base.api.dbscar.com/?action=config_service.urls"

    .line 216
    const-string/jumbo v1, "1"

    .line 260
    .end local v3           #country_id:Ljava/lang/String;
    .end local v4           #ip:Ljava/lang/String;
    .end local v8           #res:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    :goto_0
    const-string/jumbo v9, "0.0.0"

    invoke-virtual {v0, v2, v9, v1}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getConfigService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;

    move-result-object v8

    .line 261
    .local v8, res:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getCode()I

    move-result v9

    if-nez v9, :cond_0

    .line 262
    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getData()Lcom/cnlaunch/x431pro/module/config/model/ConfigData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/config/model/ConfigData;->getUrls()Ljava/util/List;

    move-result-object v7

    .line 263
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    iget-object v9, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->saveConfig(Ljava/util/List;)Z

    .line 264
    invoke-static {}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->getInstance()Lcom/cnlaunch/golo3/dao/InterfaceDao;

    move-result-object v9

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getInterfaceUrlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->update(Ljava/util/List;)V

    .line 266
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    :cond_0
    return-void

    .line 218
    .restart local v3       #country_id:Ljava/lang/String;
    .restart local v4       #ip:Ljava/lang/String;
    .local v8, res:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    :cond_1
    const-string/jumbo v2, "http://base.us.api.dbscar.com/?action=config_service.urls"

    .line 219
    const-string/jumbo v1, "2"

    .line 221
    goto :goto_0

    .line 222
    .end local v3           #country_id:Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v6, :cond_3

    const-string/jumbo v9, "CN"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "CN"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 224
    iget-object v9, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v9

    const-string/jumbo v10, "current_country"

    const-string/jumbo v11, "US"

    invoke-virtual {v9, v10, v11}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v2, "http://base.us.api.dbscar.com/?action=config_service.urls"

    .line 226
    const-string/jumbo v1, "2"

    .line 227
    const-string/jumbo v9, "Config"

    new-array v10, v12, [Ljava/lang/Object;

    const-string/jumbo v11, "---->\u53d1\u5e03\u73af\u5883\uff1a\u6d77\u5916"

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 229
    :cond_3
    const-string/jumbo v2, "http://base.api.dbscar.com/?action=config_service.urls"

    .line 230
    const-string/jumbo v1, "1"

    .line 231
    const-string/jumbo v9, "Config"

    new-array v10, v12, [Ljava/lang/Object;

    const-string/jumbo v11, "---->\u53d1\u5e03\u73af\u5883\uff1a\u56fd\u5185"

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 235
    .end local v8           #res:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    :cond_4
    const-string/jumbo v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v6, :cond_5

    const-string/jumbo v9, "CN"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string/jumbo v9, "CN"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 237
    iget-object v9, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v9

    const-string/jumbo v10, "current_country"

    const-string/jumbo v11, "US"

    invoke-virtual {v9, v10, v11}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string/jumbo v2, "http://base.us.api.dbscar.com/?action=config_service.urls"

    .line 239
    const-string/jumbo v1, "2"

    .line 240
    const-string/jumbo v9, "Config"

    new-array v10, v12, [Ljava/lang/Object;

    const-string/jumbo v11, "---->\u53d1\u5e03\u73af\u5883\uff1a\u6d77\u5916"

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 242
    :cond_5
    const-string/jumbo v2, "http://base.api.dbscar.com/?action=config_service.urls"

    .line 243
    const-string/jumbo v1, "1"

    .line 244
    const-string/jumbo v9, "Config"

    new-array v10, v12, [Ljava/lang/Object;

    const-string/jumbo v11, "---->\u53d1\u5e03\u73af\u5883\uff1a\u56fd\u5185"

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 248
    .end local v4           #ip:Ljava/lang/String;
    :cond_6
    const-string/jumbo v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    if-eqz v6, :cond_7

    const-string/jumbo v9, "CN"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string/jumbo v9, "CN"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 250
    iget-object v9, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v9

    const-string/jumbo v10, "current_country"

    const-string/jumbo v11, "US"

    invoke-virtual {v9, v10, v11}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string/jumbo v2, "http://base.us.api.dbscar.com/?action=config_service.urls"

    .line 252
    const-string/jumbo v1, "2"

    .line 253
    const-string/jumbo v9, "Config"

    new-array v10, v12, [Ljava/lang/Object;

    const-string/jumbo v11, "---->\u53d1\u5e03\u73af\u5883\uff1a\u6d77\u5916"

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 255
    :cond_7
    const-string/jumbo v2, "http://base.api.dbscar.com/?action=config_service.urls"

    .line 256
    const-string/jumbo v1, "1"

    .line 257
    const-string/jumbo v9, "Config"

    new-array v10, v12, [Ljava/lang/Object;

    const-string/jumbo v11, "---->\u53d1\u5e03\u73af\u5883\uff1a\u56fd\u5185"

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getConfigInfoDao()Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    return-object v0
.end method

.method public getConfigSession()Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configSession:Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;

    return-object v0
.end method

.method public getInterfaceUrlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/golo3/dto/InterfaceUrl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    if-eqz p1, :cond_0

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 278
    :cond_0
    return-object v1

    .line 271
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;

    .line 272
    .local v2, tmp:Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;
    new-instance v0, Lcom/cnlaunch/golo3/dto/InterfaceUrl;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;-><init>()V

    .line 273
    .local v0, item:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setKey(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setValue(Ljava/lang/String;)V

    .line 275
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getUrlByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 129
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->isUpdateConfig()Z

    move-result v0

    .line 130
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->UpdateConfig()V

    .line 133
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    new-instance v4, Lcom/cnlaunch/framework/network/http/HttpException;

    const-string/jumbo v5, "ConfigDBManager getUrlByKey key is not null."

    invoke-direct {v4, v5}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_1
    const-string/jumbo v3, ""

    .line 138
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 139
    .local v2, qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;>;"
    sget-object v4, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao$Properties;->Key:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 141
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 142
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 143
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 145
    :cond_2
    return-object v3
.end method

.method public isUpdateConfig()Z
    .locals 8

    .prologue
    .line 112
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->timeKey:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;J)J

    move-result-wide v2

    .line 113
    .local v2, timeout:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 114
    .local v0, now:J
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;->count()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 115
    const/4 v4, 0x0

    .line 117
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public saveConfig(Ljava/util/List;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->tag:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "put the config fail, list is null."

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 197
    :goto_0
    return v1

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configSession:Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;

    new-instance v4, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager$1;

    invoke-direct {v4, p0, p1}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager$1;-><init>(Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;->runInTx(Ljava/lang/Runnable;)V

    .line 190
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->timeKey:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 197
    goto :goto_0
.end method

.method public setConfigInfoDao(Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;)V
    .locals 0
    .parameter "configInfoDao"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    .line 97
    return-void
.end method

.method public setConfigSession(Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;)V
    .locals 0
    .parameter "configSession"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configSession:Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;

    .line 105
    return-void
.end method
