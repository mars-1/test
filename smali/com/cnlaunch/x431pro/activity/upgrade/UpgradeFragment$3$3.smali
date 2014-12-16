.class Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$3;
.super Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
.source "UpgradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$3;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    .line 391
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSuccess(ILjava/lang/Object;)V
    .locals 3
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 394
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->onSuccess(ILjava/lang/Object;)V

    .line 395
    packed-switch p1, :pswitch_data_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 397
    :pswitch_0
    if-eqz p2, :cond_0

    .line 398
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$3;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;)Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    move-result-object v0

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$3;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;)Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    move-result-object v1

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07058d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$3;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;)Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    move-result-object v0

    const/16 v1, 0x835

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->request(I)V

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
    .end packed-switch
.end method
