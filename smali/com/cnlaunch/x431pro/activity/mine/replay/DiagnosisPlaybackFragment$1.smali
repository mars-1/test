.class Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;
.super Ljava/lang/Object;
.source "DiagnosisPlaybackFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->btn_selectall:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckCount:I
    invoke-static {v0, v4}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;I)V

    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->antiSelectItem()V

    .line 117
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->selectMenuBeanList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckLimit:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckLimit:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)I

    move-result v1

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckCount:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;I)V

    .line 111
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckLimit:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->selectAllItem(I)V

    .line 112
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    const v2, 0x7f07053a

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckLimit:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->selectAllItem()V

    goto :goto_0
.end method
