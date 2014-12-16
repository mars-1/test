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

    .line 217
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const v8, 0x7f0704ec

    const/16 v10, 0x32

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 219
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    .line 222
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 223
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f07058f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    :cond_1
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$1;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$1;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)V

    .line 231
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$1;->start()V

    .line 233
    :cond_2
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    const v6, 0x7f070580

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 234
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f02052c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 236
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 237
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v9, v1, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 238
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

    .line 239
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 245
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

    .line 246
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 245
    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getUpgradeNum(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 250
    :pswitch_2
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsHasInstallManually:Z
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$18(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 251
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$2;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$2;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 257
    const v5, 0x7f07058e

    invoke-virtual {v4, v8, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$2;->show(II)V

    goto/16 :goto_0

    .line 259
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

    .line 260
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$3;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$3;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 267
    const v5, 0x7f07058c

    .line 266
    invoke-virtual {v4, v8, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$3;->show(II)V

    goto/16 :goto_0

    .line 269
    :cond_4
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$20(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_5

    .line 270
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$4;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$4;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 277
    const v5, 0x7f07058b

    .line 276
    invoke-virtual {v4, v8, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$4;->show(II)V

    goto/16 :goto_0

    .line 279
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

    .line 280
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "need_refresh"

    invoke-virtual {v5, v6, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 281
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 343
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->showSuccessDialog()V

    goto/16 :goto_0

    .line 348
    :pswitch_3
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 349
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "logout"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 350
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "token"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "isconflict"

    invoke-virtual {v6, v7, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 352
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "login_password"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "login_state"

    const-string/jumbo v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "if_auto_login"

    const-string/jumbo v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_6
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f070580

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 357
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 358
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02052c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 359
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v9, v1, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 361
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 363
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    .line 364
    const v6, 0x7f070694

    .line 365
    const v7, 0x7f070695

    .line 363
    invoke-direct {v2, v5, v6, v7}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;II)V

    .line 366
    .local v2, loginConflictDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const v5, 0x7f07002b

    .line 367
    new-instance v6, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$6;

    invoke-direct {v6, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$6;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)V

    .line 366
    invoke-virtual {v2, v5, v4, v6}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 374
    const v5, 0x7f070029

    invoke-virtual {v2, v5, v4, v9}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 375
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    goto/16 :goto_0

    .line 379
    .end local v2           #loginConflictDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    :pswitch_4
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$7;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$7;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 394
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$7;->showLoginDialog()Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    goto/16 :goto_0

    .line 399
    :pswitch_5
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initManager()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$23(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    .line 400
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;
    invoke-static {v4, v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$24(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Ljava/lang/Integer;)V

    .line 401
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    const v6, 0x7f07057e

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 402
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f02052d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 403
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 404
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v9, v1, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 405
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initData()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$25(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    goto/16 :goto_0

    .line 411
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_6
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/cnlaunch/framework/network/download/DownloadManager;->setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V

    .line 412
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/framework/network/download/DownloadManager;->close()V

    .line 413
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$26(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 414
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    const v6, 0x7f07057f

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 415
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f02052b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 416
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 417
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v9, v1, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 422
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_7
    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$8;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$8;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 428
    const v5, 0x7f07058d

    invoke-virtual {v4, v8, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$8;->show(II)V

    goto/16 :goto_0

    .line 432
    :pswitch_8
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$27(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 436
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

    .line 440
    :pswitch_a
    new-instance v3, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$9;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$9;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V

    .line 468
    .local v3, msgBox:Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;
    invoke-virtual {v3, v8}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setTitle(I)V

    .line 469
    const v6, 0x7f07059a

    invoke-virtual {v3, v6}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setMessage(I)V

    .line 470
    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setCancelable(Z)V

    .line 471
    const v6, 0x7f0704e3

    invoke-virtual {v3, v6, v4, v9}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 472
    const v6, 0x7f070753

    invoke-virtual {v3, v6, v4, v9}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 473
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setButtonBackground(I)V

    .line 474
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->show()V

    .line 476
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f070580

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 477
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 478
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02052c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 479
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 480
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v9, v1, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 481
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 486
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #msgBox:Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;
    :pswitch_b
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/cnlaunch/framework/network/download/DownloadManager;->setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V

    .line 487
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/framework/network/download/DownloadManager;->close()V

    .line 488
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$26(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 489
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

    .line 496
    new-instance v6, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0704e0

    invoke-virtual {v6, v8, v7}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show(II)V

    .line 497
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f070580

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 498
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 499
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02052c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 500
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 501
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v9, v1, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 502
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 489
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 490
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v7

    if-ne v4, v7, :cond_9

    .line 491
    const/16 v7, 0x64

    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setProgress(I)V

    .line 492
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 493
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$27(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 219
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
