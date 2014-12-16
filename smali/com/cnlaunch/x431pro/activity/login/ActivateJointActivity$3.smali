.class Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$3;
.super Ljava/lang/Object;
.source "ActivateJointActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 129
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->bt_activate_comfirm:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
