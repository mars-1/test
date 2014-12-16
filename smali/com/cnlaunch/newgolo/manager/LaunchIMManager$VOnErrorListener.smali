.class Lcom/cnlaunch/newgolo/manager/LaunchIMManager$VOnErrorListener;
.super Ljava/lang/Object;
.source "LaunchIMManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VOnErrorListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;I)V
    .locals 0
    .parameter
    .parameter "pos"

    .prologue
    .line 466
    iput-object p1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$VOnErrorListener;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput p2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$VOnErrorListener;->position:I

    .line 468
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$VOnErrorListener;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->releasePlayVoice()V

    .line 472
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$VOnErrorListener;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    #getter for: Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mOnVoiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->access$0(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$VOnErrorListener;->position:I

    invoke-interface {v0, v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;->onFinish(I)V

    .line 473
    const-string/jumbo v0, "LunchIMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$VOnErrorListener;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v0, 0x0

    return v0
.end method
