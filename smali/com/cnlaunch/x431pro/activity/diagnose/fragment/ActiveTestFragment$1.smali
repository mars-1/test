.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$1;
.super Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
.source "ActiveTestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->addCombineGraphTad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    .line 126
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mMaskString:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnCombineGraph:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$5(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnMultipleGraph:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$6(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnTextList:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$7(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnSetMaxMin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->refreshButton()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)V

    .line 135
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07053e

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    goto :goto_0
.end method
