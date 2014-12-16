.class Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$3;
.super Ljava/lang/Object;
.source "DownloadBinActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 69
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$10(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07056b

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 72
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
