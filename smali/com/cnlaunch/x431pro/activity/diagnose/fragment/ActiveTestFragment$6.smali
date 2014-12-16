.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$6;
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

.field private final synthetic val$activeTestButton:Ljava/util/ArrayList;

.field private final synthetic val$btnChoose:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;Ljava/util/ArrayList;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$6;->val$activeTestButton:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$6;->val$btnChoose:Landroid/widget/TextView;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, pos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$6;->val$activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 306
    :goto_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->showRemoteDialog(I)V

    .line 307
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    const-string/jumbo v3, "9"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 308
    return-void

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$6;->val$activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$6;->val$btnChoose:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    move v1, v0

    .line 303
    goto :goto_1

    .line 300
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
