.class Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;
.super Ljava/lang/Object;
.source "LaunchIMManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->creatVoiceStartTask(Ljava/lang/String;I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

.field private final synthetic val$pos:I

.field private final synthetic val$voicePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    iput-object p2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->val$voicePath:Ljava/lang/String;

    iput p3, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->val$pos:I

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    #getter for: Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->access$1(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 396
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    #getter for: Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->access$1(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->val$voicePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    #getter for: Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->access$1(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 398
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    #getter for: Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mOnVoiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->access$0(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->val$pos:I

    invoke-interface {v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;->onStart(I)V

    .line 399
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    #getter for: Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->access$1(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 416
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 402
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->releasePlayVoice()V

    .line 403
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    #getter for: Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mOnVoiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->access$0(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->val$pos:I

    invoke-interface {v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;->onFinish(I)V

    goto :goto_0

    .line 404
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 405
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 406
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    #getter for: Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mOnVoiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->access$0(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->val$pos:I

    invoke-interface {v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;->onFinish(I)V

    goto :goto_0

    .line 407
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 408
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 409
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->releasePlayVoice()V

    .line 410
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    #getter for: Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mOnVoiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->access$0(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->val$pos:I

    invoke-interface {v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;->onFinish(I)V

    goto :goto_0

    .line 411
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 412
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 413
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->releasePlayVoice()V

    .line 414
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    #getter for: Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mOnVoiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->access$0(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;->val$pos:I

    invoke-interface {v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;->onFinish(I)V

    goto :goto_0
.end method
