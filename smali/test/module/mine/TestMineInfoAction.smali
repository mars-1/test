.class public Ltest/module/mine/TestMineInfoAction;
.super Ltest/BaseTestCase;
.source "TestMineInfoAction.java"


# instance fields
.field defaultLanId:Ljava/lang/String;

.field lanId:Ljava/lang/String;

.field pwd:Ljava/lang/String;

.field serialNo:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ltest/BaseTestCase;-><init>()V

    .line 30
    const-string/jumbo v0, "weige"

    iput-object v0, p0, Ltest/module/mine/TestMineInfoAction;->userName:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "111111"

    iput-object v0, p0, Ltest/module/mine/TestMineInfoAction;->pwd:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "982690424200"

    iput-object v0, p0, Ltest/module/mine/TestMineInfoAction;->serialNo:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "1002"

    iput-object v0, p0, Ltest/module/mine/TestMineInfoAction;->lanId:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Ltest/module/mine/TestMineInfoAction;->defaultLanId:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public test_getCars()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v2, p0, Ltest/module/mine/TestMineInfoAction;->userName:Ljava/lang/String;

    iget-object v3, p0, Ltest/module/mine/TestMineInfoAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ltest/module/mine/TestMineInfoAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;

    invoke-virtual {p0}, Ltest/module/mine/TestMineInfoAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, action:Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;
    const-string/jumbo v2, "1002"

    const-string/jumbo v3, "4"

    invoke-virtual {v0, v2, v3}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getCars(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/CarsResponse;

    move-result-object v1

    .line 100
    .local v1, res:Lcom/cnlaunch/x431pro/module/mine/model/CarsResponse;
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/mine/model/CarsResponse;->getCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltest/module/mine/TestMineInfoAction;->assertEquals(II)V

    .line 103
    :cond_0
    return-void
.end method

.method public test_getCityList()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v2, p0, Ltest/module/mine/TestMineInfoAction;->userName:Ljava/lang/String;

    iget-object v3, p0, Ltest/module/mine/TestMineInfoAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ltest/module/mine/TestMineInfoAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v2, p0, Ltest/module/mine/TestMineInfoAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;
    const-string/jumbo v2, "zh"

    const-string/jumbo v3, "143105"

    invoke-virtual {v0, v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getCityList(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;

    move-result-object v1

    .line 173
    .local v1, res:Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;->getCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltest/module/mine/TestMineInfoAction;->assertEquals(II)V

    .line 176
    :cond_0
    return-void
.end method

.method public test_getClassification()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v2, p0, Ltest/module/mine/TestMineInfoAction;->userName:Ljava/lang/String;

    iget-object v3, p0, Ltest/module/mine/TestMineInfoAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ltest/module/mine/TestMineInfoAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;

    invoke-virtual {p0}, Ltest/module/mine/TestMineInfoAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, action:Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;
    const-string/jumbo v2, "1002"

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getClassification(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/ClassificationResponse;

    move-result-object v1

    .line 90
    .local v1, res:Lcom/cnlaunch/x431pro/module/mine/model/ClassificationResponse;
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/mine/model/ClassificationResponse;->getCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltest/module/mine/TestMineInfoAction;->assertEquals(II)V

    .line 93
    :cond_0
    return-void
.end method

.method public test_getCountryList()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v2, p0, Ltest/module/mine/TestMineInfoAction;->userName:Ljava/lang/String;

    iget-object v3, p0, Ltest/module/mine/TestMineInfoAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ltest/module/mine/TestMineInfoAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v2, p0, Ltest/module/mine/TestMineInfoAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;
    const-string/jumbo v2, "zh"

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getCountryList(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;

    move-result-object v1

    .line 153
    .local v1, res:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltest/module/mine/TestMineInfoAction;->assertEquals(II)V

    .line 156
    :cond_0
    return-void
.end method

.method public test_getProvinceList()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v2, p0, Ltest/module/mine/TestMineInfoAction;->userName:Ljava/lang/String;

    iget-object v3, p0, Ltest/module/mine/TestMineInfoAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ltest/module/mine/TestMineInfoAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v2, p0, Ltest/module/mine/TestMineInfoAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;
    const-string/jumbo v2, "zh"

    const-string/jumbo v3, "143"

    invoke-virtual {v0, v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getProvinceList(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;

    move-result-object v1

    .line 163
    .local v1, res:Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;
    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;->getCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltest/module/mine/TestMineInfoAction;->assertEquals(II)V

    .line 166
    :cond_0
    return-void
.end method

.method public test_getTechInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v2, p0, Ltest/module/mine/TestMineInfoAction;->userName:Ljava/lang/String;

    iget-object v3, p0, Ltest/module/mine/TestMineInfoAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ltest/module/mine/TestMineInfoAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;

    invoke-virtual {p0}, Ltest/module/mine/TestMineInfoAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, action:Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;
    const-string/jumbo v2, "1002"

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getTechInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/TechInfoResponse;

    move-result-object v1

    .line 44
    .local v1, res:Lcom/cnlaunch/x431pro/module/mine/model/TechInfoResponse;
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/mine/model/TechInfoResponse;->getCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltest/module/mine/TestMineInfoAction;->assertEquals(II)V

    .line 47
    :cond_0
    return-void
.end method

.method public test_modifyPassword()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 130
    const-string/jumbo v2, "easydiag"

    const-string/jumbo v3, "123123"

    invoke-virtual {p0, v2, v3}, Ltest/module/mine/TestMineInfoAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v2, p0, Ltest/module/mine/TestMineInfoAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;
    const-string/jumbo v2, "123123"

    const-string/jumbo v3, "111111"

    invoke-virtual {v0, v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->modifyPassWord(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    .line 133
    .local v1, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltest/module/mine/TestMineInfoAction;->assertEquals(II)V

    .line 136
    :cond_0
    return-void
.end method

.method public test_modifyTechInfo()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 107
    iget-object v2, p0, Ltest/module/mine/TestMineInfoAction;->userName:Ljava/lang/String;

    iget-object v3, p0, Ltest/module/mine/TestMineInfoAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ltest/module/mine/TestMineInfoAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;>;"
    new-instance v6, Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;

    invoke-direct {v6}, Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;-><init>()V

    .line 111
    .local v6, item:Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;->setAuto_area(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v2, "HONDA"

    invoke-virtual {v6, v2}, Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;->setAuto_code(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v2, "\u672c\u7530"

    invoke-virtual {v6, v2}, Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;->setAuto_name(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v2, "\u5168\u8f66\u7535\u63a7\u7cfb\u7edf ,\u53d1\u52a8\u673a\u63a7\u5236\u7cfb\u7edf,\u81ea\u52a8\u53d8\u901f\u7bb1\u63a7\u5236\u7edf"

    invoke-virtual {v6, v2}, Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;->setEle_skill(Ljava/lang/String;)V

    .line 115
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/JsonMananger;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->beanToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, json:Ljava/lang/String;
    const-string/jumbo v2, "json"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Ltest/module/mine/TestMineInfoAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, userId:Ljava/lang/String;
    new-instance v0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;

    invoke-virtual {p0}, Ltest/module/mine/TestMineInfoAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, action:Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;
    const-string/jumbo v2, "abc"

    const-string/jumbo v3, "launch"

    const-string/jumbo v5, "2"

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->modifyTechInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/ModifyTechInfoResponse;

    move-result-object v8

    .line 123
    .local v8, res:Lcom/cnlaunch/x431pro/module/mine/model/ModifyTechInfoResponse;
    if-eqz v8, :cond_0

    .line 124
    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/mine/model/ModifyTechInfoResponse;->getCode()I

    move-result v2

    invoke-static {v2, v9}, Ltest/module/mine/TestMineInfoAction;->assertEquals(II)V

    .line 126
    :cond_0
    return-void
.end method

.method public test_setExpertInfo()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v2, p0, Ltest/module/mine/TestMineInfoAction;->userName:Ljava/lang/String;

    iget-object v3, p0, Ltest/module/mine/TestMineInfoAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ltest/module/mine/TestMineInfoAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;>;"
    new-instance v6, Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;

    invoke-direct {v6}, Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;-><init>()V

    .line 56
    .local v6, item:Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;->setAuto_area(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v2, "HONDA"

    invoke-virtual {v6, v2}, Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;->setAuto_code(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v2, "\u672c\u7530"

    invoke-virtual {v6, v2}, Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;->setAuto_name(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v2, "\u5168\u8f66\u7535\u63a7\u7cfb\u7edf ,\u53d1\u52a8\u673a\u63a7\u5236\u7cfb\u7edf,\u81ea\u52a8\u53d8\u901f\u7bb1\u63a7\u5236\u7edf"

    invoke-virtual {v6, v2}, Lcom/cnlaunch/x431pro/module/mine/model/ExpertParam;->setEle_skill(Ljava/lang/String;)V

    .line 60
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/JsonMananger;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->beanToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, json:Ljava/lang/String;
    new-instance v0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;

    invoke-virtual {p0}, Ltest/module/mine/TestMineInfoAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, action:Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;
    invoke-virtual {p0}, Ltest/module/mine/TestMineInfoAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, userId:Ljava/lang/String;
    const-string/jumbo v2, "4"

    const-string/jumbo v3, "zhavsvhhhf"

    const-string/jumbo v4, "launch"

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->setExpertInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/ExpertInfoResponse;

    move-result-object v8

    .line 68
    .local v8, res:Lcom/cnlaunch/x431pro/module/mine/model/ExpertInfoResponse;
    if-eqz v8, :cond_0

    .line 69
    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/mine/model/ExpertInfoResponse;->getCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltest/module/mine/TestMineInfoAction;->assertEquals(II)V

    .line 72
    :cond_0
    return-void
.end method

.method public test_setSex()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 140
    const-string/jumbo v2, "liangpeishe1"

    const-string/jumbo v3, "111111"

    invoke-virtual {p0, v2, v3}, Ltest/module/mine/TestMineInfoAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v2, p0, Ltest/module/mine/TestMineInfoAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;
    const-string/jumbo v2, "2"

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->setSex(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    .line 143
    .local v1, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltest/module/mine/TestMineInfoAction;->assertEquals(II)V

    .line 146
    :cond_0
    return-void
.end method

.method public test_setUserHead()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v3, p0, Ltest/module/mine/TestMineInfoAction;->userName:Ljava/lang/String;

    iget-object v4, p0, Ltest/module/mine/TestMineInfoAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Ltest/module/mine/TestMineInfoAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;

    invoke-virtual {p0}, Ltest/module/mine/TestMineInfoAction;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, action:Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;
    const-string/jumbo v1, "/storage/sdcard0/cnlaunch/ic_launcher.png"

    .line 79
    .local v1, path:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->setUserHead(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/UserHeadResponse;

    move-result-object v2

    .line 80
    .local v2, res:Lcom/cnlaunch/x431pro/module/mine/model/UserHeadResponse;
    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/mine/model/UserHeadResponse;->getCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ltest/module/mine/TestMineInfoAction;->assertEquals(II)V

    .line 83
    :cond_0
    return-void
.end method
