.class Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$1;
.super Landroid/os/Handler;
.source "MyReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    .line 293
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 295
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 297
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_remote_diagnosis_report:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->remoteAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;)V

    .line 298
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->lv_myreport:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->remoteAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 299
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->tv_remote_diagnosis_report:Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_remote_diagnosis_report:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
