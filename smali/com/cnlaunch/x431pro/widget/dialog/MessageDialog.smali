.class public Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
.super Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;
.source "MessageDialog.java"


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

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "message"

    .prologue
    .line 135
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 73
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;IIZZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "isCanle"

    .prologue
    .line 84
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;IIZZ)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZ)V
    .locals 0
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "isCancle"
    .parameter "isHtml"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setTitle(I)V

    .line 58
    if-eqz p5, :cond_0

    .line 59
    invoke-virtual {p0, p3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setDialogHtmlMessage(I)V

    .line 63
    :goto_0
    invoke-virtual {p0, p4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setCancelable(Z)V

    .line 64
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0, p3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setMessage(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 6
    .parameter "context"
    .parameter "message"
    .parameter "isCancle"
    .parameter "isHtml"

    .prologue
    .line 126
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "message"

    .prologue
    .line 115
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "isCanle"

    .prologue
    .line 95
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "isCancle"
    .parameter "isHtml"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setTitle(Ljava/lang/String;)V

    .line 39
    if-eqz p5, :cond_0

    .line 40
    invoke-virtual {p0, p3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setDialogHtmlMessage(Ljava/lang/String;)V

    .line 44
    :goto_0
    invoke-virtual {p0, p4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setCancelable(Z)V

    .line 45
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, p3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 6
    .parameter "context"
    .parameter "message"
    .parameter "isCancle"
    .parameter "isHtml"

    .prologue
    .line 106
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 107
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

.method public show(II)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    .line 147
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setTitle(I)V

    .line 148
    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setMessage(I)V

    .line 149
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setCancelable(Z)V

    .line 150
    const v0, 0x7f070044

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 152
    return-void
.end method

.method public show(III)V
    .locals 2
    .parameter "title"
    .parameter "message"
    .parameter "alphaText"

    .prologue
    const/4 v1, 0x1

    .line 210
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setTitle(I)V

    .line 211
    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setMessage(I)V

    .line 212
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setCancelable(Z)V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v1, v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 215
    return-void
.end method

.method public show(IIZ)V
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "isCanle"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setTitle(I)V

    .line 194
    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setMessage(I)V

    .line 195
    invoke-virtual {p0, p3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setCancelable(Z)V

    .line 196
    const v0, 0x7f070044

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 198
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    .line 163
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setTitle(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setMessage(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setCancelable(Z)V

    .line 166
    const v0, 0x7f070044

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 168
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "isCanle"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setTitle(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setMessage(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, p3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setCancelable(Z)V

    .line 181
    const v0, 0x7f070044

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 183
    return-void
.end method
