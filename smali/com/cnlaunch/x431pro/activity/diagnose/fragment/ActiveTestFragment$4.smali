.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$4;
.super Ljava/lang/Object;
.source "ActiveTestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->upDateButtonGridView(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->showRemoteDialog(I)V

    .line 257
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    const-string/jumbo v1, "9"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    return-void
.end method
