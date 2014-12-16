.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;
.super Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
.source "DataStreamShowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->initBottomActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    .line 244
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mMaskString:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    const/4 v2, 0x2

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJumpType:I
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$6(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;I)V

    .line 249
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnSetMaxMin:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$7(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnMultipleGraph:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnCombineGraph:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnTextList:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->subView:Landroid/view/View;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$11(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnHelp:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$12(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 255
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCurrentDatastreamType:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "810"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mVWDatastreamLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$13(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    :cond_0
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070540

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    goto :goto_0
.end method
