.class Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$1;
.super Ljava/lang/Object;
.source "RemoteUserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->displayRepairInfo(Landroid/view/View;Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

.field private final synthetic val$goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$1;->val$goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$1;->val$goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getSend_id()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, id:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->access$0(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 197
    return-void
.end method
