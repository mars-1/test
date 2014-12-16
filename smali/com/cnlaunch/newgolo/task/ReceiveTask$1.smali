.class Lcom/cnlaunch/newgolo/task/ReceiveTask$1;
.super Landroid/os/Handler;
.source "ReceiveTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/task/ReceiveTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/task/ReceiveTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$1;->this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;

    .line 348
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 351
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 353
    :sswitch_0
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->voiceList:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$1;->this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;

    #calls: Lcom/cnlaunch/newgolo/task/ReceiveTask;->startPlayVoice()V
    invoke-static {v0}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->access$0(Lcom/cnlaunch/newgolo/task/ReceiveTask;)V

    goto :goto_0

    .line 359
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$1;->this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->openGoloLight()V

    goto :goto_0

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method
