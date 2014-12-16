.class Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$3;
.super Ljava/lang/Object;
.source "UserDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->initAutoCarLogo(Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    iput p2, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$3;->val$index:I

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 250
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$3;->val$index:I

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->listCarName:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->access$11(Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment;->listCarName:Ljava/util/ArrayList;

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/golo/UserDetailFragment$3;->val$index:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 253
    :cond_0
    return-void
.end method
