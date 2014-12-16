.class Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;
.super Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;
.source "SelectSoftVersionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->delSoftByPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    iput p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->val$position:I

    .line 251
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public noOnClickListener()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public yesOnClickListener()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 255
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Lcom/cnlaunch/x431pro/utils/PathUtils;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->serialNo:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->packageid:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->val$position:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVersionPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, filePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteDirectory(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$11(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->serialNo:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->packageid:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->val$position:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->removeTheCarVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 261
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 262
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->setItemIsActive(I)V

    .line 263
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 264
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "need_refresh"

    invoke-virtual {v1, v2, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 265
    return-void
.end method
