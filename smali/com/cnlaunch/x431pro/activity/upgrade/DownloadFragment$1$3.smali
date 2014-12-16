.class Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$3;
.super Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
.source "DownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$3;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    .line 267
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->dismiss()V

    .line 271
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$3;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v0

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->refreshUI()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$19(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    .line 272
    return-void
.end method
