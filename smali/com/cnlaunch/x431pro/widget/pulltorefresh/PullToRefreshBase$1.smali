.class Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$1;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$1;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$1;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;

    #calls: Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->callRefreshListener()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->access$4(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V

    .line 744
    return-void
.end method
