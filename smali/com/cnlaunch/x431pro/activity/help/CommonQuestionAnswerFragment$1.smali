.class Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;
.super Ljava/lang/Object;
.source "CommonQuestionAnswerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->recQ2AData(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

.field private final synthetic val$answerView:Landroid/widget/TextView;

.field private final synthetic val$strTitle:Ljava/lang/String;

.field private final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$answerView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$title:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$strTitle:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v4, 0x7f02012c

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$answerView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->lastClickedTitle:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$answerView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$title:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->lastClickedTitle:Ljava/lang/String;

    #calls: Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->writeLastClicked(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->access$0(Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;Ljava/lang/String;)Z

    .line 139
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mtvLastClicked:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$title:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mtvLastClicked:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$answerView:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mtvLastShow:Landroid/widget/TextView;

    .line 148
    :cond_0
    :goto_1
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$strTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->lastClickedTitle:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$answerView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$title:Landroid/widget/TextView;

    const v1, 0x7f020484

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mtvLastClicked:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$title:Landroid/widget/TextView;

    if-eq v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mtvLastClicked:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 144
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mtvLastShow:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$title:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mtvLastClicked:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;->val$answerView:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mtvLastShow:Landroid/widget/TextView;

    goto :goto_1
.end method
