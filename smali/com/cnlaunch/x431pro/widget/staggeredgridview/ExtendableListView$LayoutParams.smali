.class public Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
.super Landroid/widget/AbsListView$LayoutParams;
.source "ExtendableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field itemId:J

.field position:I

.field recycledHeaderFooter:Z

.field viewType:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2270
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2260
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->itemId:J

    .line 2271
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "viewType"

    .prologue
    .line 2274
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2260
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->itemId:J

    .line 2275
    iput p3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->viewType:I

    .line 2276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 2266
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2260
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->itemId:J

    .line 2267
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 2279
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2260
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->itemId:J

    .line 2280
    return-void
.end method
