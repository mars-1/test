.class Lcom/cnlaunch/physics/utils/WriteByteDataStream$MyTimerTasks;
.super Ljava/util/TimerTask;
.source "WriteByteDataStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/physics/utils/WriteByteDataStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTasks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/physics/utils/WriteByteDataStream;


# direct methods
.method constructor <init>(Lcom/cnlaunch/physics/utils/WriteByteDataStream;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream$MyTimerTasks;->this$0:Lcom/cnlaunch/physics/utils/WriteByteDataStream;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream$MyTimerTasks;->this$0:Lcom/cnlaunch/physics/utils/WriteByteDataStream;

    const/16 v1, 0x400

    new-array v1, v1, [B

    #setter for: Lcom/cnlaunch/physics/utils/WriteByteDataStream;->buffer:[B
    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->access$0(Lcom/cnlaunch/physics/utils/WriteByteDataStream;[B)V

    .line 84
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream$MyTimerTasks;->this$0:Lcom/cnlaunch/physics/utils/WriteByteDataStream;

    #getter for: Lcom/cnlaunch/physics/utils/WriteByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;
    invoke-static {v0}, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->access$1(Lcom/cnlaunch/physics/utils/WriteByteDataStream;)Lcom/cnlaunch/physics/impl/IPhysics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand_wait(Z)V

    .line 86
    return-void
.end method
