.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;
.super Landroid/os/Handler;
.source "GoloFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    .line 996
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 999
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1077
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1001
    :pswitch_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 1002
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 1003
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0706c1

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1007
    :pswitch_2
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->isClientOk:Z
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$2(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->isRemindOk:Z
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$3(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1008
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 1010
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$4(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1015
    :pswitch_3
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 1016
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0706c2

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1019
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1020
    .local v0, bCount:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 1021
    .local v3, gCount:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$5(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1022
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$5(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->notifyDataSetChanged()V

    .line 1024
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$4(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1025
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$4(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->notifyDataSetChanged()V

    .line 1027
    :cond_2
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$6(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1028
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v4, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateBDTitle(I)V

    .line 1030
    :cond_3
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$7(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1031
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v4, v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateGZTilte(I)V

    goto/16 :goto_0

    .line 1035
    .end local v0           #bCount:I
    .end local v3           #gCount:I
    :pswitch_5
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    goto/16 :goto_0

    .line 1039
    :pswitch_6
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$8(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$9(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 1040
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$10(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1041
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    new-instance v5, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$8(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$11(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/os/Handler;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
    invoke-static {v4, v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$12(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;)V

    .line 1042
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$10(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1047
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$8(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1048
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$8(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateRemoteTitle(I)V

    goto/16 :goto_0

    .line 1044
    :cond_5
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$10(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$8(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->refresh(Ljava/util/List;)V

    goto :goto_1

    .line 1053
    :pswitch_7
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$6(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1054
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allBundingNewMsg:I
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$13(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allTipCount:I
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$14(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateBDTitle(I)V

    .line 1056
    :cond_6
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$9(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1057
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$5(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1058
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$5(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1063
    :pswitch_8
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1066
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "isconflict"

    invoke-virtual {v5, v6, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v2

    .line 1067
    .local v2, conflict:Z
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->conflict_hit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$15(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v2, :cond_7

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0x8

    goto :goto_2

    .line 1070
    .end local v2           #conflict:Z
    :pswitch_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1071
    .local v1, bundle:Landroid/os/Bundle;
    const-string/jumbo v4, "target_id"

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1072
    const-string/jumbo v4, "pub_name"

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$16(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string/jumbo v4, "pub_id"

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    const-class v5, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 999
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
