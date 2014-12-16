.class Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$1;
.super Landroid/os/Handler;
.source "ClearDiagSingleCarVersionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    .line 218
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 222
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$0(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->getItemSelect()I

    move-result v0

    .line 223
    .local v0, index:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$0(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 225
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->tvINITitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getIniTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->tvINIText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getIniText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_0
    return-void
.end method
