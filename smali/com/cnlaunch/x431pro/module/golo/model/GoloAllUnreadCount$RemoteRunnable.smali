.class Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$RemoteRunnable;
.super Ljava/lang/Object;
.source "GoloAllUnreadCount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$RemoteRunnable;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$RemoteRunnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$RemoteRunnable;-><init>(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$RemoteRunnable;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$12(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$RemoteRunnable;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->request(ILcom/cnlaunch/framework/network/async/OnDataListener;)V

    .line 192
    return-void
.end method
