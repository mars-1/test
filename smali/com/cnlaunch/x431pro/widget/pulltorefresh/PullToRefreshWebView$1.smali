.class Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$1;
.super Ljava/lang/Object;
.source "PullToRefreshWebView.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;
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
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase",
            "<",
            "Landroid/webkit/WebView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, refreshView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<Landroid/webkit/WebView;>;"
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 37
    return-void
.end method
