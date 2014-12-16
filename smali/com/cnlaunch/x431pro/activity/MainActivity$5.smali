.class Lcom/cnlaunch/x431pro/activity/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;


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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$5;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishGettingPublicID(Ljava/lang/Object;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 420
    return-void
.end method

.method public finishGettingSN(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$5;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->loginHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$4(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 408
    return-void
.end method

.method public startGettingPublicID(Ljava/lang/Object;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 414
    return-void
.end method

.method public startGettingSN(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$5;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->loginHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$4(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 400
    return-void
.end method
