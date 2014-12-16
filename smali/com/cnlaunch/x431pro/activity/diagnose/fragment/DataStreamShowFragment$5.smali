.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$5;
.super Ljava/lang/Object;
.source "DataStreamShowFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnRecord:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$14(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnRecord:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$14(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f07052b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 414
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->stopRecord()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$15(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)V

    .line 415
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->setRecordingStatus(Z)V

    .line 416
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->setRecordingStatus(Z)V

    .line 417
    return-void
.end method
