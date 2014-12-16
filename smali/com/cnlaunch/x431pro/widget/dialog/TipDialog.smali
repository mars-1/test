.class public abstract Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;
.super Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;
.source "TipDialog.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContentMessage:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mTipMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentView:Landroid/view/View;

    .line 22
    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300dc

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentView:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentView:Landroid/view/View;

    const v1, 0x7f0d02a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentMessage:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentView:Landroid/view/View;

    const v1, 0x7f0d02a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mTipMessage:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentView:Landroid/view/View;

    const v1, 0x7f0d02a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 37
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 152
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;-><init>(Landroid/content/Context;IIZZ)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZ)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "isCanlce"
    .parameter "isHtml"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->setTitle(I)V

    .line 53
    if-eqz p5, :cond_0

    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_0
    invoke-virtual {p0, p4}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->setCancelable(Z)V

    .line 59
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;IIZZI)V
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "isCanlce"
    .parameter "isHtml"
    .parameter "tip"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p5}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;-><init>(Landroid/content/Context;IIZZ)V

    .line 93
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 6
    .parameter "context"
    .parameter "message"
    .parameter "isCanlce"
    .parameter "isHtml"

    .prologue
    .line 130
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZI)V
    .locals 6
    .parameter "context"
    .parameter "message"
    .parameter "isCanlce"
    .parameter "isHtml"
    .parameter "tip"

    .prologue
    .line 174
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 175
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 162
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "isCanlce"
    .parameter "isHtml"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->setTitle(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p4}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->setCancelable(Z)V

    .line 73
    if-eqz p5, :cond_0

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentMessage:Landroid/widget/TextView;

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "isCanlce"
    .parameter "isHtml"
    .parameter "tip"

    .prologue
    .line 107
    invoke-direct/range {p0 .. p5}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 108
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 6
    .parameter "context"
    .parameter "message"
    .parameter "isCanlce"
    .parameter "isHtml"

    .prologue
    .line 119
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "message"
    .parameter "isCanlce"
    .parameter "isHtml"
    .parameter "tip"

    .prologue
    .line 142
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 143
    return-void
.end method


# virtual methods
.method public createContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public abstract doingFinish(IZ)V
.end method

.method public doningAlphaClick(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "num"

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->doningAlphaClick(Landroid/view/View;I)V

    .line 199
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->doingFinish(IZ)V

    .line 200
    return-void
.end method

.method public doningBetaClick(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "num"

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->doningBetaClick(Landroid/view/View;I)V

    .line 205
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->doingFinish(IZ)V

    .line 206
    return-void
.end method

.method public doningGammaClick(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "num"

    .prologue
    .line 210
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->doningGammaClick(Landroid/view/View;I)V

    .line 211
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->doingFinish(IZ)V

    .line 212
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->onClick(Landroid/view/View;)V

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d02a4

    if-ne v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 220
    :cond_0
    return-void
.end method

.method public setTextGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->mContentMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 223
    return-void
.end method
