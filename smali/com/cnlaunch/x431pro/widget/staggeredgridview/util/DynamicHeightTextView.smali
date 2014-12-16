.class public Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightTextView;
.super Landroid/widget/TextView;
.source "DynamicHeightTextView.java"


# instance fields
.field private mHeightRatio:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getHeightRatio()D
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightTextView;->mHeightRatio:D

    return-wide v0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 39
    iget-wide v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightTextView;->mHeightRatio:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 42
    .local v1, width:I
    int-to-double v2, v1

    iget-wide v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightTextView;->mHeightRatio:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 43
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightTextView;->setMeasuredDimension(II)V

    .line 48
    .end local v0           #height:I
    .end local v1           #width:I
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setHeightRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightTextView;->mHeightRatio:D

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    .line 28
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightTextView;->mHeightRatio:D

    .line 29
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightTextView;->requestLayout()V

    .line 31
    :cond_0
    return-void
.end method
