.class public Lcom/cnlaunch/newgolo/widget/ImViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ImViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    .local v2, height:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ImViewPager;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 33
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 35
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 36
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0, v3}, Lcom/cnlaunch/newgolo/widget/ImViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, child:Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 28
    .local v1, h:I
    if-le v1, v2, :cond_1

    .line 29
    move v2, v1

    .line 24
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
