.class Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$2;
.super Ljava/lang/Object;
.source "RemoteUserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->displayRemoteOrderInfo(Landroid/view/View;Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ViewHold;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

.field private final synthetic val$goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$2;->val$goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$2;->val$goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_id()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, id:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->access$0(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 253
    return-void
.end method
