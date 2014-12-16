.class Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView$1;
.super Landroid/database/DataSetObserver;
.source "SwipeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView$1;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    .line 266
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 270
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView$1;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onListChanged()V

    .line 271
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView$1;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->access$0(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;)Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->resetItems()V

    .line 272
    return-void
.end method
