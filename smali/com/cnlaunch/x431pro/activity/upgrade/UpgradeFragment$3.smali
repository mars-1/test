.class Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;
.super Landroid/os/Handler;
.source "UpgradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->initUIHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    .line 288
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;)Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const v4, 0x7f070593

    const v11, 0x7f07002b

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 290
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$4(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_upgrade_num:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$6(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$7(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 297
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeTotal:I
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$8(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getUpgradeNum(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$7(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeTotal:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$8(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v2

    if-lez v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_upgrade_num:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$6(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    const v4, 0x7f070596

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mIsExpired:Z
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$9(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_remarks:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$10(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    :goto_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$7(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v2

    if-lez v2, :cond_3

    .line 309
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$11(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/RadioButton;

    move-result-object v2

    const v3, 0x7f0704e7

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(I)V

    .line 310
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$11(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 305
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_remarks:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$10(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 313
    :cond_3
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$11(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/RadioButton;

    move-result-object v2

    const v3, 0x7f0704e6

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(I)V

    .line 314
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$11(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 320
    :pswitch_2
    new-instance v1, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$1;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    const v5, 0x7f070594

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->freeDay:I
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$12(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$1;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .local v1, tipDialog:Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;
    invoke-virtual {v1, v11, v10, v9}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 329
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->show()V

    goto/16 :goto_0

    .line 336
    .end local v1           #tipDialog:Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;
    :pswitch_3
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 337
    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;)V

    .line 338
    const v3, 0x7f070595

    .line 337
    invoke-virtual {v2, v4, v3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show(II)V

    .line 340
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$13(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "expired_remind"

    invoke-virtual {v2, v3, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 344
    :pswitch_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2, v9}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$14(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;Ljava/util/List;)V

    .line 345
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->setList(Ljava/util/List;)V

    .line 346
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->notifyDataSetChanged()V

    .line 347
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->pull_refresh_listview:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 348
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$4(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I
    invoke-static {v2, v8}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$17(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;I)V

    .line 350
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeTotal:I
    invoke-static {v2, v8}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$18(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;I)V

    .line 351
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_upgrade_num:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$6(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$7(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 352
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeTotal:I
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$8(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 351
    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getUpgradeNum(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;
    invoke-static {v2, v9}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$19(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;)V

    .line 354
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 355
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "logout"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "token"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "isconflict"

    invoke-virtual {v2, v3, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 358
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "login_password"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "login_state"

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "if_auto_login"

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_5
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v2

    .line 363
    const v3, 0x7f070694

    .line 364
    const v4, 0x7f070695

    .line 362
    invoke-direct {v0, v2, v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;II)V

    .line 366
    .local v0, loginConflictDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    new-instance v2, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$2;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$2;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;)V

    .line 365
    invoke-virtual {v0, v11, v10, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 373
    const v2, 0x7f070029

    invoke-virtual {v0, v2, v10, v9}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 374
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    goto/16 :goto_0

    .line 380
    .end local v0           #loginConflictDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    :pswitch_5
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2, v9}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$14(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;Ljava/util/List;)V

    .line 381
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->setList(Ljava/util/List;)V

    .line 382
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->notifyDataSetChanged()V

    .line 383
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->pull_refresh_listview:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 384
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$4(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I
    invoke-static {v2, v8}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$17(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;I)V

    .line 386
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeTotal:I
    invoke-static {v2, v8}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$18(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;I)V

    .line 387
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_upgrade_num:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$6(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$7(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 388
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeTotal:I
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$8(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 387
    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getUpgradeNum(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$21(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    move-result-object v2

    if-nez v2, :cond_6

    .line 391
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$3;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$3;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;Landroid/content/Context;)V

    .line 407
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$3;->showLoginDialog()Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    move-result-object v3

    .line 391
    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;
    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$19(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;)V

    goto/16 :goto_0

    .line 410
    :cond_6
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$21(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->show()V

    goto/16 :goto_0

    .line 416
    :pswitch_6
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 417
    new-instance v2, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$4;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$4;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;Landroid/content/Context;)V

    .line 439
    const v3, 0x7f0704ec

    const v4, 0x7f070591

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$4;->show(II)V

    .line 441
    :cond_7
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;
    invoke-static {v2, v9}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$14(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;Ljava/util/List;)V

    .line 442
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->setList(Ljava/util/List;)V

    .line 443
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->notifyDataSetChanged()V

    .line 444
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$4(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I
    invoke-static {v2, v8}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$17(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;I)V

    .line 446
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeTotal:I
    invoke-static {v2, v8}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$18(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;I)V

    .line 447
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_upgrade_num:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$6(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$7(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 448
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeTotal:I
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$8(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 447
    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getUpgradeNum(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
