.class Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$1;
.super Landroid/os/Handler;
.source "WebReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;

    .line 116
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 130
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 133
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
