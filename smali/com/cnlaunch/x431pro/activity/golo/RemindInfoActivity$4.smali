.class Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;
.super Ljava/lang/Object;
.source "RemindInfoActivity.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->setOnRefreshListener()V
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
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 4
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
    const v3, 0x30d41

    .line 242
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->checkNetWork()Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$10(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$1(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$2(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$11(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;Landroid/app/ProgressDialog;)V

    .line 248
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$0(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$0(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 251
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$1(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_2

    .line 252
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    const/4 v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageNo:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$12(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;I)V

    .line 253
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->request(I)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$1(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageNo:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$13(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageNo:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$12(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;I)V

    .line 256
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->request(I)V

    goto :goto_0
.end method
