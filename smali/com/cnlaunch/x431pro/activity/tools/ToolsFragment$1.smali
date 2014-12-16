.class Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$1;
.super Landroid/os/Handler;
.source "ToolsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->toolDataInfoList:Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->access$2(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->refreshData(Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->adapter:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->access$3(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->toolDataInfoList:Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->access$2(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->setList(Ljava/util/List;)V

    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->adapter:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->access$3(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
