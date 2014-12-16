.class public abstract Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;
.super Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;
.source "DownLoadMessageDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public createContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract oneOnClickListener()V
.end method

.method public showSuccessDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    const v0, 0x7f0704ec

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;->setTitle(I)V

    .line 43
    const v0, 0x7f07058a

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;->setMessage(I)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;->setCancelable(Z)V

    .line 46
    const v0, 0x7f0704e3

    .line 47
    new-instance v1, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog$1;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;)V

    .line 46
    invoke-virtual {p0, v0, v2, v1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f07071e

    .line 55
    new-instance v1, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog$2;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;)V

    .line 54
    invoke-virtual {p0, v0, v2, v1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;->setButtonBackground(I)V

    .line 62
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownLoadMessageDialog;->show()V

    .line 64
    return-void
.end method

.method public abstract twoOnClickListener()V
.end method
