.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->sendDiagnoseStatus(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;

.field private final synthetic val$request_id:Ljava/lang/String;

.field private final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;

    iput p2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->val$status:I

    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->val$request_id:Ljava/lang/String;

    .line 1442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1447
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->val$status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v1

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->val$request_id:Ljava/lang/String;

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sendCancelCmd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$19(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1449
    :cond_1
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->val$status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1450
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v1

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->val$request_id:Ljava/lang/String;

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sendFinishCmd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$20(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1451
    :cond_2
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->val$status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1452
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v1

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->val$request_id:Ljava/lang/String;

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sendProcessingCmd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$21(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1453
    :cond_3
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->val$status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v1

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;->val$request_id:Ljava/lang/String;

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sendResetCmd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$22(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
