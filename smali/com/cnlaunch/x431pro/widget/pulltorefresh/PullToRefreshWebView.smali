.class public Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;
.super Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;
.source "PullToRefreshWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# static fields
.field private static final defaultOnRefreshListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultWebChromeClient:Landroid/webkit/WebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$1;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$1;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$2;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 58
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->setOnRefreshListener(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$2;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 68
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->setOnRefreshListener(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .parameter "context"
    .parameter

    .prologue
    .line 73
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 41
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$2;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 78
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->setOnRefreshListener(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 79
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter

    .prologue
    .line 83
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    .local p3, style:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;"
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    .line 41
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$2;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 88
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->setOnRefreshListener(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 90
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 101
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    .local v0, webView:Landroid/webkit/WebView;
    :goto_0
    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 107
    return-object v0

    .line 103
    .end local v0           #webView:Landroid/webkit/WebView;
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #webView:Landroid/webkit/WebView;
    goto :goto_0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected isReadyForPullEnd()Z
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    .line 119
    .local v0, exactContentHeight:F
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 126
    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "saveState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 132
    return-void
.end method
