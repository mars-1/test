.class Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SerialNumberFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    .line 329
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 333
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v4, "logout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 335
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "serialNo"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, currentSerialNo:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->clickSerialNo:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->clickSerialNo:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 338
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->clickSerialNo:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Ljava/lang/String;

    move-result-object v1

    .line 339
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "serialNo"

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->clickSerialNo:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "need_refresh"

    invoke-virtual {v4, v5, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 342
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->clickSerialNo:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->rtuCheck(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;Ljava/lang/String;)V

    .line 343
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    const-string/jumbo v5, ""

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->clickSerialNo:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;Ljava/lang/String;)V

    .line 345
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->loadAll()Ljava/util/List;

    move-result-object v3

    .line 346
    .local v3, serialNoList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 354
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 355
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->dismiss()V

    .line 358
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 359
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->initViews()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)V

    .line 366
    .end local v1           #currentSerialNo:Ljava/lang/String;
    .end local v3           #serialNoList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    :cond_2
    :goto_1
    return-void

    .line 346
    .restart local v1       #currentSerialNo:Ljava/lang/String;
    .restart local v3       #serialNoList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 347
    .local v2, entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 348
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 349
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 351
    :cond_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 361
    .end local v1           #currentSerialNo:Ljava/lang/String;
    .end local v2           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    .end local v3           #serialNoList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    :cond_5
    const-string/jumbo v4, "login_change_serialno"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 363
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->initViews()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)V

    goto :goto_1
.end method
