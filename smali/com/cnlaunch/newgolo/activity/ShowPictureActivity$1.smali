.class Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$1;
.super Landroid/os/Handler;
.source "ShowPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mRoundProgressView:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$0(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mRoundProgressView:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$0(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mRoundProgressView:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$0(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
