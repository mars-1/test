.class Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;
.super Ljava/lang/Object;
.source "FAQlistAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

.field private final synthetic val$answerView:Landroid/widget/TextView;

.field private final synthetic val$strTitle:Ljava/lang/String;

.field private final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$answerView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$title:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$strTitle:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v4, 0x7f02012b

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$answerView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->lastClickedTitle:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$answerView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$title:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 115
    :goto_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->FAQ:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->lastClickedTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->WriteInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mtvLastClicked:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$title:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mtvLastClicked:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$answerView:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mtvLastShow:Landroid/widget/TextView;

    .line 126
    :cond_0
    :goto_1
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$strTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->lastClickedTitle:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$answerView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$title:Landroid/widget/TextView;

    const v1, 0x7f020480

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mtvLastClicked:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$title:Landroid/widget/TextView;

    if-eq v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mtvLastClicked:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 122
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mtvLastShow:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$title:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mtvLastClicked:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter$1;->val$answerView:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->mtvLastShow:Landroid/widget/TextView;

    goto :goto_1
.end method
