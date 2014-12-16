.class Lcom/cnlaunch/newgolo/activity/MessageActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/activity/MessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/MessageActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/activity/MessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/MessageActivity;

    .line 128
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "login_cancle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/MessageActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->finish()V

    .line 135
    :cond_0
    return-void
.end method
