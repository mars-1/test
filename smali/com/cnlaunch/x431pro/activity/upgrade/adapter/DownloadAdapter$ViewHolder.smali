.class Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DownloadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field pb_progress_item:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

.field tv_name_item:Landroid/widget/TextView;

.field tv_state_item:Landroid/widget/TextView;

.field tv_version_item:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
