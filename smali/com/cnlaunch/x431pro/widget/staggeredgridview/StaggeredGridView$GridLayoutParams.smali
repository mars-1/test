.class public Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
.super Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridLayoutParams"
.end annotation


# instance fields
.field column:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1186
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;-><init>(II)V

    .line 1187
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->enforceStaggeredLayout()V

    .line 1188
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "viewType"

    .prologue
    .line 1191
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;-><init>(II)V

    .line 1192
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->enforceStaggeredLayout()V

    .line 1193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 1181
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1182
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->enforceStaggeredLayout()V

    .line 1183
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 1196
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1197
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->enforceStaggeredLayout()V

    .line 1198
    return-void
.end method

.method private enforceStaggeredLayout()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1206
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->width:I

    if-eq v0, v1, :cond_0

    .line 1207
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->width:I

    .line 1209
    :cond_0
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->height:I

    if-ne v0, v1, :cond_1

    .line 1210
    const/4 v0, -0x2

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->height:I

    .line 1212
    :cond_1
    return-void
.end method
