.class Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$1;
.super Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;
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
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$1;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    .line 320
    invoke-direct {p0, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doingFinish(IZ)V
    .locals 2
    .parameter "button"
    .parameter "isChecked"

    .prologue
    .line 323
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$1;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;)Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    move-result-object v0

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$13(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "expired_remind"

    invoke-virtual {v0, v1, p2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 326
    :cond_0
    return-void
.end method
