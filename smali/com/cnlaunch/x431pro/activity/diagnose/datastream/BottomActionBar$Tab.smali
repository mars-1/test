.class public abstract Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
.super Ljava/lang/Object;
.source "BottomActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tab"
.end annotation


# instance fields
.field mListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;

.field mTabView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->mTabView:Landroid/view/View;

    .line 52
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->mListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;

    return-object v0
.end method

.method public abstract isEnable()Z
.end method

.method public setTabListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    .locals 0
    .parameter "listener"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->mListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;

    .line 56
    return-object p0
.end method
