.class Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment$1;
.super Ljava/lang/Object;
.source "OneKeyFeedbackFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->initViews()V
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
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
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
    .line 134
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    .line 136
    .local v0, holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;
    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->cb_feedback_log_choice:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 137
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->access$0(Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;)Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->cb_feedback_log_choice:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method
