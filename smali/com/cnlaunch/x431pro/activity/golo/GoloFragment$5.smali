.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$5;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$4(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$4(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->getPositionForSection(I)I

    move-result v0

    .line 277
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setSelection(I)V

    .line 281
    .end local v0           #position:I
    :cond_0
    return-void
.end method
