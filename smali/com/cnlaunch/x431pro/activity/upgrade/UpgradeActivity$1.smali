.class Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;

    .line 64
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, packageName:Ljava/lang/String;
    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "package:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->tag:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ACTION_PACKAGE_ADDED: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    .line 75
    .local v0, fragment:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    if-eqz v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->tag:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "ACTION_PACKAGE_ADDED: fragment is OK!"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->tag:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "ACTION_PACKAGE_ADDED: fragment is visible!"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0, v1, v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->updateAPKInstalledState(Ljava/lang/String;Z)V

    .line 105
    .end local v0           #fragment:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .restart local v1       #packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->tag:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ACTION_PACKAGE_REPLACED: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    .line 88
    .restart local v0       #fragment:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v0, v1, v6}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->updateAPKInstalledState(Ljava/lang/String;Z)V

    goto :goto_0

    .line 94
    .end local v0           #fragment:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1       #packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->tag:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ACTION_PACKAGE_REMOVED: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    .line 99
    .restart local v0       #fragment:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v0, v1, v7}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->updateAPKInstalledState(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
