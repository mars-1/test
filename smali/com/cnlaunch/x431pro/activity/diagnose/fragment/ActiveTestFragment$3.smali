.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$3;
.super Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
.source "ActiveTestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->initView()V
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    .line 173
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 176
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mCurrentActiveType:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnCombineGraph:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$5(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnMultipleGraph:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$6(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnTextList:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$7(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnSetMaxMin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnTextList:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$7(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->refreshButton()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)V

    .line 184
    const/4 v0, 0x1

    return v0
.end method
