.class public abstract Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final BUTTON_ALPHA:I = 0x1

.field public static final BUTTON_BETA:I = 0x2

.field public static final BUTTON_GAMMA:I = 0x3


# instance fields
.field private btnAlpha:Landroid/widget/Button;

.field private btnBeta:Landroid/widget/Button;

.field private btnGamma:Landroid/widget/Button;

.field private isAlphaAutoDismiss:Z

.field private isBetaAutoDismiss:Z

.field private isGammaAutoDismiss:Z

.field private mAlphaClickListener:Landroid/view/View$OnClickListener;

.field private mBetaClickListener:Landroid/view/View$OnClickListener;

.field private mContentCustom:Landroid/widget/FrameLayout;

.field private mContentMessage:Landroid/widget/TextView;

.field private mGammaClickListener:Landroid/view/View$OnClickListener;

.field private mMessagePanle:Landroid/view/View;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->isAlphaAutoDismiss:Z

    .line 43
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->isBetaAutoDismiss:Z

    .line 44
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->isGammaAutoDismiss:Z

    .line 51
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->init()V

    .line 52
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030131

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 72
    const v1, 0x7f0300d4

    invoke-super {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 74
    const v1, 0x7f0d004d

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->tvTitle:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0d0070

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mContentCustom:Landroid/widget/FrameLayout;

    .line 78
    const v1, 0x7f0d0297

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mContentMessage:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0d0295

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mMessagePanle:Landroid/view/View;

    .line 82
    const v1, 0x7f0d007e

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnAlpha:Landroid/widget/Button;

    .line 83
    const v1, 0x7f0d0298

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnBeta:Landroid/widget/Button;

    .line 84
    const v1, 0x7f0d0299

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnGamma:Landroid/widget/Button;

    .line 86
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnAlpha:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnBeta:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnGamma:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 100
    .local v0, window:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 101
    return-void
.end method


# virtual methods
.method public abstract createContentView()Landroid/view/View;
.end method

.method public doningAlphaClick(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "num"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mAlphaClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mAlphaClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 329
    :cond_0
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->isAlphaAutoDismiss:Z

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->dismiss()V

    .line 332
    :cond_1
    return-void
.end method

.method public doningBetaClick(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "num"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mBetaClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mBetaClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 345
    :cond_0
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->isBetaAutoDismiss:Z

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->dismiss()V

    .line 348
    :cond_1
    return-void
.end method

.method public doningGammaClick(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "num"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mGammaClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mGammaClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 361
    :cond_0
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->isGammaAutoDismiss:Z

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->dismiss()V

    .line 364
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 303
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 316
    :goto_0
    return-void

    .line 305
    :sswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->doningAlphaClick(Landroid/view/View;I)V

    goto :goto_0

    .line 308
    :sswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->doningBetaClick(Landroid/view/View;I)V

    goto :goto_0

    .line 311
    :sswitch_2
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->doningGammaClick(Landroid/view/View;I)V

    goto :goto_0

    .line 303
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d007e -> :sswitch_0
        0x7f0d0298 -> :sswitch_1
        0x7f0d0299 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x8

    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->createContentView()Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, contentView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mMessagePanle:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setContentView(Landroid/view/View;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mContentCustom:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "resInt"
    .parameter "isAutodimiss"
    .parameter "mClickListener"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnAlpha:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 219
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnAlpha:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->isAlphaAutoDismiss:Z

    .line 221
    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mAlphaClickListener:Landroid/view/View$OnClickListener;

    .line 222
    return-void
.end method

.method public setAlphaOnClickListener(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "resText"
    .parameter "isAutodimiss"
    .parameter "mClickListener"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnAlpha:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnAlpha:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->isAlphaAutoDismiss:Z

    .line 202
    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mAlphaClickListener:Landroid/view/View$OnClickListener;

    .line 203
    return-void
.end method

.method public setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "resInt"
    .parameter "isAutodimiss"
    .parameter "mClickListener"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnBeta:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 257
    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->isBetaAutoDismiss:Z

    .line 258
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnBeta:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mBetaClickListener:Landroid/view/View$OnClickListener;

    .line 260
    return-void
.end method

.method public setBetaOnClickListener(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "resText"
    .parameter "isAutodimiss"
    .parameter "mClickListener"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnBeta:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->isBetaAutoDismiss:Z

    .line 239
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnBeta:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 240
    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mBetaClickListener:Landroid/view/View$OnClickListener;

    .line 241
    return-void
.end method

.method public setBottomLayoutGone()V
    .locals 2

    .prologue
    .line 139
    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public setButtonBackground(I)V
    .locals 2
    .parameter "button"

    .prologue
    const v1, 0x7f020519

    .line 384
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnAlpha:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnBeta:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 388
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnGamma:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 133
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 134
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mContentCustom:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 136
    return-void
.end method

.method public setDialogHtmlMessage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setDialogHtmlMessage(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public setDialogHtmlMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "resText"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mContentMessage:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method public setGammaOnClickListener(IZLandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "resInt"
    .parameter "isAutodimiss"
    .parameter "mClickListener"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnGamma:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 295
    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->isGammaAutoDismiss:Z

    .line 296
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnGamma:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 297
    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mGammaClickListener:Landroid/view/View$OnClickListener;

    .line 298
    return-void
.end method

.method public setGammaOnClickListener(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "resText"
    .parameter "isAutodimiss"
    .parameter "mClickListener"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnGamma:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->isGammaAutoDismiss:Z

    .line 277
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->btnGamma:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 278
    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mGammaClickListener:Landroid/view/View$OnClickListener;

    .line 279
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mContentMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "resText"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->mContentMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->setTitle(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setTitleGravity(I)V
    .locals 2
    .parameter "gravity"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->tvTitle:Landroid/widget/TextView;

    or-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 375
    return-void
.end method
