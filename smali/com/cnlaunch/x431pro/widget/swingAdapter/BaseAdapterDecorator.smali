.class public abstract Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;
.super Landroid/widget/BaseAdapter;
.source "BaseAdapterDecorator.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$Swappable;
.implements Lcom/cnlaunch/x431pro/widget/swingAdapter/ListViewSetter;


# instance fields
.field protected final mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

.field private mIsParentHorizontalScrollContainer:Z

.field private mListView:Landroid/widget/AbsListView;

.field private mResIdTouchChild:I


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "baseAdapter"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    .line 46
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getAbsListView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDecoratedBaseAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchChild()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mResIdTouchChild:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isParentHorizontalScrollContainer()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mIsParentHorizontalScrollContainer:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 129
    :cond_0
    return-void
.end method

.method public notifyDataSetChanged(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 136
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 140
    :cond_1
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 145
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 150
    return-void
.end method

.method public setAbsListView(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    .line 52
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/cnlaunch/x431pro/widget/swingAdapter/ListViewSetter;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/cnlaunch/x431pro/widget/swingAdapter/ListViewSetter;

    invoke-interface {v1, p1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/ListViewSetter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    instance-of v1, v1, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    if-eqz v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    .line 58
    .local v0, dynListView:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mIsParentHorizontalScrollContainer:Z

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->setIsParentHorizontalScrollContainer(Z)V

    .line 59
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mResIdTouchChild:I

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->setDynamicTouchChild(I)V

    .line 61
    .end local v0           #dynListView:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;
    :cond_1
    return-void
.end method

.method public setIsParentHorizontalScrollContainer(Z)V
    .locals 2
    .parameter "isParentHorizontalScrollContainer"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mIsParentHorizontalScrollContainer:Z

    .line 201
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    instance-of v1, v1, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    if-eqz v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    .line 203
    .local v0, dynListView:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mIsParentHorizontalScrollContainer:Z

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->setIsParentHorizontalScrollContainer(Z)V

    .line 205
    .end local v0           #dynListView:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;
    :cond_0
    return-void
.end method

.method public setTouchChild(I)V
    .locals 2
    .parameter "childResId"

    .prologue
    .line 222
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mResIdTouchChild:I

    .line 223
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    instance-of v1, v1, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    if-eqz v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    .line 225
    .local v0, dynListView:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mResIdTouchChild:I

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->setDynamicTouchChild(I)V

    .line 227
    .end local v0           #dynListView:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;
    :cond_0
    return-void
.end method

.method public swapItems(II)V
    .locals 1
    .parameter "positionOne"
    .parameter "positionTwo"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$Swappable;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$Swappable;

    invoke-interface {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$Swappable;->swapItems(II)V

    .line 190
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 155
    return-void
.end method
