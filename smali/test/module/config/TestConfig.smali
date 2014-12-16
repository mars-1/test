.class public Ltest/module/config/TestConfig;
.super Ltest/BaseTestCase;
.source "TestConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ltest/BaseTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public testDb()V
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Ltest/module/config/TestConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v1

    .line 88
    .local v1, dbm:Lcom/cnlaunch/x431pro/utils/db/base/DBManager;
    new-instance v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;-><init>()V

    .line 89
    .local v0, b:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 90
    const-string/jumbo v2, "1231"

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setSerialNo(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setCc(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->insert(Ljava/lang/Object;)J

    .line 93
    return-void
.end method

.method public testGetAssetsFile()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Ltest/module/config/TestConfig;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, listArray:[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 77
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 84
    return-void

    .line 77
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, fileName:Ljava/lang/String;
    iget-object v5, p0, Ltest/module/config/TestConfig;->tag:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Ltest/module/config/TestConfig;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getAssetsStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 80
    .local v1, instream:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 81
    invoke-static {v1, v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->saveFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public testGetConfigUrl()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x22

    .line 46
    invoke-virtual {p0}, Ltest/module/config/TestConfig;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "configurl.json"

    invoke-static {v9, v10}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getAssetsStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 47
    .local v2, instream:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 48
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->inputSteamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, json:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 50
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/JsonMananger;

    move-result-object v9

    const-class v10, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;

    invoke-virtual {v9, v3, v10}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;

    .line 51
    .local v7, res:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    if-eqz v7, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v1, content:Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getData()Lcom/cnlaunch/x431pro/module/config/model/ConfigData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/config/model/ConfigData;->getUrls()Ljava/util/List;

    move-result-object v5

    .line 54
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLaunchPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "/configurl.txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, ss:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->saveFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    .end local v1           #content:Ljava/lang/StringBuilder;
    .end local v3           #json:Ljava/lang/String;
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    .end local v7           #res:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    .end local v8           #ss:Ljava/lang/String;
    :cond_0
    return-void

    .line 54
    .restart local v1       #content:Ljava/lang/StringBuilder;
    .restart local v3       #json:Ljava/lang/String;
    .restart local v5       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    .restart local v7       #res:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;

    .line 55
    .local v0, bean:Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, key:Ljava/lang/String;
    const-string/jumbo v10, "."

    const-string/jumbo v11, "_"

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, name:Ljava/lang/String;
    const-string/jumbo v10, "*"

    const-string/jumbo v11, "all"

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 58
    const-string/jumbo v10, "public static String "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v10, "\n"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v10, "TestConfig"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public testIp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;

    invoke-virtual {p0}, Ltest/module/config/TestConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, dbm:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getIp()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, ip:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getIpArea(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;

    .line 42
    return-void
.end method
