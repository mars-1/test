.class Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;
.super Ljava/lang/Thread;
.source "ShowPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrgThreadTask"
.end annotation


# instance fields
.field private pInteger:Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;

.field private stop:Z

.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;)V
    .locals 0
    .parameter
    .parameter "pIt"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;->pInteger:Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;

    .line 204
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, currentProgress:I
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;->stop:Z

    if-eqz v3, :cond_1

    .line 231
    const-string/jumbo v3, "ShowPictureActivity"

    const-string/jumbo v4, "PrgAsyncTask exit"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 218
    :cond_1
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_1
    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;->pInteger:Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;

    iget-object v3, v3, Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;->length:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;->pInteger:Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;

    iget-object v3, v3, Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;->progress:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;->pInteger:Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;

    iget-object v4, v4, Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;->length:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 226
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 227
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 228
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 229
    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 219
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 220
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;->stop:Z

    .line 211
    return-void
.end method
