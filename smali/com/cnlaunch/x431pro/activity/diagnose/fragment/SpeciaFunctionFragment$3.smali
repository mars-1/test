.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$3;
.super Ljava/lang/Object;
.source "SpeciaFunctionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->upDateButtonGridView(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;

.field private final synthetic val$btnChoose:Landroid/widget/TextView;

.field private final synthetic val$buttonList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;Ljava/util/ArrayList;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$3;->val$buttonList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$3;->val$btnChoose:Landroid/widget/TextView;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, pos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$3;->val$buttonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 283
    :goto_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->showRemoteDialog(I)V

    .line 284
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    const-string/jumbo v3, "36"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "000"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSpeciaFunction(Z)V

    .line 286
    return-void

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$3;->val$buttonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/SpeciaFunctionFragment$3;->val$btnChoose:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    move v1, v0

    .line 279
    goto :goto_1

    .line 276
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
