.class Lcom/cnlaunch/x431pro/activity/mine/MineFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/MineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/MineFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/MineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MineFragment;

    .line 99
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MineFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_logout:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/MineFragment;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f070629

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string/jumbo v1, "logout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MineFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_logout:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/MineFragment;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f070627

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
