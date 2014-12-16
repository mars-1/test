.class Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;
.super Ljava/lang/Object;
.source "ExtendableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V
    .locals 1
    .parameter

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2304
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method private pruneScrapViews()V
    .locals 13

    .prologue
    .line 2576
    iget-object v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v10

    .line 2577
    .local v3, maxViews:I
    iget v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mViewTypeCount:I

    .line 2578
    .local v9, viewTypeCount:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 2579
    .local v5, scrapViews:[Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v9, :cond_1

    .line 2589
    iget-object v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v10, :cond_0

    .line 2590
    const/4 v1, 0x0

    :goto_1
    iget-object v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v10}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v10

    if-lt v1, v10, :cond_3

    .line 2598
    :cond_0
    return-void

    .line 2580
    :cond_1
    aget-object v4, v5, v1

    .line 2581
    .local v4, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2582
    .local v6, size:I
    sub-int v0, v6, v3

    .line 2583
    .local v0, extras:I
    add-int/lit8 v6, v6, -0x1

    .line 2584
    const/4 v2, 0x0

    .local v2, j:I
    move v7, v6

    .end local v6           #size:I
    .local v7, size:I
    :goto_2
    if-lt v2, v0, :cond_2

    .line 2579
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2585
    :cond_2
    iget-object v11, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7           #size:I
    .restart local v6       #size:I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v12, 0x0

    #calls: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v11, v10, v12}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$20(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Landroid/view/View;Z)V

    .line 2584
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #size:I
    .restart local v7       #size:I
    goto :goto_2

    .line 2591
    .end local v0           #extras:I
    .end local v2           #j:I
    .end local v4           #scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7           #size:I
    :cond_3
    iget-object v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v10, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 2592
    .local v8, v:Landroid/view/View;
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2593
    iget-object v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v10, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 2594
    add-int/lit8 v1, v1, -0x1

    .line 2590
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .locals 5
    .parameter "scrap"
    .parameter "position"

    .prologue
    .line 2479
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    .line 2480
    .local v0, lp:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    if-nez v0, :cond_1

    .line 2512
    :cond_0
    :goto_0
    return-void

    .line 2484
    :cond_1
    iput p2, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->position:I

    .line 2488
    iget v2, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->viewType:I

    .line 2489
    .local v2, viewType:I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    .line 2490
    .local v1, scrapHasTransientState:Z
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_7

    .line 2491
    :cond_2
    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_5

    .line 2492
    :cond_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 2493
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 2495
    :cond_4
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2497
    :cond_5
    if-eqz v1, :cond_0

    .line 2498
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v3, :cond_6

    .line 2499
    new-instance v3, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v3}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 2501
    :cond_6
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, p2, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2506
    :cond_7
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 2507
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2510
    :cond_8
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method clear()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2367
    iget v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 2368
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2369
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2370
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_2

    .line 2384
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v5, :cond_1

    .line 2385
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v5}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 2387
    :cond_1
    return-void

    .line 2371
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v3       #scrapCount:I
    :cond_2
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$20(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Landroid/view/View;Z)V

    .line 2370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2375
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_3
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mViewTypeCount:I

    .line 2376
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v4, :cond_0

    .line 2377
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 2378
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2379
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-lt v1, v3, :cond_4

    .line 2376
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2380
    :cond_4
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$20(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Landroid/view/View;Z)V

    .line 2379
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method clearTransientStateViews()V
    .locals 1

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 2451
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 2453
    :cond_0
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .parameter "childCount"
    .parameter "firstActivePosition"

    .prologue
    .line 2397
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 2398
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2400
    :cond_0
    iput p2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mFirstActivePosition:I

    .line 2402
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2403
    .local v0, activeViews:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, p1, :cond_1

    .line 2413
    return-void

    .line 2404
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v4, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2405
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    .line 2407
    .local v3, lp:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_2

    .line 2410
    aput-object v1, v0, v2

    .line 2403
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 2423
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 2424
    .local v1, index:I
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2425
    .local v0, activeViews:[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 2426
    aget-object v2, v0, v1

    .line 2427
    .local v2, match:Landroid/view/View;
    aput-object v3, v0, v1

    .line 2430
    .end local v2           #match:Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 3
    .parameter "position"

    .prologue
    .line 2459
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2460
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 2468
    :goto_0
    return-object v1

    .line 2463
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 2464
    .local v0, whichScrap:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2465
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 2468
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 2434
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v2, :cond_1

    .line 2443
    :cond_0
    :goto_0
    return-object v1

    .line 2437
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    .line 2438
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 2441
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2442
    .local v1, result:Landroid/view/View;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 8

    .prologue
    .line 2334
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 2335
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2336
    .local v3, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2337
    .local v4, scrapCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_2

    .line 2351
    .end local v3           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4           #scrapCount:I
    :cond_0
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v6, :cond_1

    .line 2352
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    .line 2353
    .local v0, count:I
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_5

    .line 2357
    .end local v0           #count:I
    :cond_1
    return-void

    .line 2338
    .restart local v3       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v4       #scrapCount:I
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 2337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2342
    .end local v1           #i:I
    .end local v3           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4           #scrapCount:I
    :cond_3
    iget v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mViewTypeCount:I

    .line 2343
    .local v5, typeCount:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v5, :cond_0

    .line 2344
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 2345
    .restart local v3       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2346
    .restart local v4       #scrapCount:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-lt v2, v4, :cond_4

    .line 2343
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2347
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 2346
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2354
    .end local v2           #j:I
    .end local v3           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4           #scrapCount:I
    .end local v5           #typeCount:I
    .restart local v0       #count:I
    :cond_5
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 2353
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method removeSkippedScrap()V
    .locals 5

    .prologue
    .line 2518
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 2526
    :goto_0
    return-void

    .line 2521
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2522
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 2525
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 2523
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x0

    #calls: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v3, v2, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$20(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Landroid/view/View;Z)V

    .line 2522
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method scrapActiveViews()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 2532
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2533
    .local v0, activeViews:[Landroid/view/View;
    iget v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mViewTypeCount:I

    if-le v10, v4, :cond_0

    .line 2535
    .local v4, multipleScraps:Z
    :goto_0
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2536
    .local v6, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 2537
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_1
    if-gez v2, :cond_1

    .line 2568
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->pruneScrapViews()V

    .line 2569
    return-void

    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #multipleScraps:Z
    .end local v6           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    move v4, v9

    .line 2533
    goto :goto_0

    .line 2538
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v4       #multipleScraps:Z
    .restart local v6       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    aget-object v7, v0, v2

    .line 2539
    .local v7, victim:Landroid/view/View;
    if-eqz v7, :cond_6

    .line 2540
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    .line 2541
    .local v3, lp:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    const/4 v10, 0x0

    aput-object v10, v0, v2

    .line 2543
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v5

    .line 2544
    .local v5, scrapHasTransientState:Z
    iget v8, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->viewType:I

    .line 2546
    .local v8, viewType:I
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v5, :cond_7

    .line 2548
    :cond_2
    const/4 v10, -0x2

    if-ne v8, v10, :cond_3

    if-eqz v5, :cond_4

    .line 2549
    :cond_3
    iget-object v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #calls: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v7, v9}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$20(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Landroid/view/View;Z)V

    .line 2551
    :cond_4
    if-eqz v5, :cond_6

    .line 2552
    iget-object v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v10, :cond_5

    .line 2553
    new-instance v10, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v10}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 2555
    :cond_5
    iget-object v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    iget v11, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v2

    invoke-virtual {v10, v11, v7}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 2537
    .end local v3           #lp:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    .end local v5           #scrapHasTransientState:Z
    .end local v8           #viewType:I
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2560
    .restart local v3       #lp:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    .restart local v5       #scrapHasTransientState:Z
    .restart local v8       #viewType:I
    :cond_7
    if-eqz v4, :cond_8

    .line 2561
    iget-object v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v6, v10, v8

    .line 2563
    :cond_8
    iget v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v10, v2

    iput v10, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->position:I

    .line 2564
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method setCacheColorHint(I)V
    .locals 10
    .parameter "color"

    .prologue
    .line 2606
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 2607
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2608
    .local v4, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2609
    .local v5, scrapCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v5, :cond_1

    .line 2624
    .end local v4           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #scrapCount:I
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2625
    .local v0, activeViews:[Landroid/view/View;
    array-length v1, v0

    .line 2626
    .local v1, count:I
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_4

    .line 2632
    return-void

    .line 2610
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #count:I
    .restart local v4       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v5       #scrapCount:I
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2609
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2614
    .end local v2           #i:I
    .end local v4           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #scrapCount:I
    :cond_2
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mViewTypeCount:I

    .line 2615
    .local v6, typeCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v6, :cond_0

    .line 2616
    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 2617
    .restart local v4       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2618
    .restart local v5       #scrapCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    if-lt v3, v5, :cond_3

    .line 2615
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2619
    :cond_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2618
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2627
    .end local v3           #j:I
    .end local v4           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #scrapCount:I
    .end local v6           #typeCount:I
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #count:I
    :cond_4
    aget-object v7, v0, v2

    .line 2628
    .local v7, victim:Landroid/view/View;
    if-eqz v7, :cond_5

    .line 2629
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2626
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .parameter "viewTypeCount"

    .prologue
    .line 2320
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 2321
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2324
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 2325
    .local v1, scrapViews:[Ljava/util/ArrayList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_1

    .line 2328
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mViewTypeCount:I

    .line 2329
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2330
    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 2331
    return-void

    .line 2326
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 2325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .parameter "viewType"

    .prologue
    .line 2360
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
