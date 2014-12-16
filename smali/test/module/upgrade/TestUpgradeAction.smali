.class public Ltest/module/upgrade/TestUpgradeAction;
.super Ltest/BaseTestCase;
.source "TestUpgradeAction.java"


# instance fields
.field private defaultLanId:Ljava/lang/String;

.field private lanId:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private serialNo:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ltest/BaseTestCase;-><init>()V

    .line 30
    const-string/jumbo v0, "anqitest"

    iput-object v0, p0, Ltest/module/upgrade/TestUpgradeAction;->userName:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "123456"

    iput-object v0, p0, Ltest/module/upgrade/TestUpgradeAction;->pwd:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "982690424200"

    iput-object v0, p0, Ltest/module/upgrade/TestUpgradeAction;->serialNo:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "1002"

    iput-object v0, p0, Ltest/module/upgrade/TestUpgradeAction;->lanId:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Ltest/module/upgrade/TestUpgradeAction;->defaultLanId:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public test_queryHistoryDiagSofts()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 71
    iget-object v8, p0, Ltest/module/upgrade/TestUpgradeAction;->userName:Ljava/lang/String;

    iget-object v9, p0, Ltest/module/upgrade/TestUpgradeAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Ltest/module/upgrade/TestUpgradeAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Ltest/module/upgrade/TestUpgradeAction;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v8

    const-string/jumbo v9, "user_id"

    invoke-virtual {v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, userId:Ljava/lang/String;
    new-instance v6, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

    invoke-virtual {p0}, Ltest/module/upgrade/TestUpgradeAction;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;-><init>(Landroid/content/Context;)V

    .line 76
    .local v6, upgradeAction:Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;
    iget-object v8, p0, Ltest/module/upgrade/TestUpgradeAction;->serialNo:Ljava/lang/String;

    iget-object v9, p0, Ltest/module/upgrade/TestUpgradeAction;->lanId:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->queryLatestDiagSofts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;

    move-result-object v2

    .line 77
    .local v2, res:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;->getX431PadSoftList()Ljava/util/List;

    move-result-object v4

    .line 79
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v0, v8, :cond_0

    .line 88
    iget-object v8, p0, Ltest/module/upgrade/TestUpgradeAction;->serialNo:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Ltest/module/upgrade/TestUpgradeAction;->lanId:Ljava/lang/String;

    iget-object v11, p0, Ltest/module/upgrade/TestUpgradeAction;->defaultLanId:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->queryHistoryDiagSofts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;

    move-result-object v3

    .line 89
    .local v3, response:Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;->getCode()I

    move-result v8

    invoke-static {v8, v12}, Ltest/module/upgrade/TestUpgradeAction;->assertEquals(II)V

    .line 90
    return-void

    .line 81
    .end local v3           #response:Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;
    :cond_0
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 82
    .local v5, softId:Ljava/lang/Integer;
    const-string/jumbo v8, "test_queryHistoryDiagSofts()"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "softId====="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    if-eqz v5, :cond_1

    .line 84
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public test_queryLatestDiagSofts()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v3, p0, Ltest/module/upgrade/TestUpgradeAction;->userName:Ljava/lang/String;

    iget-object v4, p0, Ltest/module/upgrade/TestUpgradeAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Ltest/module/upgrade/TestUpgradeAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Ltest/module/upgrade/TestUpgradeAction;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "user_id"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, userId:Ljava/lang/String;
    new-instance v1, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

    invoke-virtual {p0}, Ltest/module/upgrade/TestUpgradeAction;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;-><init>(Landroid/content/Context;)V

    .line 48
    .local v1, upgradeAction:Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;
    iget-object v3, p0, Ltest/module/upgrade/TestUpgradeAction;->serialNo:Ljava/lang/String;

    iget-object v4, p0, Ltest/module/upgrade/TestUpgradeAction;->lanId:Ljava/lang/String;

    iget-object v5, p0, Ltest/module/upgrade/TestUpgradeAction;->defaultLanId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->queryLatestDiagSofts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;

    move-result-object v0

    .line 49
    .local v0, softResponse:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;->getCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ltest/module/upgrade/TestUpgradeAction;->assertEquals(II)V

    .line 50
    return-void
.end method

.method public test_queryLatestPublicSofts()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v2, p0, Ltest/module/upgrade/TestUpgradeAction;->userName:Ljava/lang/String;

    iget-object v3, p0, Ltest/module/upgrade/TestUpgradeAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ltest/module/upgrade/TestUpgradeAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

    invoke-virtual {p0}, Ltest/module/upgrade/TestUpgradeAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, upgradeAction:Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;
    iget-object v2, p0, Ltest/module/upgrade/TestUpgradeAction;->serialNo:Ljava/lang/String;

    iget-object v3, p0, Ltest/module/upgrade/TestUpgradeAction;->lanId:Ljava/lang/String;

    iget-object v4, p0, Ltest/module/upgrade/TestUpgradeAction;->defaultLanId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->queryLatestPublicSofts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;

    move-result-object v0

    .line 62
    .local v0, softResponse:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;->getCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltest/module/upgrade/TestUpgradeAction;->assertEquals(II)V

    .line 63
    return-void
.end method
