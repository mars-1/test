.class Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment$2;
.super Ljava/lang/Object;
.source "ChangeEmailFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 94
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->et_mine_email:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;

    const/16 v1, 0x83b

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->request(I)V

    .line 104
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
