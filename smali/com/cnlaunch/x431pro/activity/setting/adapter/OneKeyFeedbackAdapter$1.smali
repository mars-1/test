.class Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$1;
.super Ljava/lang/Object;
.source "OneKeyFeedbackAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

.field private final synthetic val$checkpPosition:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    iput p2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$1;->val$checkpPosition:I

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->access$0(Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->access$1()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->access$1()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$1;->val$checkpPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mFragment:Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->access$2(Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;)Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->selectAllChanged()V

    .line 126
    return-void
.end method
