.class Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$6;
.super Ljava/lang/Object;
.source "ModifyPasswordFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$6;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 263
    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 265
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 266
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$6;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->submit()V
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$13(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)V

    .line 267
    const/4 v1, 0x1

    .line 269
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method
