.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteOrderObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    return-object v0
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$11(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;

    invoke-direct {v1, p0, p2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver$1;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    return-void
.end method
