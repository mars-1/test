.class Lcom/cnlaunch/newgolo/task/ReceiveTask$2;
.super Ljava/lang/Object;
.source "ReceiveTask.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/task/ReceiveTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    .line 387
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->voiceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 389
    :try_start_0
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 390
    sget-object v2, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->voiceList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 391
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->access$1()Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 392
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 393
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 394
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->voiceList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setHasPlayed(Z)V

    .line 395
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v2

    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->voiceList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/newgolo/model/ChatManager;->updateDB(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 396
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->voiceList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
