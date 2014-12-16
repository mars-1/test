.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->setOnRefreshListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, refreshView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<Landroid/widget/ListView;>;"
    const v8, 0x9c43

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 821
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->checkNetWork()Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$29(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$9(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 827
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_remind:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$43(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->assortView_remind:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$44(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setVisibility(I)V

    .line 830
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_client:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$45(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 831
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$37(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 832
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$4(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 833
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$7(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$11(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$46(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;)V

    .line 835
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$4(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 836
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_4

    .line 838
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v0, v8}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 843
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$37(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 839
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_3

    .line 841
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v0, v8}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    goto :goto_1

    .line 845
    :cond_5
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$9(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 846
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$10(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    move-result-object v0

    if-nez v0, :cond_6

    .line 847
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$8(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$11(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$12(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;)V

    .line 849
    :cond_6
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$10(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 850
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_8

    .line 851
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 856
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_remind:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$43(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->assortView_remind:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$44(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_client:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$45(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$37(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 852
    :cond_8
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_7

    .line 853
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    goto :goto_2
.end method
