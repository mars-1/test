.class public Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightImageView;
.super Landroid/widget/ImageView;
.source "DynamicHeightImageView.java"


# instance fields
.field private mHeightRatio:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getHeightRatio()D
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightImageView;->mHeightRatio:D

    return-wide v0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 36
    iget-wide v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightImageView;->mHeightRatio:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 38
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 39
    .local v1, width:I
    int-to-double v2, v1

    iget-wide v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightImageView;->mHeightRatio:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 40
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightImageView;->setMeasuredDimension(II)V

    .line 45
    .end local v0           #height:I
    .end local v1           #width:I
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setHeightRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightImageView;->mHeightRatio:D

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    .line 25
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightImageView;->mHeightRatio:D

    .line 26
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/util/DynamicHeightImageView;->requestLayout()V

    .line 28
    :cond_0
    return-void
.end method
