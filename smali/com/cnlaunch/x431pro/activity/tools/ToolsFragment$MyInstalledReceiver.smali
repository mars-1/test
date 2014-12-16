.class public Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ToolsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyInstalledReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;->this$0:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 202
    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, packageName:Ljava/lang/String;
    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const-string/jumbo v2, "package:"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;->this$0:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->installToolNames:[Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->access$0(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_4

    .line 214
    .end local v1           #packageName:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 215
    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    .line 214
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 215
    if-eqz v2, :cond_3

    .line 216
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .restart local v1       #packageName:Ljava/lang/String;
    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    const-string/jumbo v2, "package:"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;->this$0:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->installToolNames:[Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->access$0(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_2
    if-lt v2, v5, :cond_6

    .line 227
    .end local v1           #packageName:Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .line 207
    .restart local v1       #packageName:Ljava/lang/String;
    :cond_4
    aget-object v0, v4, v2

    .line 208
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 209
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;->this$0:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->access$1(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 207
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v0           #name:Ljava/lang/String;
    :cond_6
    aget-object v0, v4, v2

    .line 221
    .restart local v0       #name:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 222
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;->this$0:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->access$1(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 220
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
