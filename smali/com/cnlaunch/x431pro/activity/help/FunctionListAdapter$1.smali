.class Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$1;
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

.field private final synthetic val$aldata:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$1;->val$aldata:Ljava/util/ArrayList;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 128
    const v6, 0x7f0c021a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 129
    .local v2, itemHeader:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 130
    .local v4, strNo:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, iNo:I
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$1;->val$aldata:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getItemRef()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, strPath:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v6, v6, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->mParentHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 135
    .local v3, message:Landroid/os/Message;
    sget-object v6, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_OpenHtmlFile:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method
