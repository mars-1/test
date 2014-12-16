.class public Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "ModifyPasswordFragment.java"


# static fields
.field private static final REQ_MODIFY_PASSWORD:I = 0xbb8


# instance fields
.field private btn_submit_password:Landroid/widget/Button;

.field private checkbox_confirmpass:Landroid/widget/CheckBox;

.field private checkbox_newpass:Landroid/widget/CheckBox;

.field private checkbox_oldpass:Landroid/widget/CheckBox;

.field private et_confirm_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

.field private et_new_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

.field private et_old_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

.field loginBroadcast:Landroid/content/BroadcastReceiver;

.field private login_state:Ljava/lang/String;

.field private mConfirmPassword:Ljava/lang/String;

.field private mNewPassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 91
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->loginBroadcast:Landroid/content/BroadcastReceiver;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->setEditEnable(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Lcom/cnlaunch/framework/common/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Lcom/cnlaunch/x431pro/widget/ClearEditText;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_confirm_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_newpass:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_confirmpass:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->submit()V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->login_state:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->btn_submit_password:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Lcom/cnlaunch/x431pro/widget/ClearEditText;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_old_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_oldpass:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;Landroid/widget/CheckBox;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    return-void
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->isSubmitEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Lcom/cnlaunch/x431pro/widget/ClearEditText;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_new_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    return-object v0
.end method

.method private hasLogin()Z
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->login_state:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->login_state:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    :cond_0
    const/4 v0, 0x0

    .line 416
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 126
    const v0, 0x7f0705bb

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->setTitle(I)V

    .line 127
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03a9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/ClearEditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_old_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    .line 129
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03ab

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/ClearEditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_new_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    .line 130
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03ad

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/ClearEditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_confirm_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    .line 131
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03af

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->btn_submit_password:Landroid/widget/Button;

    .line 133
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_oldpass:Landroid/widget/CheckBox;

    .line 134
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03ac

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_newpass:Landroid/widget/CheckBox;

    .line 135
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03ae

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_confirmpass:Landroid/widget/CheckBox;

    .line 137
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->isSubmitEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->btn_submit_password:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_old_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_new_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 212
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_confirm_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$4;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$4;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 250
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->btn_submit_password:Landroid/widget/Button;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$5;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$5;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_confirm_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$6;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$6;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 272
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->btn_submit_password:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private isSubmitEnable()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_confirmpass:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_newpass:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_oldpass:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCursor(Landroid/widget/EditText;)V
    .locals 1
    .parameter "editText"

    .prologue
    .line 407
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 408
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 409
    return-void
.end method

.method private setEditEnable(Z)V
    .locals 1
    .parameter "isAble"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_old_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_new_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_confirm_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->setEnabled(Z)V

    .line 293
    return-void
.end method

.method private showCheckBox(Landroid/widget/CheckBox;IZ)V
    .locals 1
    .parameter "checkBox"
    .parameter "visibleState"
    .parameter "flag"

    .prologue
    .line 119
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 120
    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 122
    return-void
.end method

.method private submit()V
    .locals 4

    .prologue
    const v3, 0x7f070683

    const v2, 0x7f070634

    const/4 v1, 0x6

    .line 296
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_old_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mOldPassword:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_new_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mNewPassword:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_confirm_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mConfirmPassword:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mOldPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAcountPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_old_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->setCursor(Landroid/widget/EditText;)V

    .line 335
    :goto_1
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mNewPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAcountPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 311
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 315
    :goto_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_new_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->setCursor(Landroid/widget/EditText;)V

    goto :goto_1

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_2

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mConfirmPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAcountPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 319
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mConfirmPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_4

    .line 320
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 322
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 327
    :cond_5
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mNewPassword:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mConfirmPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 328
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_confirm_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0705c5

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 332
    :cond_6
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 333
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->request(I)V

    goto :goto_1
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 3
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 339
    packed-switch p1, :pswitch_data_0

    .line 344
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 341
    :pswitch_0
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mOldPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->modifyPassWord(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 74
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_state"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->login_state:Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "login"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "logout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->loginBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 106
    const v0, 0x7f030145

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroy()V

    .line 278
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->loginBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 1
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 389
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 390
    packed-switch p1, :pswitch_data_0

    .line 396
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 399
    :goto_0
    return-void

    .line 392
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 84
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->initViews()V

    .line 85
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0706da

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->setEditEnable(Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 3
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 349
    packed-switch p1, :pswitch_data_0

    .line 382
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 351
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 352
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 353
    check-cast v0, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 354
    .local v0, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->isSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0705b8

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 361
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_old_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_old_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->setCursor(Landroid/widget/EditText;)V

    .line 366
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 368
    :sswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f070634

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 371
    :sswitch_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0706dc

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 374
    :sswitch_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0705b9

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_0
    .end packed-switch

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x7531 -> :sswitch_0
        0x7533 -> :sswitch_1
        0x1ae7a -> :sswitch_2
    .end sparse-switch
.end method
