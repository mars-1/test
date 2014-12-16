.class public abstract Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;
.super Ljava/lang/Object;
.source "SelectMessageDialogTri.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract gamOnClickListener()V
.end method

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
    .line 91
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;->showDialog(Landroid/content/Context;IIZ)V

    .line 92
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

    .line 57
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;IIZ)V

    .line 58
    .local v0, messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const v1, 0x7f07002b

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$4;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$4;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f070029

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$5;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$5;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x7f070512

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$6;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$6;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setGammaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 79
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

    .line 23
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-direct {v0, p1, p2, p3, v3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 24
    .local v0, messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setButtonBackground(I)V

    .line 25
    const v1, 0x7f07002b

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$1;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$1;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 32
    const v1, 0x7f070029

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$2;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$2;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 38
    const v1, 0x7f070512

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$3;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$3;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setGammaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 46
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

    .line 101
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;IIZ)V

    .line 103
    .local v0, messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const v1, 0x7f07062c

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$7;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$7;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f07061a

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$8;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$8;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 116
    const v1, 0x7f070512

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$9;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$9;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setGammaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 124
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setButtonBackground(I)V

    .line 125
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setButtonBackground(I)V

    .line 126
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 127
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

    .line 136
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 138
    .local v0, messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const v1, 0x7f07002b

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$10;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$10;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 145
    const v1, 0x7f070029

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$11;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$11;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 151
    const v1, 0x7f070512

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$12;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$12;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setGammaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 159
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setButtonBackground(I)V

    .line 160
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 161
    return-void
.end method

.method public abstract yesOnClickListener()V
.end method
