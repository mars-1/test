.class Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$7;
.super Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$7;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    .line 386
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSuccess(ILjava/lang/Object;)V
    .locals 4
    .parameter "requestCode"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 389
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->onSuccess(ILjava/lang/Object;)V

    .line 390
    packed-switch p1, :pswitch_data_0

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 392
    :pswitch_0
    if-eqz p2, :cond_0

    .line 393
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$7;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v1

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 394
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$7;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v1

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
    .end packed-switch
.end method
