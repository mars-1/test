.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick$1;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;

.field private final synthetic val$goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick$1;->val$goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 738
    const-string/jumbo v0, "GoloFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " RemoteDiagnoseHandleListener.STATUS_CANCEL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick$1;->val$goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick$1;->val$goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick$1;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    move-result-object v0

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick$1;->val$goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendRemoteDiagnoseStatus(Ljava/lang/String;I)V

    .line 740
    if-eqz p1, :cond_0

    .line 741
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 743
    :cond_0
    return-void
.end method
