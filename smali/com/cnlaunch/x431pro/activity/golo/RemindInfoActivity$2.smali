.class Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "RemindInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    .line 571
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 574
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "login_cancle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->finish()V

    .line 578
    :cond_0
    return-void
.end method
