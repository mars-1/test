.class Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonInformationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;

    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 85
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "login_state"

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->login_state:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;Ljava/lang/String;)V

    .line 86
    return-void
.end method
