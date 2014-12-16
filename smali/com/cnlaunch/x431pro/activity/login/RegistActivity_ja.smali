.class public Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "RegistActivity_ja.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final REQUEST_COUNTRYINFO_CODE:I = 0x1


# instance fields
.field private final REG_COMFIRM_IDENTIFY_CODE:I

.field private final REG_GETCOUNTRY_CODE:I

.field private final REQ_IDENTIFY_CODE:I

.field private final REQ_REGIST_CODE:I

.field private final REQ_REGIST_CODE_ERROR_INVALID_EMAIL:I

.field private final REQ_REGIST_CODE_ERROR_INVALID_PASSWORD:I

.field private final REQ_REGIST_CODE_ERROR_LANGUAGE_ILLEGAL:I

.field private final REQ_REGIST_CODE_ERROR_LOGINKEY_ILLEGAL:I

.field private final REQ_REGIST_CODE_ERROR_NICKNAME_ILLEGAL:I

.field private final REQ_REGIST_CODE_ERROR_REGISTERED_USERNAME:I

.field private final REQ_REGIST_CODE_ERROR_REGISTER_SOURCE_ILLEGAL:I

.field private final REQ_REGIST_CODE_ERROR_USERNAME_IS_THE_PUBLIC:I

.field private final REQ_REGIST_CODE_ERROR_VERIFY_CODE_INCORRECT:I

.field private final REQ_REGIST_CODE_ERROR_ZIPCODE_ILLEGAL:I

.field private final REQ_REGIST_CODE_SUCCESS:I

.field private action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

.field private address:Ljava/lang/String;

.field private birth:J

.field private bt_refresh:Landroid/widget/Button;

.field private btn_regist:Landroid/widget/Button;

.field private cellphone:Ljava/lang/String;

.field private checkbox_address:Landroid/widget/CheckBox;

.field private checkbox_company:Landroid/widget/CheckBox;

.field private checkbox_confirm_password:Landroid/widget/CheckBox;

.field private checkbox_email:Landroid/widget/CheckBox;

.field private checkbox_identifycode:Landroid/widget/CheckBox;

.field private checkbox_password:Landroid/widget/CheckBox;

.field private checkbox_phone:Landroid/widget/CheckBox;

.field private checkbox_username:Landroid/widget/CheckBox;

.field private checkbox_zipcode:Landroid/widget/CheckBox;

.field private company:Ljava/lang/String;

.field private confirmpass:Ljava/lang/String;

.field countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private edit_address:Landroid/widget/EditText;

.field private edit_birth:Landroid/widget/EditText;

.field private edit_cellPhone:Landroid/widget/EditText;

.field private edit_company:Landroid/widget/EditText;

.field private edit_confirmpass:Landroid/widget/EditText;

.field private edit_email:Landroid/widget/EditText;

.field private edit_fax:Landroid/widget/EditText;

.field private edit_identifycode:Landroid/widget/EditText;

.field private edit_password:Landroid/widget/EditText;

.field private edit_phone:Landroid/widget/EditText;

.field private edit_realname:Landroid/widget/EditText;

.field private edit_username:Landroid/widget/EditText;

.field private edit_zipcode:Landroid/widget/EditText;

.field private email:Ljava/lang/String;

.field private fax:Ljava/lang/String;

.field private group:Landroid/widget/RadioGroup;

.field private handle:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private image_picture_identifycode:Landroid/widget/ImageView;

.field loadcodePic:Ljava/lang/String;

.field private nationId:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private realname:Ljava/lang/String;

.field private sex:I

.field tempCountryInfo:Ljava/lang/String;

.field url:Ljava/lang/String;

.field userinfo:Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;

.field private username:Ljava/lang/String;

.field private validcode:Ljava/lang/String;

.field private zipcode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 78
    const/16 v0, 0xc8

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REQ_REGIST_CODE:I

    .line 79
    const/16 v0, 0xc9

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REQ_IDENTIFY_CODE:I

    .line 80
    const/16 v0, 0xca

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REG_GETCOUNTRY_CODE:I

    .line 81
    const/16 v0, 0xcb

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REG_COMFIRM_IDENTIFY_CODE:I

    .line 84
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REQ_REGIST_CODE_SUCCESS:I

    .line 85
    const/16 v0, 0x400

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REQ_REGIST_CODE_ERROR_REGISTERED_USERNAME:I

    .line 86
    const/16 v0, 0x401

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REQ_REGIST_CODE_ERROR_VERIFY_CODE_INCORRECT:I

    .line 87
    const v0, 0x493e1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REQ_REGIST_CODE_ERROR_INVALID_PASSWORD:I

    .line 88
    const v0, 0x493e9

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REQ_REGIST_CODE_ERROR_INVALID_EMAIL:I

    .line 89
    const v0, 0x493ea

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REQ_REGIST_CODE_ERROR_REGISTER_SOURCE_ILLEGAL:I

    .line 90
    const v0, 0x493eb

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REQ_REGIST_CODE_ERROR_ZIPCODE_ILLEGAL:I

    .line 91
    const v0, 0x493ec

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REQ_REGIST_CODE_ERROR_LOGINKEY_ILLEGAL:I

    .line 92
    const v0, 0x493ed

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REQ_REGIST_CODE_ERROR_NICKNAME_ILLEGAL:I

    .line 93
    const v0, 0x493ee

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REQ_REGIST_CODE_ERROR_LANGUAGE_ILLEGAL:I

    .line 94
    const v0, 0x493ef

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->REQ_REGIST_CODE_ERROR_USERNAME_IS_THE_PUBLIC:I

    .line 119
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->sex:I

    .line 158
    new-instance v0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->handle:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method private GetIdentifyCodeFailPrompt(I)V
    .locals 6
    .parameter "code"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 673
    sparse-switch p1, :sswitch_data_0

    .line 691
    const v2, 0x7f070678

    invoke-static {p0, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 694
    :goto_0
    return-void

    .line 675
    :sswitch_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_username:Landroid/widget/CheckBox;

    invoke-direct {p0, v2, v3, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 676
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 677
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 678
    new-array v0, v5, [I

    .line 679
    .local v0, location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 680
    const v2, 0x7f070673

    aget v3, v0, v3

    aget v4, v0, v4

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto :goto_0

    .line 683
    .end local v0           #location:[I
    :sswitch_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_username:Landroid/widget/CheckBox;

    invoke-direct {p0, v2, v3, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 684
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 685
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 686
    new-array v1, v5, [I

    .line 687
    .local v1, location2:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 688
    const v2, 0x7f070674

    aget v3, v1, v3

    aget v4, v1, v4

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto :goto_0

    .line 673
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_0
        0x1adb1 -> :sswitch_1
    .end sparse-switch
.end method

.method private RegisterFailPrompt(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 649
    sparse-switch p1, :sswitch_data_0

    .line 667
    :goto_0
    const v0, 0x7f070685

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 670
    :goto_1
    return-void

    .line 651
    :sswitch_0
    const v0, 0x7f07067a

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 654
    :sswitch_1
    const v0, 0x7f07067b

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 657
    :sswitch_2
    const v0, 0x7f07067c

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 660
    :sswitch_3
    const v0, 0x7f07067d

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 665
    :sswitch_4
    const v0, 0x7f07067f

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 649
    nop

    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_2
        0x401 -> :sswitch_1
        0x493e1 -> :sswitch_0
        0x493e9 -> :sswitch_3
        0x493eb -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_confirmpass:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->confirmpass:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_password:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->confirmpass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_confirm_password:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_email:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$18(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->email:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->handle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$20(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_email:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$21(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_company:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$22(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->company:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$23(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->company:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_company:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$25(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_zipcode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$26(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->zipcode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$27(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->zipcode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_zipcode:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$29(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_address:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->image_picture_identifycode:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$30(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->address:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$31(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_address:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$33(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_identifycode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$34(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->validcode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$35(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->validcode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_identifycode:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$37(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->username:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$38(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_phone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$39(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->phone:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->sex:I

    return-void
.end method

.method static synthetic access$40(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->phone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$41(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_phone:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$42(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1135
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->isPhoneNum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_username:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Landroid/widget/CheckBox;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1128
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    return-void
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->btn_regist:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_password:Landroid/widget/EditText;

    return-object v0
.end method

.method private initIdentifycodePic()V
    .locals 5

    .prologue
    .line 856
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->loadcodePic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 858
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 859
    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->drawable:Landroid/graphics/drawable/Drawable;

    .line 867
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->image_picture_identifycode:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 868
    return-void

    .line 862
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->loadcodePic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->drawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 228
    const-string/jumbo v0, "codepic.png"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->loadcodePic:Ljava/lang/String;

    .line 229
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 231
    const v0, 0x7f0c02aa

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    .line 232
    const v0, 0x7f0c02b3

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_password:Landroid/widget/EditText;

    .line 233
    const v0, 0x7f0c02c4

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_confirmpass:Landroid/widget/EditText;

    .line 234
    const v0, 0x7f0c02c6

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_email:Landroid/widget/EditText;

    .line 235
    const v0, 0x7f0c02d6

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_company:Landroid/widget/EditText;

    .line 236
    const v0, 0x7f0c02c7

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_zipcode:Landroid/widget/EditText;

    .line 237
    const v0, 0x7f0c02d8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_address:Landroid/widget/EditText;

    .line 238
    const v0, 0x7f0c02da

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_realname:Landroid/widget/EditText;

    .line 240
    const v0, 0x7f0c02cc

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_identifycode:Landroid/widget/EditText;

    .line 241
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_identifycode:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 243
    const v0, 0x7f0c02df

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_birth:Landroid/widget/EditText;

    .line 244
    const v0, 0x7f0c02e1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_phone:Landroid/widget/EditText;

    .line 245
    const v0, 0x7f0c02e3

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_fax:Landroid/widget/EditText;

    .line 246
    const v0, 0x7f0c02e5

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_cellPhone:Landroid/widget/EditText;

    .line 248
    const v0, 0x7f0c02cd

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->image_picture_identifycode:Landroid/widget/ImageView;

    .line 250
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->initIdentifycodePic()V

    .line 252
    const v0, 0x7f0c02c1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_username:Landroid/widget/CheckBox;

    .line 253
    const v0, 0x7f0c02c2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_password:Landroid/widget/CheckBox;

    .line 254
    const v0, 0x7f0c02c3

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_confirm_password:Landroid/widget/CheckBox;

    .line 255
    const v0, 0x7f0c02c5

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_email:Landroid/widget/CheckBox;

    .line 256
    const v0, 0x7f0c02d5

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_company:Landroid/widget/CheckBox;

    .line 257
    const v0, 0x7f0c02c9

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_zipcode:Landroid/widget/CheckBox;

    .line 258
    const v0, 0x7f0c02d7

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_address:Landroid/widget/CheckBox;

    .line 259
    const v0, 0x7f0c02cb

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_identifycode:Landroid/widget/CheckBox;

    .line 260
    const v0, 0x7f0c02e0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_phone:Landroid/widget/CheckBox;

    .line 262
    const v0, 0x7f0c02db

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->group:Landroid/widget/RadioGroup;

    .line 263
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->group:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->group:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$2;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 286
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_username:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_username:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v4, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_password:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_password:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v4, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_confirm_password:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_confirm_password:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v4, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_email:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_email:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v4, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_zipcode:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 299
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_zipcode:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v4, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 301
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_company:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    .line 302
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_company:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v4, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_address:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    .line 305
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_address:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v4, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 307
    :cond_6
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 308
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v4, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 310
    :cond_7
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_phone:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_8

    .line 311
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_phone:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v4, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 314
    :cond_8
    const v0, 0x7f0c02d0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->btn_regist:Landroid/widget/Button;

    .line 315
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->btn_regist:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->btn_regist:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v0, 0x7f0c02ce

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->bt_refresh:Landroid/widget/Button;

    .line 319
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->bt_refresh:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->image_picture_identifycode:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_identifycode:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 324
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 325
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 326
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_email:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 327
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_company:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 328
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_zipcode:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 329
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_address:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 330
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_phone:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 338
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 369
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_password:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$4;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$4;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 413
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_confirmpass:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$5;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$5;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 449
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_email:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$6;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$6;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 480
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_company:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$7;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$7;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 509
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_zipcode:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$8;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$8;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 537
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_address:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$9;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$9;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 565
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_identifycode:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$10;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$10;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 597
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_phone:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 627
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->btn_regist:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->isRegisterBtnEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 628
    return-void
.end method

.method private isMobileNum(Ljava/lang/String;)Z
    .locals 5
    .parameter "mobileNum"

    .prologue
    .line 1147
    const-string/jumbo v2, "^((13[0-9])|(15[^4,\\D])|(18[0-9]))\\d{8}$"

    .line 1148
    .local v2, ph:Ljava/lang/String;
    const-string/jumbo v3, "^(\\(\\d{3}\\)\\d{3}-?\\d{4})|(\\d{3}-\\d{3}-\\d{4})|(\\d{10,11})$"

    .line 1149
    .local v3, ph1:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1150
    .local v0, pat2:Ljava/util/regex/Pattern;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1151
    .local v1, pat22:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1152
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1158
    :cond_0
    const/4 v4, 0x1

    .line 1160
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isPhoneNum(Ljava/lang/String;)Z
    .locals 3
    .parameter "phoneNum"

    .prologue
    .line 1136
    const-string/jumbo v1, "^[0-9]{6,20}$"

    .line 1138
    .local v1, ph:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1139
    .local v0, pat2:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1140
    const/4 v2, 0x1

    .line 1142
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showCheckBox(Landroid/widget/CheckBox;IZ)V
    .locals 1
    .parameter "checkBox"
    .parameter "visibleState"
    .parameter "flag"

    .prologue
    .line 1129
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1130
    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1131
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1132
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 8
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 698
    packed-switch p1, :pswitch_data_0

    .line 740
    :pswitch_0
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 722
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->nationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->validcode:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    const-string/jumbo v4, "2013122400000003"

    const-string/jumbo v5, "nickname"

    const/16 v6, 0xb

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->userinfo:Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;

    invoke-virtual/range {v0 .. v7}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->regist_japan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;)Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    move-result-object v0

    goto :goto_0

    .line 733
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->username:Ljava/lang/String;

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->verifyReqSendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    goto :goto_0

    .line 735
    :pswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->validcode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->verifyReqConfirmCode(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    goto :goto_0

    .line 698
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method isRegisterBtnEnable()Z
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_username:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_password:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_confirm_password:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_email:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_company:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_zipcode:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_address:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_phone:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x1

    .line 643
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 15
    .parameter "v"

    .prologue
    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 957
    :goto_0
    :pswitch_0
    return-void

    .line 874
    :pswitch_1
    const-string/jumbo v0, "207"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->nationId:Ljava/lang/String;

    .line 875
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->username:Ljava/lang/String;

    .line 876
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    .line 877
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->confirmpass:Ljava/lang/String;

    .line 878
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->email:Ljava/lang/String;

    .line 879
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_company:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->company:Ljava/lang/String;

    .line 880
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_zipcode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->zipcode:Ljava/lang/String;

    .line 881
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_address:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->address:Ljava/lang/String;

    .line 882
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_identifycode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->validcode:Ljava/lang/String;

    .line 883
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->phone:Ljava/lang/String;

    .line 884
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_fax:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->fax:Ljava/lang/String;

    .line 885
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_realname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->realname:Ljava/lang/String;

    .line 886
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_cellPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->cellphone:Ljava/lang/String;

    .line 890
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->email:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->cellphone:Ljava/lang/String;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->realname:Ljava/lang/String;

    .line 891
    const-string/jumbo v5, ""

    iget v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->sex:I

    iget-wide v7, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->birth:J

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->phone:Ljava/lang/String;

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->phone:Ljava/lang/String;

    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->fax:Ljava/lang/String;

    iget-object v12, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->company:Ljava/lang/String;

    .line 892
    iget-object v13, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->address:Ljava/lang/String;

    iget-object v14, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->zipcode:Ljava/lang/String;

    invoke-direct/range {v0 .. v14}, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->userinfo:Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;

    .line 894
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    const v0, 0x7f070650

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    const v0, 0x7f070650

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->confirmpass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    const v0, 0x7f070650

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->confirmpass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 910
    const v0, 0x7f070655

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 914
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 915
    const v0, 0x7f070650

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 919
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->company:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 920
    const v0, 0x7f070650

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 923
    :cond_5
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->zipcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 924
    const v0, 0x7f070650

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 928
    :cond_6
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 929
    const v0, 0x7f070650

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 933
    :cond_7
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->validcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 934
    const v0, 0x7f070650

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 938
    :cond_8
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 939
    const v0, 0x7f070650

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 943
    :cond_9
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 944
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->request(I)V

    goto/16 :goto_0

    .line 948
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->username:Ljava/lang/String;

    .line 949
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 950
    const v0, 0x7f070650

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 953
    :cond_a
    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->request(I)V

    goto/16 :goto_0

    .line 872
    :pswitch_data_0
    .packed-switch 0x7f0c02ce
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    const v0, 0x7f0300f1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->setContentView(I)V

    .line 217
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->setHeadVisibility(I)V

    .line 218
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 829
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onFailure(IILjava/lang/Object;)V

    .line 830
    packed-switch p1, :pswitch_data_0

    .line 852
    :goto_0
    :pswitch_0
    return-void

    .line 833
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->setResult(I)V

    .line 835
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 838
    :pswitch_2
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 847
    :pswitch_3
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 848
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v1, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 849
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->btn_regist:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->isRegisterBtnEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 9
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const v8, 0x7f070655

    const v7, 0x7f070651

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 971
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 973
    :sswitch_0
    if-nez p2, :cond_0

    .line 974
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 975
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAcount(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 976
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->username:Ljava/lang/String;

    .line 977
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 978
    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->request(I)V

    goto :goto_0

    .line 981
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 982
    new-array v0, v6, [I

    .line 983
    .local v0, location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 984
    const v2, 0x7f070631

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto :goto_0

    .line 985
    .end local v0           #location:[I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    .line 986
    new-array v0, v6, [I

    .line 987
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 988
    const v2, 0x7f070652

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto :goto_0

    .line 990
    .end local v0           #location:[I
    :cond_3
    new-array v0, v6, [I

    .line 991
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 992
    const v2, 0x7f070653

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto :goto_0

    .line 998
    .end local v0           #location:[I
    .end local v1           #name:Ljava/lang/String;
    :sswitch_1
    if-nez p2, :cond_0

    .line 999
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    .line 1000
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->confirmpass:Ljava/lang/String;

    .line 1001
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1008
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAcountPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1009
    new-array v0, v6, [I

    .line 1010
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1011
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    .line 1012
    const v2, 0x7f070683

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1014
    :cond_4
    aget v2, v0, v4

    aget v3, v0, v5

    add-int/lit8 v3, v3, 0x28

    invoke-virtual {p0, p0, v7, v2, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1017
    .end local v0           #location:[I
    :cond_5
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->confirmpass:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->confirmpass:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1018
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->confirmpass:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1019
    new-array v0, v6, [I

    .line 1020
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1021
    aget v2, v0, v4

    aget v3, v0, v5

    add-int/lit8 v3, v3, 0x28

    invoke-virtual {p0, p0, v8, v2, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1022
    .end local v0           #location:[I
    :cond_6
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->confirmpass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1033
    :sswitch_2
    if-nez p2, :cond_0

    .line 1034
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    .line 1035
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->confirmpass:Ljava/lang/String;

    .line 1036
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAcountPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1037
    new-array v0, v6, [I

    .line 1038
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1039
    aget v2, v0, v4

    aget v3, v0, v5

    add-int/lit8 v3, v3, 0x28

    invoke-virtual {p0, p0, v7, v2, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1041
    .end local v0           #location:[I
    :cond_7
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->confirmpass:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1042
    new-array v0, v6, [I

    .line 1043
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1044
    aget v2, v0, v4

    aget v3, v0, v5

    add-int/lit8 v3, v3, 0x28

    invoke-virtual {p0, p0, v8, v2, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1052
    .end local v0           #location:[I
    :sswitch_3
    if-nez p2, :cond_0

    .line 1053
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_email:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->email:Ljava/lang/String;

    .line 1054
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->email:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->email:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1055
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->email:Ljava/lang/String;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1056
    new-array v0, v6, [I

    .line 1057
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_email:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1058
    const v2, 0x7f07067d

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1071
    .end local v0           #location:[I
    :sswitch_4
    if-nez p2, :cond_0

    .line 1072
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_company:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->company:Ljava/lang/String;

    .line 1073
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->company:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->company:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1074
    :cond_8
    new-array v0, v6, [I

    .line 1075
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_company:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1076
    const v2, 0x7f070769

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1081
    .end local v0           #location:[I
    :sswitch_5
    if-nez p2, :cond_0

    .line 1082
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_zipcode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->zipcode:Ljava/lang/String;

    .line 1083
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->zipcode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 1084
    new-array v0, v6, [I

    .line 1085
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_zipcode:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1086
    const v2, 0x7f070680

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1087
    .end local v0           #location:[I
    :cond_9
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->zipcode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 1088
    new-array v0, v6, [I

    .line 1089
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_zipcode:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1090
    const v2, 0x7f07067f

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1097
    .end local v0           #location:[I
    :sswitch_6
    if-nez p2, :cond_0

    .line 1098
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_address:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->address:Ljava/lang/String;

    .line 1099
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->address:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->address:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1100
    :cond_a
    new-array v0, v6, [I

    .line 1101
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_address:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1102
    const v2, 0x7f07076b

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1107
    .end local v0           #location:[I
    :sswitch_7
    if-nez p2, :cond_0

    .line 1108
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_phone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->phone:Ljava/lang/String;

    .line 1109
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->phone:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->phone:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1110
    :cond_b
    new-array v0, v6, [I

    .line 1111
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_phone:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1112
    const v2, 0x7f07076c

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 971
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c02aa -> :sswitch_0
        0x7f0c02b3 -> :sswitch_1
        0x7f0c02c4 -> :sswitch_2
        0x7f0c02c6 -> :sswitch_3
        0x7f0c02c7 -> :sswitch_5
        0x7f0c02d6 -> :sswitch_4
        0x7f0c02d8 -> :sswitch_6
        0x7f0c02e1 -> :sswitch_7
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 961
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 963
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->finish()V

    .line 964
    const/4 v0, 0x1

    .line 966
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onResume()V

    .line 224
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->initViews()V

    .line 225
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 9
    .parameter "requestCode"
    .parameter "result"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 745
    packed-switch p1, :pswitch_data_0

    .line 825
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 747
    :pswitch_1
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 748
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 749
    check-cast v4, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    .line 750
    .local v4, res:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;->getCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->isSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 752
    const v5, 0x7f07065b

    invoke-static {p0, v5}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 754
    new-instance v2, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;-><init>(Landroid/content/Context;)V

    .line 755
    .local v2, lf:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
    invoke-virtual {v2, v7}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->setRegisterLogin(Z)V

    .line 756
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->username:Ljava/lang/String;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->Login(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 760
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v5, "UserName"

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->username:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const-string/jumbo v5, "PassWord"

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->password:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->startActivity(Landroid/content/Intent;)V

    .line 765
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->setResult(I)V

    .line 767
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v5

    if-nez v5, :cond_1

    .line 769
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->tempCountryInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, filePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 773
    .end local v0           #filePath:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->finish()V

    goto :goto_0

    .line 775
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #lf:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
    :cond_2
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;->getCode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->RegisterFailPrompt(I)V

    .line 778
    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->setResult(I)V

    goto :goto_0

    .line 783
    .end local v4           #res:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    :pswitch_2
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 784
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 785
    check-cast v4, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 786
    .local v4, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->isSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 787
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_username:Landroid/widget/CheckBox;

    invoke-direct {p0, v5, v6, v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 788
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getData()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getData()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->url:Ljava/lang/String;

    .line 789
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->handle:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 791
    :cond_3
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->GetIdentifyCodeFailPrompt(I)V

    .line 792
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_username:Landroid/widget/CheckBox;

    invoke-direct {p0, v5, v6, v6}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    goto/16 :goto_0

    .line 810
    .end local v4           #res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :pswitch_3
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    move-object v4, p2

    .line 811
    check-cast v4, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 812
    .restart local v4       #res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->isSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 813
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-direct {p0, v5, v6, v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 822
    :goto_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->btn_regist:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->isRegisterBtnEnable()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 815
    :cond_4
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-direct {p0, v5, v6, v6}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 816
    const/16 v5, 0xc9

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->request(I)V

    .line 817
    new-array v3, v8, [I

    .line 818
    .local v3, location:[I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_identifycode:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 819
    const v5, 0x7f07067b

    aget v6, v3, v6

    aget v7, v3, v7

    add-int/lit8 v7, v7, 0x28

    invoke-virtual {p0, p0, v5, v6, v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showToast(Landroid/content/Context;III)V

    goto :goto_1

    .line 745
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method showToast(Landroid/content/Context;III)V
    .locals 7
    .parameter "mContext"
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 203
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 204
    .local v0, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f0300f3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 205
    .local v1, setView:Landroid/view/View;
    const v4, 0x7f0c02af

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 206
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 207
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 208
    .local v2, toast:Landroid/widget/Toast;
    const/16 v4, 0x33

    invoke-virtual {v2, v4, p3, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 209
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 210
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 211
    return-void
.end method
