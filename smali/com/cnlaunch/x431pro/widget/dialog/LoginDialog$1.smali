.class Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "LoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog$1;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    .line 130
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog$1;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog$1;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->LoginBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->access$0(Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog$1;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->dismiss()V

    .line 138
    :cond_0
    return-void
.end method
