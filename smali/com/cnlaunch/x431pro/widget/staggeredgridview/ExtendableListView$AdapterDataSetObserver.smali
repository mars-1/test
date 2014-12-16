.class Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ExtendableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V
    .locals 1
    .parameter

    .prologue
    .line 2192
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 2194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 2239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 2240
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    const/4 v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$14(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Z)V

    .line 2199
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$11(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I

    move-result v1

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mOldItemCount:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$15(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    .line 2200
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$16(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    .line 2202
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$17(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->clearTransientStateViews()V

    .line 2206
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 2207
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mOldItemCount:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$18(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$11(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 2215
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #calls: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->updateEmptyStatus()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$19(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V

    .line 2216
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->requestLayout()V

    .line 2217
    return-void

    .line 2212
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2221
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    const/4 v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$14(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Z)V

    .line 2223
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2226
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 2230
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$11(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I

    move-result v1

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mOldItemCount:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$15(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    .line 2231
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I
    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$16(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    .line 2232
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iput-boolean v2, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mNeedSync:Z

    .line 2234
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #calls: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->updateEmptyStatus()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$19(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V

    .line 2235
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->requestLayout()V

    .line 2236
    return-void
.end method
