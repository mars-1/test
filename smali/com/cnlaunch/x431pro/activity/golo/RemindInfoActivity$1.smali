.class Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;
.super Landroid/os/Handler;
.source "RemindInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    .line 95
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    :pswitch_0
    return-void

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$0(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$0(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$0(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$1(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$2(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706c1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$0(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$0(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$0(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$3(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 113
    :pswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$2(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706c2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
