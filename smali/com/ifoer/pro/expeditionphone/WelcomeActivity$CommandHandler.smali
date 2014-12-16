.class Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;
.super Landroid/os/Handler;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifoer/pro/expeditionphone/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;


# direct methods
.method public constructor <init>(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    .line 345
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 346
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 350
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 351
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 353
    :pswitch_0
    const-string/jumbo v14, "WelcomeActivity"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "REQ_INIT_CODE start"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$0(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v15

    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v15

    #setter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;
    invoke-static {v14, v15}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$1(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$0(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "serialNo"

    invoke-virtual {v14, v15}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 363
    .local v12, serialNo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$0(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "serialNo_Prefix"

    invoke-virtual {v14, v15}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 364
    .local v13, serialNo_Prefix:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$2(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->deleteAll()V

    .line 369
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getLocalSerialList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 370
    .local v6, localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v7, localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 373
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_4

    .line 379
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 380
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 381
    new-instance v2, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .end local v2           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-direct {v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;-><init>()V

    .line 382
    .restart local v2       #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    const-string/jumbo v14, ""

    invoke-virtual {v2, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setCc(Ljava/lang/String;)V

    .line 383
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 384
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 385
    const/4 v14, 0x0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setSerialNo(Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$0(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v15

    const-string/jumbo v16, "serialNo"

    const/4 v14, 0x0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$2(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->insert(Ljava/lang/Object;)J

    .line 426
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "need_refresh"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 429
    .end local v2           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    .end local v6           #localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    const/4 v15, 0x1

    #setter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->isRequest:Z
    invoke-static {v14, v15}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$3(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;Z)V

    .line 430
    const-string/jumbo v14, "WelcomeActivity"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "REQ_INIT_CODE end isTimeOut="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->isTimeOut:Z
    invoke-static/range {v18 .. v18}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$4(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->isTimeOut:Z
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$4(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    invoke-virtual {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->startHome()V

    goto/16 :goto_0

    .line 373
    .restart local v2       #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    .restart local v6       #localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 374
    .local v1, bean:Ljava/lang/String;
    invoke-virtual {v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 375
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 390
    .end local v1           #bean:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$0(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "preSerialNo"

    invoke-virtual {v14, v15}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 391
    .local v10, preSerialNo:Ljava/lang/String;
    const/4 v5, 0x0

    .line 393
    .local v5, isFindMatchSeriaNo:Z
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 394
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-lt v4, v14, :cond_7

    .line 403
    .end local v4           #i:I
    :goto_3
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_2

    .line 404
    new-instance v2, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .end local v2           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-direct {v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;-><init>()V

    .line 405
    .restart local v2       #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    const-string/jumbo v14, ""

    invoke-virtual {v2, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setCc(Ljava/lang/String;)V

    .line 406
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 407
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 408
    if-nez v5, :cond_a

    .line 409
    if-nez v4, :cond_6

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$0(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v15

    const-string/jumbo v16, "serialNo"

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 419
    :cond_6
    :goto_5
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setSerialNo(Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$2(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->insert(Ljava/lang/Object;)J

    .line 403
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 395
    :cond_7
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 396
    const/4 v5, 0x1

    .line 397
    goto :goto_3

    .line 394
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 401
    .end local v4           #i:I
    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    .line 414
    .restart local v4       #i:I
    :cond_a
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$0(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v15

    const-string/jumbo v16, "serialNo"

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 441
    .end local v2           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    .end local v4           #i:I
    .end local v5           #isFindMatchSeriaNo:Z
    .end local v6           #localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #preSerialNo:Ljava/lang/String;
    .end local v12           #serialNo:Ljava/lang/String;
    .end local v13           #serialNo_Prefix:Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #calls: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->createShortCut()V
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$5(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)V

    .line 442
    const-string/jumbo v14, "WelcomeActivity"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "REQ_CREATE_SHORTCUT start"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mCommandHandler:Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$6(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;

    move-result-object v14

    const/16 v15, 0x3f2

    invoke-virtual {v14, v15}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 444
    .local v8, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mCommandHandler:Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$6(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 448
    .end local v8           #message:Landroid/os/Message;
    :pswitch_2
    const-string/jumbo v14, "WelcomeActivity"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "REQ_CHECK_FIRST_RUN_WITH_CACHE start"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$0(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "isFirstRunWithCache"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v3

    .line 452
    .local v3, firstRun:Z
    if-eqz v3, :cond_b

    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    invoke-virtual {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14}, Landroid/provider/Browser;->getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v11

    .line 454
    .local v11, result:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$0(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v11}, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper;->addBookMarks(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 457
    .end local v3           #firstRun:Z
    .end local v11           #result:Landroid/database/Cursor;
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mCommandHandler:Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$6(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;

    move-result-object v14

    const/16 v15, 0x3f1

    invoke-virtual {v14, v15}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 458
    .local v9, messageReqInitCode:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mCommandHandler:Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;
    invoke-static {v14}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$6(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x3f0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
