.class Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$1;
.super Ljava/lang/Object;
.source "GoloAllUnreadCount.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;


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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$1;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;I)V
    .locals 4
    .parameter "userid"
    .parameter "count"

    .prologue
    .line 168
    const-string/jumbo v0, "GoloAllUnreadCount"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "main tip run count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string/jumbo v0, "update_new_tip_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$1;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #setter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipCount:I
    invoke-static {v0, p2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$0(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;I)V

    .line 171
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$1;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$1(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$1;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$1(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$1;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->newMsgCount:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$2(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$1;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipCount:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$3(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$1;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->remoteCount:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$4(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;->onChange(Ljava/lang/Object;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$5()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$1;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$6(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$5()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    :cond_2
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$TipRunnable;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$1;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$TipRunnable;-><init>(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$TipRunnable;)V

    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$7(Ljava/lang/Runnable;)V

    .line 180
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$1;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    #getter for: Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$6(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->access$5()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
