.class public Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "PrintEditInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;
    }
.end annotation


# instance fields
.field private btn_save:Landroid/widget/Button;

.field private cb_company_address:Landroid/widget/CheckBox;

.field private cb_fax:Landroid/widget/CheckBox;

.field private cb_garage_name:Landroid/widget/CheckBox;

.field private cb_plate_number:Landroid/widget/CheckBox;

.field private cb_telephone:Landroid/widget/CheckBox;

.field private companyAddressText:Ljava/lang/String;

.field private companyFaxText:Ljava/lang/String;

.field private companyNameText:Ljava/lang/String;

.field private companyPhoneNumberText:Ljava/lang/String;

.field private edit_company_address:Landroid/widget/EditText;

.field private edit_fax:Landroid/widget/EditText;

.field private edit_garage_name:Landroid/widget/EditText;

.field private edit_license_plate_number:Landroid/widget/EditText;

.field private edit_telephone:Landroid/widget/EditText;

.field private licensePlateNumberDiagText:Ljava/lang/String;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_garage_name:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_garage_name:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_plate_number:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->savePrintInfo()V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;Landroid/widget/CheckBox;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_company_address:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_company_address:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_telephone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_telephone:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_fax:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_fax:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_license_plate_number:Landroid/widget/EditText;

    return-object v0
.end method

.method private initViews()V
    .locals 8

    .prologue
    const v7, 0x7f0c039f

    const v6, 0x7f0c039c

    const v5, 0x7f0c039a

    const v4, 0x7f0c0398

    const v3, 0x7f0c02e3

    .line 81
    const v0, 0x7f0705ef

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->setTitle(I)V

    .line 82
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 85
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_garage_name:Landroid/widget/EditText;

    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_garage_name:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_company_address:Landroid/widget/EditText;

    .line 88
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_company_address:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_telephone:Landroid/widget/EditText;

    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_telephone:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_fax:Landroid/widget/EditText;

    .line 92
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_fax:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_license_plate_number:Landroid/widget/EditText;

    .line 94
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_license_plate_number:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->btn_save:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->btn_save:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0399

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_garage_name:Landroid/widget/CheckBox;

    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_garage_name:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c039b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_company_address:Landroid/widget/CheckBox;

    .line 101
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_company_address:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c039d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_telephone:Landroid/widget/CheckBox;

    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_telephone:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c039e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_fax:Landroid/widget/CheckBox;

    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_fax:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03a0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_plate_number:Landroid/widget/CheckBox;

    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_license_plate_number:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_garage_name:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "companyName"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_company_address:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "companyAddress"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_telephone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "companyPhoneNumber"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_fax:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "companyFax"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_license_plate_number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "licensePlateNumberDiag"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_garage_name:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;

    invoke-direct {v1, p0, v4}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;-><init>(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_company_address:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;

    invoke-direct {v1, p0, v5}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;-><init>(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_telephone:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;

    invoke-direct {v1, p0, v6}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;-><init>(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_fax:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;

    invoke-direct {v1, p0, v3}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;-><init>(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_license_plate_number:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;

    invoke-direct {v1, p0, v7}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;-><init>(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_license_plate_number:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 134
    return-void
.end method

.method private savePrintInfo()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_garage_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyNameText:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_company_address:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyAddressText:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_telephone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyPhoneNumberText:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_fax:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyFaxText:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_license_plate_number:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->licensePlateNumberDiagText:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "companyName"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyNameText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "companyAddress"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyAddressText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "companyFax"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyFaxText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "licensePlateNumberDiag"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->licensePlateNumberDiagText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyPhoneNumberText:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyPhoneNumberText:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "companyPhoneNumber"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyPhoneNumberText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f07060b

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 166
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f07060a

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private showCheckBox(Landroid/widget/CheckBox;IZ)V
    .locals 1
    .parameter "checkBox"
    .parameter "visibleState"
    .parameter "flag"

    .prologue
    .line 234
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 235
    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 237
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 69
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->initViews()V

    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 140
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 141
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 142
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->savePrintInfo()V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c03a1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 74
    const v0, 0x7f030140

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 173
    :sswitch_0
    if-nez p2, :cond_0

    .line 174
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_garage_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_garage_name:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v3, v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_garage_name:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v2, v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 182
    :sswitch_1
    if-nez p2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_company_address:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_company_address:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v3, v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_company_address:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v2, v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 191
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_telephone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyPhoneNumberText:Ljava/lang/String;

    .line 192
    if-nez p2, :cond_0

    .line 193
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyPhoneNumberText:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyPhoneNumberText:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->companyPhoneNumberText:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_telephone:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v3, v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_telephone:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v2, v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_telephone:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v2, v2}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 202
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f07060a

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 207
    :sswitch_3
    if-nez p2, :cond_0

    .line 208
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_fax:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_fax:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v3, v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    goto/16 :goto_0

    .line 211
    :cond_6
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_fax:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v2, v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    goto/16 :goto_0

    .line 217
    :sswitch_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_license_plate_number:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 218
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_plate_number:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v3, v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    goto/16 :goto_0

    .line 220
    :cond_7
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_plate_number:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v2, v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    goto/16 :goto_0

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c02e3 -> :sswitch_3
        0x7f0c0398 -> :sswitch_0
        0x7f0c039a -> :sswitch_1
        0x7f0c039c -> :sswitch_2
        0x7f0c039f -> :sswitch_4
    .end sparse-switch
.end method
