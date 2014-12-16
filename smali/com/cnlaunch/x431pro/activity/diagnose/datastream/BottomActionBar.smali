.class public Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;
.super Ljava/lang/Object;
.source "BottomActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;,
        Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLastClickView:Landroid/view/View;

.field private mSelectedTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

.field private mTabMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mTabMap:Ljava/util/Map;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mLastClickView:Landroid/view/View;

    .line 18
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mActivity:Landroid/app/Activity;

    .line 19
    return-void
.end method

.method private setTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 86
    .local v0, trans:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mSelectedTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    if-ne v1, p1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mSelectedTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mSelectedTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->getCallback()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mSelectedTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    invoke-interface {v1, v2, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;->onTabReselected(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 103
    :cond_1
    return-void

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mSelectedTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mSelectedTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->getCallback()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mSelectedTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    invoke-interface {v1, v2, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;->onTabUnselected(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 94
    :cond_3
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mSelectedTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    .line 95
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mSelectedTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mSelectedTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->getCallback()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mSelectedTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    invoke-interface {v1, v2, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;->onTabSelected(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;Landroid/app/FragmentTransaction;)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mTabMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->mTabView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p1, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->mTabView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method

.method public getLastClickView()Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mLastClickView:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 69
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mTabMap:Ljava/util/Map;

    monitor-enter v2

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    .line 71
    .local v0, tab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mLastClickView:Landroid/view/View;

    .line 73
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->setTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V

    .line 69
    :cond_0
    monitor-exit v2

    .line 80
    return-void

    .line 69
    .end local v0           #tab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mLastClickView:Landroid/view/View;

    iget-object v1, p1, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->mTabView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mLastClickView:Landroid/view/View;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->mTabMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->mTabView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method
