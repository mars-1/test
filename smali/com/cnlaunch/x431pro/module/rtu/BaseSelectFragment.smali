.class public abstract Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;
.super Landroid/app/Fragment;
.source "BaseSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;
    }
.end annotation


# static fields
.field public static final BUTTON_ALPHA:I = 0x1

.field public static final BUTTON_BETA:I = 0x2

.field public static final BUTTON_GAMMA:I = 0x3

.field public static final CONFIRM_COMMON_SKIP:I = 0xa

.field public static final CONFIRM_EXISTING_CUSTOMER:I = 0x9

.field public static final CONFIRM_FACTORY_PATTERN:I = 0x7

.field public static final CONFIRM_INTERNET_ACCESS_NO:I = 0x2

.field public static final CONFIRM_INTERNET_ACCESS_YES:I = 0x1

.field public static final CONFIRM_INTERNET_TYPE_CABLE:I = 0x4

.field public static final CONFIRM_INTERNET_TYPE_WIFI:I = 0x3

.field public static final CONFIRM_NEW_CUSTOMER:I = 0x8

.field public static final CONFIRM_START_TRIAL:I = 0xb

.field public static final CONFIRM_TRIAL_NO:I = 0x6

.field public static final CONFIRM_TRIAL_YES:I = 0x5


# instance fields
.field private btnAlpha:Landroid/widget/Button;

.field private btnBeta:Landroid/widget/Button;

.field private btnGamma:Landroid/widget/Button;

.field private mAlphaClickListener:Landroid/view/View$OnClickListener;

.field private mBetaClickListener:Landroid/view/View$OnClickListener;

.field private mBottomButtonLayout:Landroid/view/View;

.field private mContentCustom:Landroid/widget/FrameLayout;

.field private mContentMessage:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field private mGammaClickListener:Landroid/view/View$OnClickListener;

.field private mInfoClickCount:I

.field private mInfoClickTime:J

.field private mInfoIndicator:Landroid/widget/ImageView;

.field protected mListener:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;

.field private mMessagePanle:Landroid/view/View;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickTime:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickTime:J

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickCount:I

    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 112
    const v0, 0x7f0c004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->tvTitle:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0c029a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 113
    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoIndicator:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoIndicator:Landroid/widget/ImageView;

    new-instance v1, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;-><init>(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v0, 0x7f0c0070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mContentCustom:Landroid/widget/FrameLayout;

    .line 144
    const v0, 0x7f0c029b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mContentMessage:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0c0299

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mMessagePanle:Landroid/view/View;

    .line 148
    const v0, 0x7f0c007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnAlpha:Landroid/widget/Button;

    .line 149
    const v0, 0x7f0c029c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnBeta:Landroid/widget/Button;

    .line 150
    const v0, 0x7f0c029d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnGamma:Landroid/widget/Button;

    .line 152
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnAlpha:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnBeta:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnGamma:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f0c004e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mBottomButtonLayout:Landroid/view/View;

    .line 156
    const v0, 0x7f070703

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->setTitle(I)V

    .line 157
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->setButtonBackground(I)V

    .line 158
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->setButtonBackground(I)V

    .line 160
    return-void
.end method


# virtual methods
.method public createContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doningAlphaClick(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "num"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mAlphaClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mAlphaClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 298
    :cond_0
    return-void
.end method

.method protected doningBetaClick(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "num"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mBetaClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mBetaClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 310
    :cond_0
    return-void
.end method

.method protected doningGammaClick(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "num"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mGammaClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mGammaClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 322
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    :try_start_0
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mContext:Landroid/content/Context;

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mListener:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v4, " must implement OnInternetAccessSelectedListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 273
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 275
    :sswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->doningAlphaClick(Landroid/view/View;I)V

    goto :goto_0

    .line 278
    :sswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->doningBetaClick(Landroid/view/View;I)V

    goto :goto_0

    .line 281
    :sswitch_2
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->doningGammaClick(Landroid/view/View;I)V

    goto :goto_0

    .line 273
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c007e -> :sswitch_0
        0x7f0c029c -> :sswitch_1
        0x7f0c029d -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickTime:J

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickCount:I

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x8

    .line 88
    const v2, 0x7f0300f6

    .line 89
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->init(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->createContentView()Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, contentView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 93
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mMessagePanle:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->setContentView(Landroid/view/View;)V

    .line 98
    :goto_0
    return-object v1

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mContentCustom:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mListener:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;

    .line 82
    return-void
.end method

.method protected setAlphaOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "resInt"
    .parameter "mClickListener"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnAlpha:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 230
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnAlpha:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mAlphaClickListener:Landroid/view/View$OnClickListener;

    .line 232
    return-void
.end method

.method protected setBetaOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "resInt"
    .parameter "mClickListener"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnBeta:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnBeta:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mBetaClickListener:Landroid/view/View$OnClickListener;

    .line 250
    return-void
.end method

.method protected setBottomLayoutGone()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mBottomButtonLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    return-void
.end method

.method protected setButtonBackground(I)V
    .locals 2
    .parameter "button"

    .prologue
    const v1, 0x7f02051d

    .line 330
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnAlpha:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnBeta:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 334
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnGamma:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 177
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 179
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mContentCustom:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method protected setDialogHtmlMessage(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, resText:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mContentMessage:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    return-void
.end method

.method protected setGammaOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "resInt"
    .parameter "mClickListener"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnGamma:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 266
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->btnGamma:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mGammaClickListener:Landroid/view/View$OnClickListener;

    .line 268
    return-void
.end method

.method protected setMessage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mContentMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 196
    return-void
.end method

.method protected setMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mContentMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method protected setTitle(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    return-void
.end method
