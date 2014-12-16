.class Lcom/cnlaunch/newgolo/manager/LaunchIMManager$3;
.super Ljava/lang/Object;
.source "LaunchIMManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->creatVoiceStopTask(I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$3;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    iput p2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$3;->val$pos:I

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$3;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    #getter for: Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->access$1(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$3;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    #getter for: Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->access$1(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 381
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$3;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    #getter for: Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mOnVoiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->access$0(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$3;->val$pos:I

    invoke-interface {v0, v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;->onFinish(I)V

    .line 383
    :cond_0
    return-void
.end method
