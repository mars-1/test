.class Lcom/cnlaunch/x431pro/activity/setting/AboutFragment$1;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->initPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 166
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reputPopupWindow:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 168
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
