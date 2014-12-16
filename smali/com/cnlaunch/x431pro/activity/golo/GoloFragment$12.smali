.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$12;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$12;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 2
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
    .line 867
    .local p1, refreshView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$12;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->checkNetWork()Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$29(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$12;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$37(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 872
    :goto_0
    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$12;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    const v1, 0x9c42

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    goto :goto_0
.end method
