.class Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$3;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollToAndBack(I)V
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$3;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;

    .line 1281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .locals 7

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$3;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0xe1

    const/4 v6, 0x0

    #calls: Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    invoke-static/range {v0 .. v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->access$5(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;IJJLcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1286
    return-void
.end method
