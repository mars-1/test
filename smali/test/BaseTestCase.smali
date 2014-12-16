.class public Ltest/BaseTestCase;
.super Landroid/test/AndroidTestCase;
.source "BaseTestCase.java"


# instance fields
.field protected final tag:Ljava/lang/String;

.field protected user_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cnlaunch/framework/utils/NLog;->setDebug(Z)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 32
    const-class v0, Ltest/BaseTestCase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltest/BaseTestCase;->tag:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public login()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 44
    const-string/jumbo v0, "weige"

    const-string/jumbo v1, "111111"

    invoke-virtual {p0, v0, v1}, Ltest/BaseTestCase;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Ltest/BaseTestCase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->isUpdateConfig()Z

    move-result v6

    .line 54
    .local v6, flag:Z
    if-eqz v6, :cond_0

    .line 55
    new-instance v0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;

    iget-object v1, p0, Ltest/BaseTestCase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, action:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;
    const-string/jumbo v1, "http://golo.test.x431.com:8008/dev/?action=config_service.urls"

    const-string/jumbo v2, "0.0.0"

    const-string/jumbo v3, "cn"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getConfigService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;

    move-result-object v9

    .line 57
    .local v9, res:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getData()Lcom/cnlaunch/x431pro/module/config/model/ConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/config/model/ConfigData;->getUrls()Ljava/util/List;

    move-result-object v7

    .line 59
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    iget-object v1, p0, Ltest/BaseTestCase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->saveConfig(Ljava/util/List;)Z

    .line 63
    .end local v0           #action:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    .end local v9           #res:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-virtual {p0}, Ltest/BaseTestCase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "0"

    const-string/jumbo v5, ""

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;

    move-result-object v9

    .line 65
    .local v9, res:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    if-eqz v9, :cond_1

    .line 66
    iget-object v1, p0, Ltest/BaseTestCase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v8

    .line 67
    .local v8, referManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/LoginData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->getUser()Lcom/cnlaunch/x431pro/module/user/model/User;

    move-result-object v10

    .line 68
    .local v10, user:Lcom/cnlaunch/x431pro/module/user/model/User;
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/LoginData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/cnlaunch/x431pro/module/user/model/User;->setToken(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/user/model/User;->getUser_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltest/BaseTestCase;->user_id:Ljava/lang/String;

    .line 70
    const-string/jumbo v1, "user_id"

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/user/model/User;->getUser_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v1, "token"

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/LoginData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v8, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/Object;)V

    .line 73
    iget-object v1, p0, Ltest/BaseTestCase;->tag:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "============login is success=========="

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .end local v8           #referManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    .end local v10           #user:Lcom/cnlaunch/x431pro/module/user/model/User;
    :cond_1
    return-void
.end method
