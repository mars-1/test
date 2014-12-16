.class public Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;
.super Ljava/lang/Object;
.source "TabListener.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Fragment;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mArgs:Landroid/os/Bundle;

.field private mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private mPostAction:Ljava/lang/Runnable;

.field private mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/Runnable;Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V
    .locals 1
    .parameter "activity"
    .parameter
    .parameter "args"
    .parameter "postAction"
    .parameter "recorder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Runnable;",
            "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;,"Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener<TT;>;"
    .local p2, clz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    .line 22
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    .line 27
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mActivity:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mClass:Ljava/lang/Class;

    .line 29
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mArgs:Landroid/os/Bundle;

    .line 30
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mPostAction:Ljava/lang/Runnable;

    .line 31
    iput-object p5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/Runnable;Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V
    .locals 6
    .parameter "activity"
    .parameter
    .parameter "postAction"
    .parameter "recorder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Runnable;",
            "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;,"Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener<TT;>;"
    .local p2, clz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;-><init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/Runnable;Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 64
    .local p0, this:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;,"Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->onTabUnselected(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->onTabSelected(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 66
    return-void
.end method

.method public onTabSelected(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 39
    .local p0, this:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;,"Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mPostAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mPostAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mArgs:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mFragment:Landroid/app/Fragment;

    .line 43
    const v0, 0x7f0d014e

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;->setRecorder(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    if-eqz v0, :cond_2

    .line 49
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    invoke-interface {v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->setFragment(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;)V

    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->setFragment(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;)V

    .line 54
    :cond_2
    return-void
.end method

.method public onTabUnselected(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 57
    .local p0, this:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;,"Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 61
    :cond_0
    return-void
.end method

.method public setCallKeyDownFragment(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 35
    .local p0, this:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;,"Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener<TT;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    .line 36
    return-void
.end method
