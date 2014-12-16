.class Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageContentObserver;
.super Landroid/database/ContentObserver;
.source "GoloAllUnreadCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    .line 143
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 144
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #calls: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->getSqlUnreadCount()I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$10(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)I

    move-result v1

    #setter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->newMsgCount:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$11(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;I)V

    .line 149
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$1(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$1(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->newMsgCount:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$2(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipCount:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$3(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->remoteCount:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$4(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;->onChange(Ljava/lang/Object;)V

    .line 152
    :cond_0
    return-void
.end method
