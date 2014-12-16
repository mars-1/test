.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;
.super Ljava/lang/Object;
.source "GoloFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConflictStatus"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2463
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2463
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    return-void
.end method


# virtual methods
.method public hiden()V
    .locals 2

    .prologue
    .line 2465
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$11(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2466
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$11(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2470
    return-void
.end method
