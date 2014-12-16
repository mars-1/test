.class Lcom/cnlaunch/x431pro/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/MainActivity$6;)Lcom/cnlaunch/x431pro/activity/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onChange(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "countChangeCallback:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;-><init>(Lcom/cnlaunch/x431pro/activity/MainActivity$6;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 456
    return-void
.end method
