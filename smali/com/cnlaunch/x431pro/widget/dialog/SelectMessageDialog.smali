.class public abstract Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;
.super Ljava/lang/Object;
.source "SelectMessageDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract noOnClickListener()V
.end method

.method public showDialog(Landroid/content/Context;IIIZ)V
    .locals 0
    .parameter "mContext"
    .parameter "title"
    .parameter "message"
    .parameter "icon"
    .parameter "cancelable"

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;->showDialog(Landroid/content/Context;IIZ)V

    .line 81
    return-void
.end method

.method public showDialog(Landroid/content/Context;IIZ)V
    .locals 4
    .parameter "mContext"
    .parameter "title"
    .parameter "message"
    .parameter "cancelable"

    .prologue
    const/4 v3, 0x1

    .line 53
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;IIZ)V

    .line 54
    .local v0, messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const v1, 0x7f070044

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$3;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$3;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f070042

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$4;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$4;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 68
    return-void
.end method

.method public showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "mContext"
    .parameter "title"
    .parameter "message"
    .parameter "cancelable"

    .prologue
    const/4 v3, 0x1

    .line 26
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-direct {v0, p1, p2, p3, v3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 27
    .local v0, messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setButtonBackground(I)V

    .line 28
    const v1, 0x7f070044

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$1;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$1;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 35
    const v1, 0x7f070042

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$2;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$2;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 42
    return-void
.end method

.method public showDifDialog(Landroid/content/Context;IIZ)V
    .locals 4
    .parameter "mContext"
    .parameter "title"
    .parameter "message"
    .parameter "cancelable"

    .prologue
    const/4 v3, 0x1

    .line 90
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;IIZ)V

    .line 92
    .local v0, messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const v1, 0x7f070044

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$5;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$5;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 99
    const v1, 0x7f070042

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$6;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$6;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 106
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setButtonBackground(I)V

    .line 107
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 108
    return-void
.end method

.method public showDifDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "mContext"
    .parameter "title"
    .parameter "message"
    .parameter "cancelable"

    .prologue
    const/4 v3, 0x1

    .line 117
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    .local v0, messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const v1, 0x7f070044

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$7;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$7;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 126
    const v1, 0x7f070042

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$8;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$8;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 133
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setButtonBackground(I)V

    .line 134
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 135
    return-void
.end method

.method public abstract yesOnClickListener()V
.end method
