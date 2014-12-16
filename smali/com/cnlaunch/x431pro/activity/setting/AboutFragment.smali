.class public Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "AboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private about_headtext:Landroid/widget/TextView;

.field private about_statment:Landroid/widget/RelativeLayout;

.field private about_versionInfo:Landroid/widget/RelativeLayout;

.field private info:Landroid/content/pm/PackageInfo;

.field public reputPopupWindow:Landroid/app/AlertDialog;

.field private reput_btn:Landroid/widget/Button;

.field private reput_lay:Landroid/widget/RelativeLayout;

.field private reput_text:Landroid/widget/TextView;

.field private strAppName:Ljava/lang/String;

.field private strContent:Ljava/lang/String;

.field typeint:I

.field private verLocal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 6

    .prologue
    .line 68
    const v3, 0x7f0705f0

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->setTitle(I)V

    .line 69
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020521

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0d0444

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->about_versionInfo:Landroid/widget/RelativeLayout;

    .line 71
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->about_versionInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0d0447

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->about_statment:Landroid/widget/RelativeLayout;

    .line 73
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->about_statment:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0d0442

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->about_headtext:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->strAppName:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07060e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->strContent:Ljava/lang/String;

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 82
    const/4 v4, 0x0

    .line 81
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->info:Landroid/content/pm/PackageInfo;

    .line 83
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->info:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->verLocal:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1           #packageName:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    .line 89
    const-string/jumbo v4, "productType"

    .line 88
    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, productType:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    const-string/jumbo v3, "Maximus2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const-string/jumbo v2, "Maximus 2.0"

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->about_headtext:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->verLocal:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_1
    return-void

    .line 84
    .end local v2           #productType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #productType:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->about_headtext:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->strAppName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->verLocal:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private reputDialogView()Landroid/view/View;
    .locals 5

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030189

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reput_lay:Landroid/widget/RelativeLayout;

    .line 191
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reput_lay:Landroid/widget/RelativeLayout;

    const v1, 0x7f0d0480

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reput_btn:Landroid/widget/Button;

    .line 192
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reput_lay:Landroid/widget/RelativeLayout;

    const v1, 0x7f0d0482

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reput_text:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reput_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->strContent:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->strAppName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reput_btn:Landroid/widget/Button;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reput_lay:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method public initPopupWindow()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const-wide/high16 v7, 0x3fe8

    const-wide v5, 0x3fe5555555555555L

    .line 159
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reputPopupWindow:Landroid/app/AlertDialog;

    .line 160
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reputPopupWindow:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 161
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reputPopupWindow:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reputDialogView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 162
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reputPopupWindow:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 163
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reputPopupWindow:Landroid/app/AlertDialog;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment$1;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 175
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 176
    .local v2, screenWidth:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 177
    .local v1, screenHeight:I
    const/4 v0, 0x0

    .line 178
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 179
    .restart local v0       #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-ge v2, v1, :cond_0

    .line 180
    int-to-double v3, v2

    mul-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 181
    int-to-double v3, v1

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 186
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reputPopupWindow:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->reputDialogView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    return-void

    .line 183
    :cond_0
    int-to-double v3, v2

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 184
    int-to-double v3, v1

    mul-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->initViews()V

    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x11

    const/4 v6, 0x1

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 130
    :goto_0
    :pswitch_0
    return-void

    .line 111
    :pswitch_1
    new-instance v1, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;)V

    .line 112
    .local v1, verDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const v2, 0x7f070612

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setTitle(I)V

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070611

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->verLocal:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setMessage(Ljava/lang/String;)V

    .line 114
    const v2, 0x104000a

    invoke-virtual {v1, v2, v6, v8}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {v1, v7}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setTitleGravity(I)V

    .line 116
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    goto :goto_0

    .line 120
    .end local v1           #verDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    :pswitch_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->strAppName:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07060e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->strContent:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, rl_about_statment:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const v2, 0x7f07060f

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setTitle(I)V

    .line 124
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->strContent:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;->strAppName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setMessage(Ljava/lang/String;)V

    .line 125
    const v2, 0x7f070610

    invoke-virtual {v0, v2, v6, v8}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setTitleGravity(I)V

    .line 127
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0444
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 211
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 61
    const v0, 0x7f030180

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
