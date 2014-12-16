.class Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;
.super Landroid/os/Handler;
.source "DownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initUIHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    .line 224
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const v8, 0x7f0704ea

    const/16 v10, 0x32

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 226
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    .line 229
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 230
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f07058d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    :cond_1
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$1;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$1;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)V

    .line 238
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$1;->start()V

    .line 240
    :cond_2
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    const v6, 0x7f07057e

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 241
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 242
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f020528

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 243
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 244
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v9, v1, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_0

    .line 246
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 252
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tv_statistics:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$17(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 253
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 252
    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getUpgradeNum(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 257
    :pswitch_2
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsHasInstallManually:Z
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$18(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 258
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$2;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$2;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 264
    const v5, 0x7f07058c

    invoke-virtual {v4, v8, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$2;->show(II)V

    goto/16 :goto_0

    .line 266
    :cond_3
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$20(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$20(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadCount:Ljava/lang/Integer;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$21(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 267
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$3;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$3;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 274
    const v5, 0x7f07058a

    .line 273
    invoke-virtual {v4, v8, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$3;->show(II)V

    goto/16 :goto_0

    .line 276
    :cond_4
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$20(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_5

    .line 277
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$4;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$4;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 284
    const v5, 0x7f070589

    .line 283
    invoke-virtual {v4, v8, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$4;->show(II)V

    goto/16 :goto_0

    .line 286
    :cond_5
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 287
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "need_refresh"

    invoke-virtual {v5, v6, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 288
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 350
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->showSuccessDialog()V

    goto/16 :goto_0

    .line 355
    :pswitch_3
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 356
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "logout"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 357
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "token"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "isconflict"

    invoke-virtual {v6, v7, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 359
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "login_password"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "login_state"

    const-string/jumbo v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "if_auto_login"

    const-string/jumbo v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_6
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f07057e

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 364
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 365
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020528

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 366
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 367
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v9, v1, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 370
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    .line 371
    const v6, 0x7f070692

    .line 372
    const v7, 0x7f070693

    .line 370
    invoke-direct {v2, v5, v6, v7}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;II)V

    .line 373
    .local v2, loginConflictDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const v5, 0x7f070044

    .line 374
    new-instance v6, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$6;

    invoke-direct {v6, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$6;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)V

    .line 373
    invoke-virtual {v2, v5, v4, v6}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 381
    const v5, 0x7f070042

    invoke-virtual {v2, v5, v4, v9}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 382
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    goto/16 :goto_0

    .line 386
    .end local v2           #loginConflictDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    :pswitch_4
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$7;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$7;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 401
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$7;->showLoginDialog()Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    goto/16 :goto_0

    .line 406
    :pswitch_5
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initManager()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$23(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    .line 407
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;
    invoke-static {v4, v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Ljava/lang/Integer;)V

    .line 408
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    const v6, 0x7f07057c

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 409
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f020529

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 410
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 411
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v9, v1, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 412
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initData()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    goto/16 :goto_0

    .line 418
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_6
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/cnlaunch/framework/network/download/DownloadManager;->setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V

    .line 419
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/framework/network/download/DownloadManager;->close()V

    .line 420
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$26(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 421
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    const v6, 0x7f07057d

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 422
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f020527

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 423
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 424
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v9, v1, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 429
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_7
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$8;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$8;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 435
    const v5, 0x7f07058b

    invoke-virtual {v4, v8, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$8;->show(II)V

    goto/16 :goto_0

    .line 439
    :pswitch_8
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$27(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 443
    :pswitch_9
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_8

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_1

    .line 447
    :pswitch_a
    new-instance v3, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$9;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$9;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 475
    .local v3, msgBox:Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;
    invoke-virtual {v3, v8}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setTitle(I)V

    .line 476
    const v6, 0x7f070598

    invoke-virtual {v3, v6}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setMessage(I)V

    .line 477
    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setCancelable(Z)V

    .line 478
    const v6, 0x7f0704e1

    invoke-virtual {v3, v6, v4, v9}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 479
    const v6, 0x7f070751

    invoke-virtual {v3, v6, v4, v9}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 480
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setButtonBackground(I)V

    .line 481
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->show()V

    .line 483
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f07057e

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 484
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 485
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020528

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 486
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 487
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v9, v1, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 493
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #msgBox:Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;
    :pswitch_b
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/cnlaunch/framework/network/download/DownloadManager;->setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V

    .line 494
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/framework/network/download/DownloadManager;->close()V

    .line 495
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$26(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 496
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_a

    .line 503
    new-instance v6, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0704de

    invoke-virtual {v6, v8, v7}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show(II)V

    .line 504
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f07057e

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 505
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 506
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020528

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 507
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 508
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v9, v1, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 509
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 496
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 497
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v7

    if-ne v4, v7, :cond_9

    .line 498
    const/16 v7, 0x64

    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setProgress(I)V

    .line 499
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 500
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$27(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 226
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
