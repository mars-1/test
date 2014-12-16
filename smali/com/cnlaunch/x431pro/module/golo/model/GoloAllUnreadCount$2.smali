.class Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$2;
.super Ljava/lang/Object;
.source "GoloAllUnreadCount.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$2;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 201
    invoke-static {}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$8()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$2;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$6(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$8()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$RemoteRunnable;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$2;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$RemoteRunnable;-><init>(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$RemoteRunnable;)V

    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$9(Ljava/lang/Runnable;)V

    .line 205
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$2;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$6(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$8()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    return-void
.end method
