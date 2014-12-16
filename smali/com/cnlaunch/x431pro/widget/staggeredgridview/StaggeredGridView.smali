.class public Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;
.super Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;,
        Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;,
        Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_COLUMNS_LANDSCAPE:I = 0x2

.field private static final DEFAULT_COLUMNS_PORTRAIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StaggeredGridView"


# instance fields
.field private mColumnBottoms:[I

.field private mColumnCount:I

.field private mColumnCountLandscape:I

.field private mColumnCountPortrait:I

.field private mColumnLefts:[I

.field private mColumnTops:[I

.field private mColumnWidth:I

.field private mDistanceToTop:I

.field private mGridPaddingBottom:I

.field private mGridPaddingLeft:I

.field private mGridPaddingRight:I

.field private mGridPaddingTop:I

.field private mItemMargin:I

.field private mNeedSync:Z

.field private mPositionData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountPortrait:I

    .line 55
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountLandscape:I

    .line 154
    if-eqz p2, :cond_0

    .line 156
    sget-object v1, Lcom/ifoer/expedition/pro/R$styleable;->StaggeredGridView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 158
    .local v0, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    .line 161
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-lez v1, :cond_1

    .line 162
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountPortrait:I

    .line 163
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountLandscape:I

    .line 175
    :goto_0
    const/4 v1, 0x3

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mItemMargin:I

    .line 177
    const/4 v1, 0x4

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingLeft:I

    .line 179
    const/4 v1, 0x5

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingRight:I

    .line 181
    const/4 v1, 0x6

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingTop:I

    .line 183
    const/4 v1, 0x7

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingBottom:I

    .line 185
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    .end local v0           #typedArray:Landroid/content/res/TypedArray;
    :cond_0
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    .line 190
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    .line 191
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    .line 192
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnLefts:[I

    .line 193
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    .line 194
    return-void

    .line 166
    .restart local v0       #typedArray:Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountPortrait:I

    .line 169
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountLandscape:I

    goto :goto_0
.end method

.method private alignTops()V
    .locals 8

    .prologue
    .line 747
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHeaderViewsCount()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 749
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHighestNonHeaderTops()[I

    move-result-object v4

    .line 752
    .local v4, nonHeaderTops:[I
    const/4 v3, 0x1

    .line 753
    .local v3, isAligned:Z
    const/4 v0, -0x1

    .line 754
    .local v0, highestColumn:I
    const v1, 0x7fffffff

    .line 755
    .local v1, highestTop:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v4

    if-lt v2, v6, :cond_1

    .line 768
    if-eqz v3, :cond_4

    .line 780
    .end local v0           #highestColumn:I
    .end local v1           #highestTop:I
    .end local v2           #i:I
    .end local v3           #isAligned:Z
    .end local v4           #nonHeaderTops:[I
    :cond_0
    :goto_1
    return-void

    .line 757
    .restart local v0       #highestColumn:I
    .restart local v1       #highestTop:I
    .restart local v2       #i:I
    .restart local v3       #isAligned:Z
    .restart local v4       #nonHeaderTops:[I
    :cond_1
    if-eqz v3, :cond_2

    if-lez v2, :cond_2

    aget v6, v4, v2

    if-eq v6, v1, :cond_2

    .line 758
    const/4 v3, 0x0

    .line 761
    :cond_2
    aget v6, v4, v2

    if-ge v6, v1, :cond_3

    .line 762
    aget v1, v4, v2

    .line 763
    move v0, v2

    .line 755
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 771
    :cond_4
    const/4 v2, 0x0

    :goto_2
    array-length v6, v4

    if-lt v2, v6, :cond_5

    .line 778
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->invalidate()V

    goto :goto_1

    .line 772
    :cond_5
    if-eq v2, v0, :cond_6

    .line 774
    aget v6, v4, v2

    sub-int v5, v1, v6

    .line 775
    .local v5, offset:I
    invoke-virtual {p0, v5, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->offsetChildrenTopAndBottom(II)V

    .line 771
    .end local v5           #offset:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private calculateColumnLeft(I)I
    .locals 3
    .parameter "colIndex"

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getRowPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mItemMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mItemMargin:I

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnWidth:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateColumnWidth(I)I
    .locals 4
    .parameter "gridWidth"

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getRowPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getRowPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 897
    .local v0, listPadding:I
    sub-int v1, p1, v0

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mItemMargin:I

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    div-int/2addr v1, v2

    return v1
.end method

.method private getChildBottomMargin()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mItemMargin:I

    return v0
.end method

.method private getChildColumn(IZ)I
    .locals 2
    .parameter "position"
    .parameter "flowDown"

    .prologue
    .line 1044
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getPositionColumn(I)I

    move-result v0

    .line 1046
    .local v0, column:I
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    .line 1047
    .local v1, columnCount:I
    if-ltz v0, :cond_0

    if-lt v0, v1, :cond_1

    .line 1051
    :cond_0
    if-eqz p2, :cond_2

    .line 1052
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHighestPositionedBottomColumn()I

    move-result v0

    .line 1059
    :cond_1
    :goto_0
    return v0

    .line 1055
    :cond_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getLowestPositionedTopColumn()I

    move-result v0

    goto :goto_0
.end method

.method private getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private getChildTopMargin(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 546
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHeaderViewsCount()I

    move-result v2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_1

    const/4 v0, 0x1

    .line 547
    .local v0, isFirstRow:Z
    :goto_0
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mItemMargin:I

    :cond_0
    return v1

    .end local v0           #isFirstRow:Z
    :cond_1
    move v0, v1

    .line 546
    goto :goto_0
.end method

.method private getHighestNonHeaderTops()[I
    .locals 7

    .prologue
    .line 783
    iget v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    new-array v4, v5, [I

    .line 784
    .local v4, nonHeaderTops:[I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 785
    .local v1, childCount:I
    if-lez v1, :cond_0

    .line 786
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 801
    .end local v2           #i:I
    :cond_0
    return-object v4

    .line 787
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 788
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 789
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 790
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;

    if-eqz v5, :cond_2

    .line 792
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;

    .line 794
    .local v3, lp:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    iget v5, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->viewType:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_2

    .line 795
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->column:I

    aget v6, v4, v6

    if-ge v5, v6, :cond_2

    .line 796
    iget v5, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->column:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    aput v6, v4, v5

    .line 786
    .end local v3           #lp:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getHighestPositionedBottom()I
    .locals 2

    .prologue
    .line 1087
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHighestPositionedBottomColumn()I

    move-result v0

    .line 1088
    .local v0, column:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aget v1, v1, v0

    return v1
.end method

.method private getHighestPositionedBottomColumn()I
    .locals 5

    .prologue
    .line 1092
    const/4 v1, 0x0

    .line 1093
    .local v1, columnFound:I
    const v2, 0x7fffffff

    .line 1095
    .local v2, highestPositionedBottom:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-lt v3, v4, :cond_0

    .line 1102
    return v1

    .line 1096
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aget v0, v4, v3

    .line 1097
    .local v0, bottom:I
    if-ge v0, v2, :cond_1

    .line 1098
    move v2, v0

    .line 1099
    move v1, v3

    .line 1095
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getHighestPositionedTop()I
    .locals 2

    .prologue
    .line 1150
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHighestPositionedTopColumn()I

    move-result v0

    .line 1151
    .local v0, column:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aget v1, v1, v0

    return v1
.end method

.method private getHighestPositionedTopColumn()I
    .locals 5

    .prologue
    .line 1155
    const/4 v0, 0x0

    .line 1156
    .local v0, columnFound:I
    const v1, 0x7fffffff

    .line 1158
    .local v1, highestPositionedTop:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-lt v2, v4, :cond_0

    .line 1165
    return v0

    .line 1159
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aget v3, v4, v2

    .line 1160
    .local v3, top:I
    if-ge v3, v1, :cond_1

    .line 1161
    move v1, v3

    .line 1162
    move v0, v2

    .line 1158
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getLowestPositionedBottom()I
    .locals 2

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getLowestPositionedBottomColumn()I

    move-result v0

    .line 1107
    .local v0, column:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aget v1, v1, v0

    return v1
.end method

.method private getLowestPositionedBottomColumn()I
    .locals 5

    .prologue
    .line 1111
    const/4 v1, 0x0

    .line 1112
    .local v1, columnFound:I
    const/high16 v3, -0x8000

    .line 1114
    .local v3, lowestPositionedBottom:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-lt v2, v4, :cond_0

    .line 1121
    return v1

    .line 1115
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aget v0, v4, v2

    .line 1116
    .local v0, bottom:I
    if-le v0, v3, :cond_1

    .line 1117
    move v3, v0

    .line 1118
    move v1, v2

    .line 1114
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getLowestPositionedTop()I
    .locals 2

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getLowestPositionedTopColumn()I

    move-result v0

    .line 1130
    .local v0, column:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aget v1, v1, v0

    return v1
.end method

.method private getLowestPositionedTopColumn()I
    .locals 5

    .prologue
    .line 1134
    const/4 v0, 0x0

    .line 1137
    .local v0, columnFound:I
    const/high16 v2, -0x8000

    .line 1139
    .local v2, lowestPositionedTop:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-lt v1, v4, :cond_0

    .line 1146
    return v0

    .line 1140
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aget v3, v4, v1

    .line 1141
    .local v3, top:I
    if-le v3, v2, :cond_1

    .line 1142
    move v2, v3

    .line 1143
    move v0, v1

    .line 1139
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getOrCreateRecord(I)Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;
    .locals 3
    .parameter "position"

    .prologue
    .line 1018
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;

    .line 1019
    .local v0, rec:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;
    if-nez v0, :cond_0

    .line 1020
    new-instance v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;

    .end local v0           #rec:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;-><init>()V

    .line 1021
    .restart local v0       #rec:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1023
    :cond_0
    return-object v0
.end method

.method private getPositionColumn(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 1027
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;

    .line 1028
    .local v0, rec:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;->column:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private initColumnBottoms()V
    .locals 3

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingTop:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1073
    return-void
.end method

.method private initColumnLefts()V
    .locals 3

    .prologue
    .line 1076
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-lt v0, v1, :cond_0

    .line 1079
    return-void

    .line 1077
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnLefts:[I

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->calculateColumnLeft(I)I

    move-result v2

    aput v2, v1, v0

    .line 1076
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initColumnTops()V
    .locals 3

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingTop:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1069
    return-void
.end method

.method private initColumnTopsAndBottoms()V
    .locals 0

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->initColumnTops()V

    .line 1064
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->initColumnBottoms()V

    .line 1065
    return-void
.end method

.method private isHeaderOrFooter(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 1038
    .local v0, viewType:I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLandscape()Z
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutGridChild(Landroid/view/View;IZII)V
    .locals 8
    .parameter "child"
    .parameter "position"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "childRight"

    .prologue
    .line 429
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getPositionColumn(I)I

    move-result v2

    .line 434
    .local v2, column:I
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildTopMargin(I)I

    move-result v1

    .line 435
    .local v1, childTopMargin:I
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildBottomMargin()I

    move-result v0

    .line 436
    .local v0, childBottomMargin:I
    add-int v6, v1, v0

    .line 438
    .local v6, verticalMargins:I
    if-eqz p3, :cond_0

    .line 439
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aget v4, v7, v2

    .line 440
    .local v4, gridChildTop:I
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v6

    add-int v3, v4, v7

    .line 454
    .local v3, gridChildBottom:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;

    .line 455
    .local v5, layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    iput v2, v5, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->column:I

    .line 457
    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->updateColumnBottomIfNeeded(II)V

    .line 458
    invoke-direct {p0, v2, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->updateColumnTopIfNeeded(II)V

    .line 461
    add-int/2addr v4, v1

    .line 462
    sub-int/2addr v3, v0

    .line 464
    invoke-virtual {p1, p4, v4, p5, v3}, Landroid/view/View;->layout(IIII)V

    .line 465
    return-void

    .line 443
    .end local v3           #gridChildBottom:I
    .end local v4           #gridChildTop:I
    .end local v5           #layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    :cond_0
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aget v3, v7, v2

    .line 444
    .restart local v3       #gridChildBottom:I
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v6

    sub-int v4, v3, v7

    .restart local v4       #gridChildTop:I
    goto :goto_0
.end method

.method private layoutGridHeaderFooter(Landroid/view/View;IZIIII)V
    .locals 9
    .parameter "child"
    .parameter "position"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "childTop"
    .parameter "childRight"
    .parameter "childBottom"

    .prologue
    .line 407
    if-eqz p3, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getLowestPositionedBottom()I

    move-result v5

    .line 409
    .local v5, gridChildTop:I
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    add-int v7, v5, v0

    .line 416
    .local v7, gridChildBottom:I
    :goto_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-lt v8, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 421
    invoke-super/range {v0 .. v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onLayoutChild(Landroid/view/View;IZIIII)V

    .line 423
    return-void

    .line 412
    .end local v5           #gridChildTop:I
    .end local v7           #gridChildBottom:I
    .end local v8           #i:I
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHighestPositionedTop()I

    move-result v7

    .line 413
    .restart local v7       #gridChildBottom:I
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    sub-int v5, v7, v0

    .restart local v5       #gridChildTop:I
    goto :goto_0

    .line 417
    .restart local v8       #i:I
    :cond_1
    invoke-direct {p0, v8, v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->updateColumnTopIfNeeded(II)V

    .line 418
    invoke-direct {p0, v8, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->updateColumnBottomIfNeeded(II)V

    .line 416
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method private offsetAllColumnsTopAndBottom(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 722
    if-eqz p1, :cond_0

    .line 723
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-lt v0, v1, :cond_1

    .line 727
    .end local v0           #i:I
    :cond_0
    return-void

    .line 724
    .restart local v0       #i:I
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->offsetColumnTopAndBottom(II)V

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private offsetColumnTopAndBottom(II)V
    .locals 2
    .parameter "offset"
    .parameter "column"

    .prologue
    .line 730
    if-eqz p1, :cond_0

    .line 731
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aget v1, v0, p2

    add-int/2addr v1, p1

    aput v1, v0, p2

    .line 732
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aget v1, v0, p2

    add-int/2addr v1, p1

    aput v1, v0, p2

    .line 734
    :cond_0
    return-void
.end method

.method private offsetDistanceToTop(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 713
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mDistanceToTop:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mDistanceToTop:I

    .line 715
    return-void
.end method

.method private offsetGridChild(Landroid/view/View;IZII)V
    .locals 13
    .parameter "child"
    .parameter "position"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "childTop"

    .prologue
    .line 506
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getPositionColumn(I)I

    move-result v8

    .line 511
    .local v8, column:I
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildTopMargin(I)I

    move-result v7

    .line 512
    .local v7, childTopMargin:I
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildBottomMargin()I

    move-result v6

    .line 513
    .local v6, childBottomMargin:I
    add-int v12, v7, v6

    .line 515
    .local v12, verticalMargins:I
    if-eqz p3, :cond_0

    .line 516
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aget v10, v0, v8

    .line 517
    .local v10, gridChildTop:I
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v12

    add-int v9, v10, v0

    .line 532
    .local v9, gridChildBottom:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;

    .line 533
    .local v11, layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    iput v8, v11, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->column:I

    .line 535
    invoke-direct {p0, v8, v9}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->updateColumnBottomIfNeeded(II)V

    .line 536
    invoke-direct {p0, v8, v10}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->updateColumnTopIfNeeded(II)V

    .line 538
    add-int v5, v10, v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-super/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onOffsetChild(Landroid/view/View;IZII)V

    .line 539
    return-void

    .line 520
    .end local v9           #gridChildBottom:I
    .end local v10           #gridChildTop:I
    .end local v11           #layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aget v9, v0, v8

    .line 521
    .restart local v9       #gridChildBottom:I
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v12

    sub-int v10, v9, v0

    .restart local v10       #gridChildTop:I
    goto :goto_0
.end method

.method private offsetGridHeaderFooter(Landroid/view/View;IZII)V
    .locals 8
    .parameter "child"
    .parameter "position"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "childTop"

    .prologue
    .line 487
    if-eqz p3, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getLowestPositionedBottom()I

    move-result v5

    .line 489
    .local v5, gridChildTop:I
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    add-int v6, v5, v0

    .line 496
    .local v6, gridChildBottom:I
    :goto_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-lt v7, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 501
    invoke-super/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onOffsetChild(Landroid/view/View;IZII)V

    .line 502
    return-void

    .line 492
    .end local v5           #gridChildTop:I
    .end local v6           #gridChildBottom:I
    .end local v7           #i:I
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHighestPositionedTop()I

    move-result v6

    .line 493
    .restart local v6       #gridChildBottom:I
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    sub-int v5, v6, v0

    .restart local v5       #gridChildTop:I
    goto :goto_0

    .line 497
    .restart local v7       #i:I
    :cond_1
    invoke-direct {p0, v7, v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->updateColumnTopIfNeeded(II)V

    .line 498
    invoke-direct {p0, v7, v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->updateColumnBottomIfNeeded(II)V

    .line 496
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private onColumnSync()V
    .locals 20

    .prologue
    .line 911
    move-object/from16 v0, p0

    iget v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mSyncPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 913
    .local v12, syncPosition:I
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9, v12}, Landroid/util/SparseArray;-><init>(I)V

    .line 914
    .local v9, positionHeightRatios:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Double;>;"
    const/4 v8, 0x0

    .local v8, pos:I
    :goto_0
    if-lt v8, v12, :cond_2

    .line 923
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 930
    const/4 v8, 0x0

    :goto_1
    if-lt v8, v12, :cond_3

    .line 976
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHighestPositionedBottomColumn()I

    move-result v11

    .line 977
    .local v11, syncColumn:I
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->setPositionColumn(II)V

    .line 981
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aget v13, v15, v11

    .line 982
    .local v13, syncToBottom:I
    neg-int v15, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mSpecificTop:I

    move/from16 v16, v0

    add-int v7, v15, v16

    .line 984
    .local v7, offset:I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->offsetAllColumnsTopAndBottom(I)V

    .line 987
    neg-int v15, v13

    move-object/from16 v0, p0

    iput v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mDistanceToTop:I

    .line 990
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    move/from16 v19, v0

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 991
    return-void

    .line 916
    .end local v7           #offset:I
    .end local v11           #syncColumn:I
    .end local v13           #syncToBottom:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;

    .line 917
    .local v10, rec:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;
    if-eqz v10, :cond_0

    .line 919
    const-string/jumbo v15, "StaggeredGridView"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "onColumnSync:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " ratio:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-wide v0, v10, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;->heightRatio:D

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-wide v15, v10, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;->heightRatio:D

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v9, v8, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 914
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 932
    .end local v10           #rec:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;
    :cond_3
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    .line 933
    .local v5, heightRatio:Ljava/lang/Double;
    if-eqz v5, :cond_1

    .line 937
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getOrCreateRecord(I)Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;

    move-result-object v10

    .line 938
    .restart local v10       #rec:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnWidth:I

    int-to-double v15, v15

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    mul-double v15, v15, v17

    double-to-int v4, v15

    .line 939
    .local v4, height:I
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    iput-wide v15, v10, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;->heightRatio:D

    .line 944
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 946
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getLowestPositionedBottom()I

    move-result v14

    .line 947
    .local v14, top:I
    add-int v2, v14, v4

    .line 949
    .local v2, bottom:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-lt v6, v15, :cond_4

    .line 930
    .end local v6           #i:I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 950
    .restart local v6       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aput v14, v15, v6

    .line 951
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aput v2, v15, v6

    .line 949
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 956
    .end local v2           #bottom:I
    .end local v6           #i:I
    .end local v14           #top:I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHighestPositionedBottomColumn()I

    move-result v3

    .line 958
    .local v3, column:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aget v14, v15, v3

    .line 959
    .restart local v14       #top:I
    add-int v15, v14, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildTopMargin(I)I

    move-result v16

    add-int v15, v15, v16

    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildBottomMargin()I

    move-result v16

    add-int v2, v15, v16

    .line 961
    .restart local v2       #bottom:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aput v14, v15, v3

    .line 962
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aput v2, v15, v3

    .line 964
    iput v3, v10, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;->column:I

    goto :goto_3
.end method

.method private preLayoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 369
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mNeedSync:Z

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    return-void

    .line 373
    :cond_0
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mNeedSync:Z

    goto :goto_0
.end method

.method private requestLayoutChildren()V
    .locals 3

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildCount()I

    move-result v0

    .line 355
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 359
    return-void

    .line 356
    :cond_0
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 357
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 355
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setPositionColumn(II)V
    .locals 1
    .parameter "position"
    .parameter "column"

    .prologue
    .line 999
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getOrCreateRecord(I)Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;

    move-result-object v0

    .line 1000
    .local v0, rec:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;
    iput p2, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;->column:I

    .line 1001
    return-void
.end method

.method private setPositionHeightRatio(II)V
    .locals 5
    .parameter "position"
    .parameter "height"

    .prologue
    .line 1004
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getOrCreateRecord(I)Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;

    move-result-object v0

    .line 1005
    .local v0, rec:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;
    int-to-double v1, p2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnWidth:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;->heightRatio:D

    .line 1010
    return-void
.end method

.method private setPositionIsHeaderFooter(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1013
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getOrCreateRecord(I)Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;

    move-result-object v0

    .line 1014
    .local v0, rec:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;->isHeaderFooter:Z

    .line 1015
    return-void
.end method

.method private updateColumnBottomIfNeeded(II)V
    .locals 1
    .parameter "column"
    .parameter "childBottom"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aget v0, v0, p1

    if-le p2, v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aput p2, v0, p1

    .line 585
    :cond_0
    return-void
.end method

.method private updateColumnTopIfNeeded(II)V
    .locals 1
    .parameter "column"
    .parameter "childTop"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aget v0, v0, p1

    if-ge p2, v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aput p2, v0, p1

    .line 579
    :cond_0
    return-void
.end method


# virtual methods
.method protected adjustViewsAfterFillGap(Z)V
    .locals 0
    .parameter "down"

    .prologue
    .line 738
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->adjustViewsAfterFillGap(Z)V

    .line 741
    if-nez p1, :cond_0

    .line 742
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->alignTops()V

    .line 744
    :cond_0
    return-void
.end method

.method protected generateChildLayoutParams(Landroid/view/View;)Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    .locals 4
    .parameter "child"

    .prologue
    .line 556
    const/4 v1, 0x0

    .line 558
    .local v1, layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 559
    .local v0, childParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 560
    instance-of v2, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 561
    check-cast v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;

    .line 567
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 568
    new-instance v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;

    .line 569
    .end local v1           #layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnWidth:I

    const/4 v3, -0x2

    .line 568
    invoke-direct {v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;-><init>(II)V

    .line 572
    .restart local v1       #layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    :cond_1
    return-object v1

    .line 564
    :cond_2
    new-instance v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;

    .end local v1           #layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    invoke-direct {v1, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .restart local v1       #layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    goto :goto_0
.end method

.method protected getChildBottom(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildBottom(I)I

    move-result v1

    .line 636
    :goto_0
    return v1

    .line 632
    :cond_0
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getPositionColumn(I)I

    move-result v0

    .line 633
    .local v0, column:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 634
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getLowestPositionedTop()I

    move-result v1

    goto :goto_0

    .line 636
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method protected getChildLeft(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildLeft(I)I

    move-result v1

    .line 594
    :goto_0
    return v1

    .line 593
    :cond_0
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getPositionColumn(I)I

    move-result v0

    .line 594
    .local v0, column:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnLefts:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method protected getChildTop(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildTop(I)I

    move-result v1

    .line 608
    :goto_0
    return v1

    .line 604
    :cond_0
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getPositionColumn(I)I

    move-result v0

    .line 605
    .local v0, column:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 606
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHighestPositionedBottom()I

    move-result v1

    goto :goto_0

    .line 608
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public getColumnWidth()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnWidth:I

    return v0
.end method

.method public getDistanceToTop()I
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mDistanceToTop:I

    return v0
.end method

.method protected getFirstChildTop()I
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mFirstPosition:I

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getFirstChildTop()I

    move-result v0

    .line 668
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getLowestPositionedTop()I

    move-result v0

    goto :goto_0
.end method

.method protected getHighestChildTop()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mFirstPosition:I

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHighestChildTop()I

    move-result v0

    .line 676
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHighestPositionedTop()I

    move-result v0

    goto :goto_0
.end method

.method protected getLastChildBottom()I
    .locals 3

    .prologue
    .line 656
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int v0, v1, v2

    .line 657
    .local v0, lastPosition:I
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getLastChildBottom()I

    move-result v1

    .line 660
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHighestPositionedBottom()I

    move-result v1

    goto :goto_0
.end method

.method protected getLowestChildBottom()I
    .locals 3

    .prologue
    .line 681
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int v0, v1, v2

    .line 682
    .local v0, lastPosition:I
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getLowestChildBottom()I

    move-result v1

    .line 685
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getLowestPositionedBottom()I

    move-result v1

    goto :goto_0
.end method

.method protected getNextChildDownsTop(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getNextChildDownsTop(I)I

    move-result v0

    .line 622
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHighestPositionedBottom()I

    move-result v0

    goto :goto_0
.end method

.method protected getNextChildUpsBottom(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 646
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getNextChildUpsBottom(I)I

    move-result v0

    .line 650
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getLowestPositionedTop()I

    move-result v0

    goto :goto_0
.end method

.method public getRowPaddingBottom()I
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getListPaddingBottom()I

    move-result v0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowPaddingLeft()I
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getListPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowPaddingRight()I
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getListPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowPaddingTop()I
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getListPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected hasSpaceUp()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 852
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mClipToPadding:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getRowPaddingTop()I

    move-result v0

    .line 853
    .local v0, end:I
    :goto_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getLowestPositionedTop()I

    move-result v2

    if-le v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .end local v0           #end:I
    :cond_1
    move v0, v1

    .line 852
    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->preLayoutChildren()V

    .line 364
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->layoutChildren()V

    .line 365
    return-void
.end method

.method protected offsetChildrenTopAndBottom(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 690
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 691
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->offsetAllColumnsTopAndBottom(I)V

    .line 692
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->offsetDistanceToTop(I)V

    .line 693
    return-void
.end method

.method protected offsetChildrenTopAndBottom(II)V
    .locals 5
    .parameter "offset"
    .parameter "column"

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildCount()I

    move-result v0

    .line 698
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 709
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->offsetColumnTopAndBottom(II)V

    .line 710
    return-void

    .line 699
    :cond_0
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 700
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 701
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 702
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;

    if-eqz v4, :cond_1

    .line 703
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;

    .line 704
    .local v2, lp:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    iget v4, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->column:I

    if-ne v4, p2, :cond_1

    .line 705
    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 698
    .end local v2           #lp:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onChildCreated(IZ)V
    .locals 2
    .parameter "position"
    .parameter "flowDown"

    .prologue
    .line 340
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onChildCreated(IZ)V

    .line 341
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildColumn(IZ)I

    move-result v0

    .line 344
    .local v0, column:I
    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->setPositionColumn(II)V

    .line 351
    .end local v0           #column:I
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->setPositionIsHeaderFooter(I)V

    goto :goto_0
.end method

.method protected onChildrenDetached(II)V
    .locals 11
    .parameter "start"
    .parameter "count"

    .prologue
    .line 806
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onChildrenDetached(II)V

    .line 810
    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    const v10, 0x7fffffff

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    .line 811
    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    .line 813
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildCount()I

    move-result v9

    if-lt v6, v9, :cond_0

    .line 848
    return-void

    .line 814
    :cond_0
    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 815
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 816
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    .line 817
    .local v2, childParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    iget v9, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->viewType:I

    const/4 v10, -0x2

    if-eq v9, v10, :cond_3

    .line 818
    instance-of v9, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;

    if-eqz v9, :cond_3

    move-object v7, v2

    .line 819
    check-cast v7, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;

    .line 820
    .local v7, layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    iget v5, v7, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->column:I

    .line 821
    .local v5, column:I
    iget v8, v7, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;->position:I

    .line 822
    .local v8, position:I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 823
    .local v3, childTop:I
    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aget v9, v9, v5

    if-ge v3, v9, :cond_1

    .line 824
    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    invoke-direct {p0, v8}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildTopMargin(I)I

    move-result v10

    sub-int v10, v3, v10

    aput v10, v9, v5

    .line 826
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 827
    .local v1, childBottom:I
    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aget v9, v9, v5

    if-le v1, v9, :cond_2

    .line 828
    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildBottomMargin()I

    move-result v10

    add-int/2addr v10, v1

    aput v10, v9, v5

    .line 813
    .end local v1           #childBottom:I
    .end local v2           #childParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    .end local v3           #childTop:I
    .end local v5           #column:I
    .end local v7           #layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridLayoutParams;
    .end local v8           #position:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 833
    .restart local v2       #childParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 834
    .restart local v3       #childTop:I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 836
    .restart local v1       #childBottom:I
    const/4 v4, 0x0

    .local v4, col:I
    :goto_1
    iget v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-ge v4, v9, :cond_2

    .line 837
    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aget v9, v9, v4

    if-ge v3, v9, :cond_4

    .line 838
    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    aput v3, v9, v4

    .line 840
    :cond_4
    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aget v9, v9, v4

    if-le v1, v9, :cond_5

    .line 841
    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    aput v1, v9, v4

    .line 836
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected onLayoutChild(Landroid/view/View;IZIIII)V
    .locals 6
    .parameter "child"
    .parameter "position"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "childTop"
    .parameter "childRight"
    .parameter "childBottom"

    .prologue
    .line 393
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-direct/range {p0 .. p7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->layoutGridHeaderFooter(Landroid/view/View;IZIIII)V

    .line 399
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 397
    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->layoutGridChild(Landroid/view/View;IZII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 253
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onMeasure(II)V

    .line 255
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-gtz v1, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isLandscape()Z

    move-result v0

    .line 257
    .local v0, isLandscape:Z
    if-eqz v0, :cond_7

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountLandscape:I

    :goto_0
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    .line 264
    .end local v0           #isLandscape:Z
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->calculateColumnWidth(I)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnWidth:I

    .line 266
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    array-length v1, v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-eq v1, v2, :cond_2

    .line 267
    :cond_1
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    .line 268
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->initColumnTops()V

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    array-length v1, v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-eq v1, v2, :cond_4

    .line 271
    :cond_3
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    .line 272
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->initColumnBottoms()V

    .line 274
    :cond_4
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnLefts:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnLefts:[I

    array-length v1, v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-eq v1, v2, :cond_6

    .line 275
    :cond_5
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnLefts:[I

    .line 276
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->initColumnLefts()V

    .line 278
    :cond_6
    return-void

    .line 257
    .restart local v0       #isLandscape:Z
    :cond_7
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountPortrait:I

    goto :goto_0
.end method

.method protected onMeasureChild(Landroid/view/View;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;)V
    .locals 8
    .parameter "child"
    .parameter "layoutParams"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, -0x2

    .line 282
    iget v4, p2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->viewType:I

    .line 283
    .local v4, viewType:I
    iget v3, p2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->position:I

    .line 285
    .local v3, position:I
    if-eq v4, v6, :cond_0

    .line 286
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 288
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onMeasureChild(Landroid/view/View;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;)V

    .line 305
    :goto_0
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    .line 306
    .local v0, childHeight:I
    invoke-direct {p0, v3, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->setPositionHeightRatio(II)V

    .line 310
    return-void

    .line 294
    .end local v0           #childHeight:I
    :cond_1
    iget v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 296
    .local v2, childWidthSpec:I
    iget v5, p2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->height:I

    if-lez v5, :cond_2

    .line 297
    iget v5, p2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 302
    .local v1, childHeightSpec:I
    :goto_1
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 300
    .end local v1           #childHeightSpec:I
    :cond_2
    const/4 v5, 0x0

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #childHeightSpec:I
    goto :goto_1
.end method

.method protected onOffsetChild(Landroid/view/View;IZII)V
    .locals 1
    .parameter "child"
    .parameter "position"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "childTop"

    .prologue
    .line 472
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-direct/range {p0 .. p5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->offsetGridHeaderFooter(Landroid/view/View;IZII)V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->offsetGridChild(Landroid/view/View;IZII)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1298
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;

    .line 1299
    .local v0, ss:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;
    iget v1, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnCount:I

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    .line 1300
    iget-object v1, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnTops:[I

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    .line 1301
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    .line 1302
    iget-object v1, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->positionData:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    .line 1303
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mNeedSync:Z

    .line 1304
    invoke-super {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1305
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1268
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

    .line 1269
    .local v1, listState:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;
    new-instance v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1272
    .local v2, ss:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;
    iget-wide v4, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->selectedId:J

    iput-wide v4, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->selectedId:J

    .line 1273
    iget-wide v4, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->firstId:J

    iput-wide v4, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->firstId:J

    .line 1274
    iget v4, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->viewTop:I

    iput v4, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->viewTop:I

    .line 1275
    iget v4, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->position:I

    iput v4, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->position:I

    .line 1276
    iget v4, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->height:I

    iput v4, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->height:I

    .line 1280
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v0, 0x1

    .line 1282
    .local v0, haveChildren:Z
    :goto_0
    if-eqz v0, :cond_1

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mFirstPosition:I

    if-lez v4, :cond_1

    .line 1283
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    iput v3, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnCount:I

    .line 1284
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    iput-object v3, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnTops:[I

    .line 1285
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    iput-object v3, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->positionData:Landroid/util/SparseArray;

    .line 1293
    :goto_1
    return-object v2

    .end local v0           #haveChildren:Z
    :cond_0
    move v0, v3

    .line 1280
    goto :goto_0

    .line 1288
    .restart local v0       #haveChildren:Z
    :cond_1
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-ltz v4, :cond_2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    :cond_2
    iput v3, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnCount:I

    .line 1289
    iget v3, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnCount:I

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnTops:[I

    .line 1290
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->positionData:Landroid/util/SparseArray;

    goto :goto_1
.end method

.method protected onSizeChanged(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 868
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onSizeChanged(II)V

    .line 869
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->isLandscape()Z

    move-result v0

    .line 870
    .local v0, isLandscape:Z
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountLandscape:I

    .line 871
    .local v1, newColumnCount:I
    :goto_0
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-eq v2, v1, :cond_1

    .line 872
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    .line 874
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->calculateColumnWidth(I)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnWidth:I

    .line 876
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    .line 877
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    .line 878
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnLefts:[I

    .line 880
    const/4 v2, 0x0

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mDistanceToTop:I

    .line 883
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->initColumnTopsAndBottoms()V

    .line 884
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->initColumnLefts()V

    .line 887
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 888
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->onColumnSync()V

    .line 891
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->requestLayout()V

    .line 893
    :cond_1
    return-void

    .line 870
    .end local v1           #newColumnCount:I
    :cond_2
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountPortrait:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 862
    invoke-super {p0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onSizeChanged(IIII)V

    .line 863
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->onSizeChanged(II)V

    .line 864
    return-void
.end method

.method public resetToTop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    if-lez v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    if-nez v0, :cond_0

    .line 320
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnTops:[I

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    if-nez v0, :cond_1

    .line 323
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnBottoms:[I

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->initColumnTopsAndBottoms()V

    .line 327
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 328
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mNeedSync:Z

    .line 329
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mDistanceToTop:I

    .line 330
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->setSelection(I)V

    .line 332
    :cond_2
    return-void
.end method

.method public setColumnCount(I)V
    .locals 2
    .parameter "columnCount"

    .prologue
    .line 237
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountPortrait:I

    .line 238
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountLandscape:I

    .line 240
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->onSizeChanged(II)V

    .line 241
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->requestLayoutChildren()V

    .line 242
    return-void
.end method

.method public setColumnCountLandscape(I)V
    .locals 2
    .parameter "columnCountLandscape"

    .prologue
    .line 231
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountLandscape:I

    .line 232
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->onSizeChanged(II)V

    .line 233
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->requestLayoutChildren()V

    .line 234
    return-void
.end method

.method public setColumnCountPortrait(I)V
    .locals 2
    .parameter "columnCountPortrait"

    .prologue
    .line 225
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mColumnCountPortrait:I

    .line 226
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->onSizeChanged(II)V

    .line 227
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->requestLayoutChildren()V

    .line 228
    return-void
.end method

.method public setGridPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 218
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingLeft:I

    .line 219
    iput p2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingTop:I

    .line 220
    iput p3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingRight:I

    .line 221
    iput p4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->mGridPaddingBottom:I

    .line 222
    return-void
.end method
