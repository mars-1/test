.class Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$1;
.super Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;
.source "CheckServerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    .line 276
    invoke-direct {p0, p2}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public networkIsConnected(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "networkInfo"

    .prologue
    const/4 v1, 0x1

    .line 292
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$4(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->connFlag:Z
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$5(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;Z)V

    .line 294
    return-void
.end method

.method public networkIsDisconnected(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "networkInfo"

    .prologue
    const/4 v1, 0x0

    .line 279
    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$4(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->connFlag:Z
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$5(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;Z)V

    .line 287
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$4(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
