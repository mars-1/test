.class Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/activity/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/activity/MainActivity;Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;-><init>(Lcom/cnlaunch/x431pro/activity/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .parameter "params"

    .prologue
    .line 619
    new-instance v2, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;-><init>()V

    .line 621
    .local v2, configInfo:Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$2(Lcom/cnlaunch/x431pro/activity/MainActivity;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "token"

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/x431pro/utils/network/NetWorkUtils;->isNetConnected(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 624
    const/16 v14, -0x190

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 707
    :goto_0
    return-object v14

    .line 626
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, " \u68c0\u6d4b\u5230\u7f51\u7edc \u53d1\u9001\u914d\u7f6e\u4e0b\u53d1\u8bf7\u6c42 "

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    new-instance v1, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;-><init>(Landroid/content/Context;)V

    .line 629
    .local v1, action:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "isRelease"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v7

    .line 630
    .local v7, isRelease:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "current_country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 631
    .local v9, lan:Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 633
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getIp()Ljava/lang/String;

    move-result-object v5

    .line 634
    .local v5, ip:Ljava/lang/String;
    const-string/jumbo v14, ""

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    if-eqz v5, :cond_5

    .line 635
    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/Tools;->checkIpSuccess(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 636
    const-string/jumbo v14, "configLaunch"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "---->ip\u89e3\u6790\u6210\u529f"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getIpArea(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;

    move-result-object v12

    .line 638
    .local v12, res:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;->getCode()I

    move-result v14

    if-nez v14, :cond_1

    .line 639
    invoke-virtual {v12}, Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;->getData()Lcom/cnlaunch/x431pro/module/config/model/IpAreaData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cnlaunch/x431pro/module/config/model/IpAreaData;->getCountry_id()Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, country_id:Ljava/lang/String;
    const-string/jumbo v14, "configLaunch"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "---->\u5730\u533a\u89e3\u6790\u6210\u529f\uff1a"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/MainActivity;->initConfigInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;
    invoke-static {v14, v3}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$11(Lcom/cnlaunch/x431pro/activity/MainActivity;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;

    move-result-object v2

    .line 678
    .end local v3           #country_id:Ljava/lang/String;
    .end local v5           #ip:Ljava/lang/String;
    .end local v12           #res:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    :goto_1
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->getConfigurl()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 679
    const/16 v14, -0x3e7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 644
    .restart local v5       #ip:Ljava/lang/String;
    .restart local v12       #res:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    :cond_1
    const-string/jumbo v14, "configLaunch"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "---->\u5730\u533a\u89e3\u6790\u5931\u8d25"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    const-string/jumbo v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    if-eqz v9, :cond_2

    const-string/jumbo v14, "CN"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string/jumbo v14, "CN"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 647
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const-string/jumbo v15, "US"

    #calls: Lcom/cnlaunch/x431pro/activity/MainActivity;->initConfigInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;
    invoke-static {v14, v15}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$11(Lcom/cnlaunch/x431pro/activity/MainActivity;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;

    move-result-object v2

    .line 648
    goto :goto_1

    .line 649
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const-string/jumbo v15, "CN"

    #calls: Lcom/cnlaunch/x431pro/activity/MainActivity;->initConfigInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;
    invoke-static {v14, v15}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$11(Lcom/cnlaunch/x431pro/activity/MainActivity;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;

    move-result-object v2

    .line 652
    goto :goto_1

    .line 653
    .end local v12           #res:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    :cond_3
    const-string/jumbo v14, "configLaunch"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "---->ip\u89e3\u6790\u5931\u8d25"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    const-string/jumbo v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    if-eqz v9, :cond_4

    const-string/jumbo v14, "CN"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string/jumbo v14, "CN"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 656
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const-string/jumbo v15, "US"

    #calls: Lcom/cnlaunch/x431pro/activity/MainActivity;->initConfigInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;
    invoke-static {v14, v15}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$11(Lcom/cnlaunch/x431pro/activity/MainActivity;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;

    move-result-object v2

    .line 657
    goto/16 :goto_1

    .line 658
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const-string/jumbo v15, "CN"

    #calls: Lcom/cnlaunch/x431pro/activity/MainActivity;->initConfigInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;
    invoke-static {v14, v15}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$11(Lcom/cnlaunch/x431pro/activity/MainActivity;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;

    move-result-object v2

    .line 661
    goto/16 :goto_1

    .line 662
    :cond_5
    const-string/jumbo v14, "configLaunch"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "---->ip\u89e3\u6790\u5931\u8d25"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    const-string/jumbo v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    if-eqz v9, :cond_6

    const-string/jumbo v14, "CN"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string/jumbo v14, "CN"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 665
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const-string/jumbo v15, "US"

    #calls: Lcom/cnlaunch/x431pro/activity/MainActivity;->initConfigInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;
    invoke-static {v14, v15}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$11(Lcom/cnlaunch/x431pro/activity/MainActivity;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;

    move-result-object v2

    .line 666
    goto/16 :goto_1

    .line 667
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const-string/jumbo v15, "CN"

    #calls: Lcom/cnlaunch/x431pro/activity/MainActivity;->initConfigInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;
    invoke-static {v14, v15}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$11(Lcom/cnlaunch/x431pro/activity/MainActivity;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;

    move-result-object v2

    .line 671
    goto/16 :goto_1

    .line 672
    .end local v5           #ip:Ljava/lang/String;
    :cond_7
    const-string/jumbo v14, "http://golo.test.x431.com:8008/dev/?action=config_service.urls"

    invoke-virtual {v2, v14}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->setConfigurl(Ljava/lang/String;)V

    .line 673
    const-string/jumbo v14, "1"

    invoke-virtual {v2, v14}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->setConfiglan(Ljava/lang/String;)V

    .line 674
    const-string/jumbo v14, "CN"

    invoke-virtual {v2, v14}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->setCountry_id(Ljava/lang/String;)V

    .line 675
    const-string/jumbo v14, "configLaunch"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "---->\u6d4b\u8bd5\u73af\u5883\uff1a\u56fd\u5185"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 706
    .end local v1           #action:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;
    .end local v7           #isRelease:Z
    .end local v9           #lan:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 707
    .local v4, e:Lcom/cnlaunch/framework/network/http/HttpException;
    const/16 v14, -0x3e7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 682
    .end local v4           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .restart local v1       #action:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;
    .restart local v7       #isRelease:Z
    .restart local v9       #lan:Ljava/lang/String;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->isUpdateConfig()Z

    move-result v8

    .line 683
    .local v8, isUpdate:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "current_country"

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 685
    .local v11, oldCountryId:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->getCountry_id()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v6, 0x0

    .line 686
    .local v6, isChange:Z
    :goto_2
    const-string/jumbo v14, "configLaunch"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "loading ["

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->getConfiglan()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->getCountry_id()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    if-nez v8, :cond_9

    if-eqz v6, :cond_b

    .line 688
    :cond_9
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->getConfigurl()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "0.0.0"

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->getConfiglan()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getConfigService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;

    move-result-object v13

    .line 689
    .local v13, response:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getCode()I

    move-result v14

    if-nez v14, :cond_c

    .line 691
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "current_country"

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->getCountry_id()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {v13}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getData()Lcom/cnlaunch/x431pro/module/config/model/ConfigData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cnlaunch/x431pro/module/config/model/ConfigData;->getUrls()Ljava/util/List;

    move-result-object v10

    .line 693
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->saveConfig(Ljava/util/List;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 694
    invoke-static {}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->getInstance()Lcom/cnlaunch/golo3/dao/InterfaceDao;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    invoke-virtual {v15, v10}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getInterfaceUrlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->update(Ljava/util/List;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->copyAssetsFile(Landroid/content/Context;)V

    .line 697
    const/16 v14, 0xc8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 685
    .end local v6           #isChange:Z
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    .end local v13           #response:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 702
    .restart local v6       #isChange:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->copyAssetsFile(Landroid/content/Context;)V

    .line 703
    const/16 v14, 0xc8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 705
    .restart local v13       #response:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    :cond_c
    const/16 v14, -0x3e7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto/16 :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 714
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 715
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 731
    :goto_0
    :sswitch_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "isFirstRun"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 732
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$2(Lcom/cnlaunch/x431pro/activity/MainActivity;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "login_username"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, username:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$2(Lcom/cnlaunch/x431pro/activity/MainActivity;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "login_password"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, password:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$2(Lcom/cnlaunch/x431pro/activity/MainActivity;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "if_auto_login"

    const-string/jumbo v6, "1"

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, autoLogin:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 736
    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;-><init>(Landroid/content/Context;)V

    .line 737
    .local v1, lf:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
    invoke-virtual {v1, v3, v2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->Login(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .end local v0           #autoLogin:Ljava/lang/String;
    .end local v1           #lf:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
    .end local v2           #password:Ljava/lang/String;
    .end local v3           #username:Ljava/lang/String;
    :cond_0
    return-void

    .line 718
    :sswitch_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0704dd

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 715
    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_0
        -0x190 -> :sswitch_1
    .end sparse-switch
.end method
