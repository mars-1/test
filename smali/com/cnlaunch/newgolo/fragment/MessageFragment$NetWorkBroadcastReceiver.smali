.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$NetWorkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetWorkBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$NetWorkBroadcastReceiver;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Lcom/cnlaunch/newgolo/fragment/MessageFragment$NetWorkBroadcastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1166
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$NetWorkBroadcastReceiver;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1170
    const-string/jumbo v0, "MessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "intent.getAction:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$NetWorkBroadcastReceiver;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mWarningTips:Landroid/view/View;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$18(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Lcom/cnlaunch/newgolo/Tool/NetTool;->isNetConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    :cond_0
    return-void

    .line 1172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
