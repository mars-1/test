.class public Ltest/module/golo/TestCustomerAction;
.super Ltest/BaseTestCase;
.source "TestCustomerAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ltest/BaseTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_getHistory()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 59
    const-string/jumbo v4, "weige"

    const-string/jumbo v5, "111111"

    invoke-virtual {p0, v4, v5}, Ltest/module/golo/TestCustomerAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {p0}, Ltest/module/golo/TestCustomerAction;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, action:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
    const-string/jumbo v4, "54434"

    const-string/jumbo v5, "966290000525"

    invoke-virtual {v0, v4, v5}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getHistory(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;

    move-result-object v3

    .line 63
    .local v3, res:Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getList()Ljava/util/List;

    move-result-object v2

    .line 65
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/History;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 68
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getCode()I

    move-result v4

    invoke-static {v4, v8}, Ltest/module/golo/TestCustomerAction;->assertEquals(II)V

    .line 70
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/History;>;"
    :cond_0
    return-void

    .line 65
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/History;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/History;

    .line 66
    .local v1, bean:Lcom/cnlaunch/x431pro/module/golo/model/History;
    const-string/jumbo v5, "test_getHistory"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/History;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public test_getHistoryList()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 77
    const-string/jumbo v4, "weige"

    const-string/jumbo v5, "111111"

    invoke-virtual {p0, v4, v5}, Ltest/module/golo/TestCustomerAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {p0}, Ltest/module/golo/TestCustomerAction;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, action:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
    const-string/jumbo v4, "54434"

    const-string/jumbo v5, "966290000525"

    const-string/jumbo v6, "1"

    const-string/jumbo v7, "20"

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;

    move-result-object v3

    .line 81
    .local v3, res:Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getList()Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/History;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 87
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getCode()I

    move-result v4

    invoke-static {v4, v8}, Ltest/module/golo/TestCustomerAction;->assertEquals(II)V

    .line 89
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/History;>;"
    :cond_0
    return-void

    .line 83
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/History;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/History;

    .line 84
    .local v1, bean:Lcom/cnlaunch/x431pro/module/golo/model/History;
    const-string/jumbo v5, "test_getHistoryList"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/History;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public test_getHistoryUnreadSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 42
    const-string/jumbo v2, "weige"

    const-string/jumbo v3, "111111"

    invoke-virtual {p0, v2, v3}, Ltest/module/golo/TestCustomerAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {p0}, Ltest/module/golo/TestCustomerAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, action:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
    const-string/jumbo v2, "54434"

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getHistory(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;

    move-result-object v1

    .line 47
    .local v1, res:Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    if-eqz v1, :cond_0

    .line 48
    const-string/jumbo v2, "test_getHistoryUnreadSize"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getUnreadsize()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getCode()I

    move-result v2

    invoke-static {v2, v5}, Ltest/module/golo/TestCustomerAction;->assertEquals(II)V

    .line 52
    :cond_0
    return-void
.end method

.method public test_goloDetailInfo()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 163
    const-string/jumbo v1, ""

    .line 164
    .local v1, pub_id:Ljava/lang/String;
    const-string/jumbo v5, "966290000525"

    .line 166
    .local v5, serial_no:Ljava/lang/String;
    const-string/jumbo v6, "weige"

    const-string/jumbo v7, "111111"

    invoke-virtual {p0, v6, v7}, Ltest/module/golo/TestCustomerAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {p0}, Ltest/module/golo/TestCustomerAction;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, action:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 170
    const-string/jumbo v6, "54434"

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->pidByt(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;

    move-result-object v4

    .line 171
    .local v4, res2:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    if-eqz v4, :cond_0

    .line 172
    invoke-virtual {p0}, Ltest/module/golo/TestCustomerAction;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    .line 173
    .local v2, referManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->getPub_id()Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string/jumbo v6, "golocustomer_publicid"

    invoke-virtual {v2, v6, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v6, "test_pidByt"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    .end local v2           #referManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    .end local v4           #res2:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    :cond_0
    invoke-virtual {v0, v1, v5}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->goloDetailInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;

    move-result-object v3

    .line 180
    .local v3, res:Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;
    if-eqz v3, :cond_1

    .line 181
    const-string/jumbo v6, "test_goloListBaseInfo"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;->getCode()I

    move-result v6

    invoke-static {v6, v9}, Ltest/module/golo/TestCustomerAction;->assertEquals(II)V

    .line 184
    :cond_1
    return-void
.end method

.method public test_goloListBaseInfo()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 132
    const-string/jumbo v3, ""

    .line 134
    .local v3, pub_id:Ljava/lang/String;
    const-string/jumbo v7, "weige"

    const-string/jumbo v8, "111111"

    invoke-virtual {p0, v7, v8}, Ltest/module/golo/TestCustomerAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {p0}, Ltest/module/golo/TestCustomerAction;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, action:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 139
    const-string/jumbo v7, "54434"

    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->pidByt(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;

    move-result-object v6

    .line 140
    .local v6, res2:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    if-eqz v6, :cond_0

    .line 141
    invoke-virtual {p0}, Ltest/module/golo/TestCustomerAction;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    .line 142
    .local v4, referManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->getPub_id()Ljava/lang/String;

    move-result-object v3

    .line 143
    const-string/jumbo v7, "golocustomer_publicid"

    invoke-virtual {v4, v7, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v7, "test_pidByt"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v3, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .end local v4           #referManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    .end local v6           #res2:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    :cond_0
    invoke-virtual {v0, v3, v11}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getGoloBindInfo(Ljava/lang/String;Z)Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;

    move-result-object v5

    .line 149
    .local v5, res:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;->getData()Ljava/util/List;

    move-result-object v2

    .line 151
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 154
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;->getCode()I

    move-result v7

    invoke-static {v7, v11}, Ltest/module/golo/TestCustomerAction;->assertEquals(II)V

    .line 156
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    :cond_1
    return-void

    .line 151
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    .line 152
    .local v1, bean:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    const-string/jumbo v8, "test_goloListBaseInfo"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public test_pidByt()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 113
    const-string/jumbo v3, "weige"

    const-string/jumbo v4, "111111"

    invoke-virtual {p0, v3, v4}, Ltest/module/golo/TestCustomerAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {p0}, Ltest/module/golo/TestCustomerAction;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, action:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
    const-string/jumbo v3, "54434"

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->pidByt(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;

    move-result-object v2

    .line 117
    .local v2, res:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {p0}, Ltest/module/golo/TestCustomerAction;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    .line 119
    .local v1, referManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    const-string/jumbo v3, "golocustomer_publicid"

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->getPub_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v3, "test_pidByt"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->getPub_id()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->getCode()I

    move-result v3

    invoke-static {v3, v6}, Ltest/module/golo/TestCustomerAction;->assertEquals(II)V

    .line 124
    .end local v1           #referManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    :cond_0
    return-void
.end method

.method public test_read()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 97
    const-string/jumbo v2, "weige"

    const-string/jumbo v3, "111111"

    invoke-virtual {p0, v2, v3}, Ltest/module/golo/TestCustomerAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {p0}, Ltest/module/golo/TestCustomerAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, action:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
    const-string/jumbo v2, "35091"

    const-string/jumbo v3, "54434"

    invoke-virtual {v0, v2, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->read(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;

    move-result-object v1

    .line 101
    .local v1, res:Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;
    if-eqz v1, :cond_0

    .line 102
    const-string/jumbo v2, "test_read"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;->getCode()I

    move-result v2

    invoke-static {v2, v5}, Ltest/module/golo/TestCustomerAction;->assertEquals(II)V

    .line 105
    :cond_0
    return-void
.end method
