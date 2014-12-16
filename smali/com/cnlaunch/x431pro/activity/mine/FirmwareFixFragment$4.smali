.class Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$4;
.super Ljava/lang/Thread;
.source "FirmwareFixFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->startUpdateing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    .line 330
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 332
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateing:Z
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$17(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    return-void

    .line 334
    :cond_0
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$4;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadIndex:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$22(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 339
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    const/4 v2, 0x0

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadIndex:I
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$23(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;I)V

    .line 340
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    const-string/jumbo v2, "."

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$24(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Ljava/lang/String;)V

    .line 344
    :goto_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadIndex:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$22(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadIndex:I
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$23(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;I)V

    .line 345
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$21(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 342
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadString:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$15(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$24(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Ljava/lang/String;)V

    goto :goto_2
.end method
