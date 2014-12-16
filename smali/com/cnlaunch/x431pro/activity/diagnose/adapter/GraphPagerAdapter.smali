.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GraphPagerAdapter.java"


# instance fields
.field mGraphPageParams:Landroid/view/ViewGroup$LayoutParams;

.field private mPageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pageMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;>;"
    const/4 v1, -0x1

    .line 16
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 35
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;->mGraphPageParams:Landroid/view/ViewGroup$LayoutParams;

    .line 17
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;->mPageMap:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;->mPageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;->getGraphView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 33
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;->mPageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3
    .parameter "container"
    .parameter "position"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;->mPageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;->getGraphView()Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, page:Landroid/view/View;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;->mGraphPageParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 27
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
