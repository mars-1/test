.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->val$activeTestButton:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->val$btnChoose:Landroid/widget/TextView;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v1, spinnerlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->val$activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    move-result-object v2

    if-nez v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    new-instance v3, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$11(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$12(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;)V

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->val$btnChoose:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->setListViewWidth(I)V

    .line 284
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    move-result-object v2

    new-instance v3, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5$1;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->val$btnChoose:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->val$activeTestButton:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;Landroid/widget/TextView;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 290
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->val$btnChoose:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->show(Landroid/view/View;Ljava/util/List;)V

    .line 291
    return-void

    .line 278
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->val$activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
