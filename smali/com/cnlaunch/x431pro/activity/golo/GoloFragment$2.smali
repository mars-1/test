.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    .locals 1
    .parameter

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    return-object v0
.end method


# virtual methods
.method public sendDiagnoseStatus(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "user_id"
    .parameter "request_id"
    .parameter "status"

    .prologue
    .line 1437
    const-string/jumbo v0, "GoloFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendDiagnoseStatus request_id :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1439
    :cond_0
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "TextUtils.isEmpty(request_id) || null.equalsIgnoreCase(request_id)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :goto_0
    return-void

    .line 1443
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$18(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2$1;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
