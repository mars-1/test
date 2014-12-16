.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener$1;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->onChange(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    .line 1413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1416
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUnreadTipCountForSerial()Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$35(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v0

    .line 1417
    .local v0, tipList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/Count;>;"
    if-nez v0, :cond_0

    .line 1427
    :goto_0
    return-void

    .line 1420
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v1

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$6(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1421
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$6(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updataListTipCountForSerial(Ljava/util/List;Ljava/util/List;)V

    .line 1422
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v3

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$6(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->totalUnreadTipCount(Ljava/util/List;)I

    move-result v2

    #setter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allTipCount:I
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$36(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;I)V

    .line 1423
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v1

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$6(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/cnlaunch/x431pro/module/golo/model/BundingNewMessageComparator;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/module/golo/model/BundingNewMessageComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1426
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v1

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$11(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
