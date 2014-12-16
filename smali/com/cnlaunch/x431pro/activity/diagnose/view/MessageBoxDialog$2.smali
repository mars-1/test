.class Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$2;
.super Ljava/lang/Object;
.source "MessageBoxDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->getProgerssDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Messenger;)Landroid/app/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->mService:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)Landroid/os/Messenger;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
