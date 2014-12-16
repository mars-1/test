.class Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;
.super Landroid/os/Handler;
.source "SelectSoftVersionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    .line 302
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;)Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
    .locals 1
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 305
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x123

    if-ne v2, v3, :cond_1

    .line 306
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->btnSure:Landroid/widget/Button;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 307
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->btnBluetooth:Landroid/widget/Button;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x111

    if-ne v2, v3, :cond_2

    .line 309
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 310
    .local v1, timer:Ljava/util/Timer;
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1$1;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;)V

    .line 317
    const-wide/16 v3, 0x1770

    .line 310
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 319
    .end local v1           #timer:Ljava/util/Timer;
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->getItemSelect()I

    move-result v0

    .line 320
    .local v0, index:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 321
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 322
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->tvINITitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$5(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getIniTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->tvINIText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$6(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getIniText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getIniTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getIniText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->strPrint:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$7(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
