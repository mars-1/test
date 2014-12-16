.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment$1;
.super Ljava/lang/Object;
.source "FaultCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mItemPosition:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070542

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    const-string/jumbo v1, "55"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mItemPosition:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
