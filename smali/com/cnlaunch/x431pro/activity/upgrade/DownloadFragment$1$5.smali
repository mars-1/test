.class Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;
.super Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;
.source "DownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    .line 288
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public oneOnClickListener()V
    .locals 9

    .prologue
    const/16 v8, 0x32

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 291
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v4

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    const v5, 0x7f07057e

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 292
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 293
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020528

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 294
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v6, v6, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v4

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v7, v0, v7, v7}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v4

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$15(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v5

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 297
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v4

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 300
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v4

    .line 302
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 303
    .local v2, fragmentManager:Landroid/app/FragmentManager;
    if-eqz v2, :cond_1

    .line 305
    :try_start_0
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v2           #fragmentManager:Landroid/app/FragmentManager;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v4

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$22(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 313
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "softs_updated"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v4

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$22(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/cnlaunch/x431pro/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v4

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$22(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v4

    const v5, 0x7f0d02d8

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    .line 318
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 306
    .restart local v2       #fragmentManager:Landroid/app/FragmentManager;
    :catch_0
    move-exception v1

    .line 307
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public twoOnClickListener()V
    .locals 4

    .prologue
    .line 332
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v2

    .line 334
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 335
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    if-eqz v1, :cond_0

    .line 337
    :try_start_0
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v1           #fragmentManager:Landroid/app/FragmentManager;
    :cond_0
    :goto_0
    return-void

    .line 338
    .restart local v1       #fragmentManager:Landroid/app/FragmentManager;
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fragmentManager:Landroid/app/FragmentManager;
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v2

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$22(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$5;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v2

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$22(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v2

    .line 345
    const v3, 0x7f0d02da

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    goto :goto_0
.end method
