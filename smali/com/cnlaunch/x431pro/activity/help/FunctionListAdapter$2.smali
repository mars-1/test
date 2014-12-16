.class Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;
.super Ljava/lang/Object;
.source "FunctionListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

.field private final synthetic val$ll:Landroid/widget/LinearLayout;

.field private final synthetic val$strTitle:Ljava/lang/String;

.field private final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$ll:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$text:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$strTitle:Ljava/lang/String;

    .line 158
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

    .line 161
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mStringLastClickedTitle:Ljava/lang/String;

    .line 163
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->FUN:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mStringLastClickedTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->WriteInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$text:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mllLastShow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$ll:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mllLastShow:Landroid/widget/LinearLayout;

    .line 174
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$text:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mLastClicked:Landroid/widget/TextView;

    .line 181
    :cond_0
    :goto_1
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$strTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mStringLastClickedTitle:Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->FUN:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mStringLastClickedTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->WriteInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$text:Landroid/widget/TextView;

    const v1, 0x7f020484

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mllLastShow:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$ll:Landroid/widget/LinearLayout;

    if-eq v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mllLastShow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mLastClicked:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 178
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$ll:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mllLastShow:Landroid/widget/LinearLayout;

    .line 179
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$2;->val$text:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mLastClicked:Landroid/widget/TextView;

    goto :goto_1
.end method
