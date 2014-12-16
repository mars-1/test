.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$4;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    .line 294
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJumpType:I
    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$6(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;I)V

    .line 298
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnSetMaxMin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$7(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnTextList:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnCombineGraph:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnMultipleGraph:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->subView:Landroid/view/View;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$11(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnHelp:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$12(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCurrentDatastreamType:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "810"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mVWDatastreamLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$13(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    :cond_0
    return v3
.end method
