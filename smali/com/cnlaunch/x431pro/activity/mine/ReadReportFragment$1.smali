.class Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment$1;
.super Landroid/os/Handler;
.source "ReadReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;

    .line 172
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 180
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 182
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->btn_print:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
