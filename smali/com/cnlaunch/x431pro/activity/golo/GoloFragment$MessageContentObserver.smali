.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;
.super Landroid/database/ContentObserver;
.source "GoloFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 475
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    .line 476
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 477
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 481
    const-string/jumbo v1, "GoloFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MessageContentObserver start onChanage:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$6(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$6(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v2

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListUnreadCount(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$31(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/util/List;)V

    .line 485
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$6(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v2

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListLastTime(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$32(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/util/List;)V

    .line 486
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$6(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getAllUnreadCount(Ljava/util/List;)I

    move-result v2

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allBundingNewMsg:I
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$33(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;I)V

    .line 487
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$6(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/cnlaunch/x431pro/module/golo/model/BundingNewMessageComparator;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/module/golo/model/BundingNewMessageComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 489
    const-string/jumbo v1, "GoloFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bundingCount:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allBundingNewMsg:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$13(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    const/4 v0, 0x0

    .line 492
    .local v0, guanzhuCount:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$7(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$7(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v2

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListUnreadCount(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$31(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/util/List;)V

    .line 494
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$7(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v2

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListLastTime(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$32(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/util/List;)V

    .line 495
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$7(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getAllUnreadCount(Ljava/util/List;)I

    move-result v0

    .line 496
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$7(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/cnlaunch/x431pro/module/golo/model/GuanzhuComparator;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GuanzhuComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 497
    const-string/jumbo v1, "GoloFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "guanzhuCount:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$11(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allBundingNewMsg:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$13(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allTipCount:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$14(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 503
    return-void
.end method
