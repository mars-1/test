.class Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;

    .line 374
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 377
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "replace_printSetFragmet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;

    const-class v2, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->replaceFragment(Ljava/lang/String;I)V

    .line 381
    :cond_0
    return-void
.end method
