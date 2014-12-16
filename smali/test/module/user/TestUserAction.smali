.class public Ltest/module/user/TestUserAction;
.super Ltest/BaseTestCase;
.source "TestUserAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ltest/BaseTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_login()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v1, p0, Ltest/module/user/TestUserAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->isUpdateConfig()Z

    move-result v6

    .line 41
    .local v6, flag:Z
    if-eqz v6, :cond_0

    .line 42
    new-instance v0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;

    iget-object v1, p0, Ltest/module/user/TestUserAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, action:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;
    const/4 v1, 0x0

    const-string/jumbo v2, "0.0.0"

    const-string/jumbo v3, "cn"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getConfigService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;

    move-result-object v9

    .line 44
    .local v9, res:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getData()Lcom/cnlaunch/x431pro/module/config/model/ConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/config/model/ConfigData;->getUrls()Ljava/util/List;

    move-result-object v7

    .line 46
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    iget-object v1, p0, Ltest/module/user/TestUserAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->saveConfig(Ljava/util/List;)Z

    .line 50
    .end local v0           #action:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    .end local v9           #res:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-virtual {p0}, Ltest/module/user/TestUserAction;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;
    const-string/jumbo v1, "lps11"

    const-string/jumbo v2, "pppppp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "0"

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;

    move-result-object v9

    .line 52
    .local v9, res:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    if-eqz v9, :cond_1

    .line 53
    iget-object v1, p0, Ltest/module/user/TestUserAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v8

    .line 54
    .local v8, referManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/LoginData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->getUser()Lcom/cnlaunch/x431pro/module/user/model/User;

    move-result-object v10

    .line 55
    .local v10, user:Lcom/cnlaunch/x431pro/module/user/model/User;
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/LoginData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/cnlaunch/x431pro/module/user/model/User;->setToken(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "user_id"

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/user/model/User;->getUser_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "token"

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/LoginData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v8, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/Object;)V

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getCode()I

    move-result v2

    invoke-static {v1, v2}, Ltest/module/user/TestUserAction;->assertEquals(II)V

    .line 62
    .end local v8           #referManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    .end local v10           #user:Lcom/cnlaunch/x431pro/module/user/model/User;
    :cond_1
    return-void
.end method
