.class Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$1;
.super Ljava/lang/Object;
.source "FocusClientAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    iput p2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$1;->val$position:I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->access$0(Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getUser_id()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, id:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->access$1(Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 148
    return-void
.end method
