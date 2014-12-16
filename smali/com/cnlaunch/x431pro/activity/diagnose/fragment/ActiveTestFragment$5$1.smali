.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5$1;
.super Ljava/lang/Object;
.source "ActiveTestFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;

.field private final synthetic val$activeTestButton:Ljava/util/ArrayList;

.field private final synthetic val$btnChoose:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;Landroid/widget/TextView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5$1;->this$1:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5$1;->val$btnChoose:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5$1;->val$activeTestButton:Ljava/util/ArrayList;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5$1;->val$btnChoose:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5$1;->val$activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    return-void
.end method
