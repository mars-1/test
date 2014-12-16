.class Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$1;
.super Landroid/os/Handler;
.source "WebSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;

    .line 192
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 209
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 200
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
