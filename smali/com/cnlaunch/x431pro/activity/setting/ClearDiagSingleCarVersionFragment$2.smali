.class Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;
.super Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;
.source "ClearDiagSingleCarVersionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->delSoftByPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    iput p2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->val$position:I

    .line 167
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public noOnClickListener()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public yesOnClickListener()V
    .locals 6

    .prologue
    .line 171
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$4(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Lcom/cnlaunch/x431pro/utils/PathUtils;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->serialNo:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$5(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->packageid:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$6(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->val$position:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVersionPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, filePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteDirectory(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$7(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->serialNo:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$5(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->packageid:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$6(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->val$position:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->removeTheCarVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$0(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 178
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$0(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->setItemIsActive(I)V

    .line 179
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->access$8(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 180
    return-void
.end method
