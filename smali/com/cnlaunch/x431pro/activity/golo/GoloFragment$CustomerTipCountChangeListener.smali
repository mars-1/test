.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomerTipCountChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1404
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    .locals 1
    .parameter

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    return-object v0
.end method


# virtual methods
.method public onChange(Ljava/lang/String;I)V
    .locals 3
    .parameter "userId"
    .parameter "count"

    .prologue
    .line 1408
    const-string/jumbo v0, "GoloFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tip is changed count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const-string/jumbo v0, "update_new_tip_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    :goto_0
    return-void

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$18(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener$1;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
