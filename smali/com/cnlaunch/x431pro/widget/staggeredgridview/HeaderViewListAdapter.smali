.class public Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;
.super Ljava/lang/Object;
.source "HeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    sput-object v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter
    .parameter
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, headerViewInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;>;"
    .local p2, footerViewInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 60
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mIsFilterable:Z

    .line 62
    if-nez p1, :cond_0

    .line 63
    sget-object v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 68
    :goto_0
    if-nez p2, :cond_1

    .line 69
    sget-object v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 75
    :goto_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 74
    :goto_2
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 77
    return-void

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 71
    :cond_1
    iput-object p2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 76
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 93
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;

    .line 94
    .local v0, info:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;
    iget-boolean v2, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 95
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 145
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 146
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "position"

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 176
    .local v2, numHeaders:I
    if-ge p1, v2, :cond_0

    .line 177
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 191
    :goto_0
    return-object v3

    .line 181
    :cond_0
    sub-int v1, p1, v2

    .line 182
    .local v1, adjPosition:I
    const/4 v0, 0x0

    .line 183
    .local v0, adapterCount:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 184
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 185
    if-ge v1, v0, :cond_1

    .line 186
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 191
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 196
    .local v2, numHeaders:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 197
    sub-int v1, p1, v2

    .line 198
    .local v1, adjPosition:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 199
    .local v0, adapterCount:I
    if-ge v1, v0, :cond_0

    .line 200
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 203
    .end local v0           #adapterCount:I
    .end local v1           #adjPosition:I
    :goto_0
    return-wide v3

    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 236
    .local v2, numHeaders:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 237
    sub-int v1, p1, v2

    .line 238
    .local v1, adjPosition:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 239
    .local v0, adapterCount:I
    if-ge v1, v0, :cond_0

    .line 240
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 244
    .end local v0           #adapterCount:I
    .end local v1           #adjPosition:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 216
    .local v2, numHeaders:I
    if-ge p1, v2, :cond_0

    .line 217
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    .line 231
    :goto_0
    return-object v3

    .line 221
    :cond_0
    sub-int v1, p1, v2

    .line 222
    .local v1, adjPosition:I
    const/4 v0, 0x0

    .line 223
    .local v0, adapterCount:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 225
    if-ge v1, v0, :cond_1

    .line 226
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 231
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .parameter "position"

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 155
    .local v2, numHeaders:I
    if-ge p1, v2, :cond_0

    .line 156
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->isSelectable:Z

    .line 170
    :goto_0
    return v3

    .line 160
    :cond_0
    sub-int v1, p1, v2

    .line 161
    .local v1, adjPosition:I
    const/4 v0, 0x0

    .line 162
    .local v0, adapterCount:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 164
    if-ge v1, v0, :cond_1

    .line 165
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 170
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->isSelectable:Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 258
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    move v3, v2

    .line 133
    :goto_1
    return v3

    .line 121
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;

    .line 122
    .local v1, info:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;
    iget-object v4, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_2

    .line 123
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 125
    :cond_1
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    goto :goto_1

    .line 120
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    move v3, v2

    .line 116
    :goto_1
    return v3

    .line 104
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;

    .line 105
    .local v1, info:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;
    iget-object v4, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_2

    .line 106
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 109
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 108
    :cond_1
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    goto :goto_1

    .line 103
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 264
    :cond_0
    return-void
.end method
