.class public Lcom/cnlaunch/x431pro/activity/login/RegistActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "RegistActivity.java"

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

.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bt_refresh:Landroid/widget/Button;

.field private btn_regist:Landroid/widget/Button;

.field private checkbox_confirm_password:Landroid/widget/CheckBox;

.field private checkbox_email:Landroid/widget/CheckBox;

.field private checkbox_identifycode:Landroid/widget/CheckBox;

.field private checkbox_password:Landroid/widget/CheckBox;

.field private checkbox_username:Landroid/widget/CheckBox;

.field private checkbox_zipcode:Landroid/widget/CheckBox;

.field private confirmpass:Ljava/lang/String;

.field private countryDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private edit_confirmpass:Landroid/widget/EditText;

.field private edit_email:Landroid/widget/EditText;

.field private edit_identifycode:Landroid/widget/EditText;

.field private edit_password:Landroid/widget/EditText;

.field private edit_username:Landroid/widget/EditText;

.field private edit_zipcode:Landroid/widget/EditText;

.field private email:Ljava/lang/String;

.field private handle:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private image_picture_identifycode:Landroid/widget/ImageView;

.field private listCountry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/user/model/Country;",
            ">;"
        }
    .end annotation
.end field

.field loadcodePic:Ljava/lang/String;

.field private nationId:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private promptAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private promptDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spin_country:Landroid/widget/Spinner;

.field tempCountryInfo:Ljava/lang/String;

.field url:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private validcode:Ljava/lang/String;

.field private zipcode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 87
    const/16 v0, 0xc8

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REQ_REGIST_CODE:I

    .line 88
    const/16 v0, 0xc9

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REQ_IDENTIFY_CODE:I

    .line 89
    const/16 v0, 0xca

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REG_GETCOUNTRY_CODE:I

    .line 90
    const/16 v0, 0xcb

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REG_COMFIRM_IDENTIFY_CODE:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REQ_REGIST_CODE_SUCCESS:I

    .line 94
    const/16 v0, 0x400

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REQ_REGIST_CODE_ERROR_REGISTERED_USERNAME:I

    .line 95
    const/16 v0, 0x401

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REQ_REGIST_CODE_ERROR_VERIFY_CODE_INCORRECT:I

    .line 96
    const v0, 0x493e1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REQ_REGIST_CODE_ERROR_INVALID_PASSWORD:I

    .line 97
    const v0, 0x493e9

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REQ_REGIST_CODE_ERROR_INVALID_EMAIL:I

    .line 98
    const v0, 0x493ea

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REQ_REGIST_CODE_ERROR_REGISTER_SOURCE_ILLEGAL:I

    .line 99
    const v0, 0x493eb

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REQ_REGIST_CODE_ERROR_ZIPCODE_ILLEGAL:I

    .line 100
    const v0, 0x493ec

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REQ_REGIST_CODE_ERROR_LOGINKEY_ILLEGAL:I

    .line 101
    const v0, 0x493ed

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REQ_REGIST_CODE_ERROR_NICKNAME_ILLEGAL:I

    .line 102
    const v0, 0x493ee

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REQ_REGIST_CODE_ERROR_LANGUAGE_ILLEGAL:I

    .line 103
    const v0, 0x493ef

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->REQ_REGIST_CODE_ERROR_USERNAME_IS_THE_PUBLIC:I

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryDisplay:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->promptDisplay:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->handle:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method private GetIdentifyCodeFailPrompt(I)V
    .locals 6
    .parameter "code"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 670
    sparse-switch p1, :sswitch_data_0

    .line 688
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070678

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 691
    :goto_0
    return-void

    .line 672
    :sswitch_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_username:Landroid/widget/CheckBox;

    invoke-direct {p0, v2, v4, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 673
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 674
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 675
    new-array v0, v3, [I

    .line 676
    .local v0, location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 677
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070673

    aget v4, v0, v4

    aget v5, v0, v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto :goto_0

    .line 680
    .end local v0           #location:[I
    :sswitch_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_username:Landroid/widget/CheckBox;

    invoke-direct {p0, v2, v4, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 681
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 682
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 683
    new-array v1, v3, [I

    .line 684
    .local v1, location2:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 685
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070674

    aget v4, v1, v4

    aget v5, v1, v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto :goto_0

    .line 670
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_0
        0x1adb1 -> :sswitch_1
    .end sparse-switch
.end method

.method private RegisterFailPrompt(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 646
    sparse-switch p1, :sswitch_data_0

    .line 664
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f070685

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 667
    :goto_1
    return-void

    .line 648
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f07067a

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 651
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f07067b

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 654
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f07067c

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 657
    :sswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f07067d

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 662
    :sswitch_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f07067f

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 646
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

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->listCountry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryDisplay:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->promptDisplay:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->promptAdapter:Landroid/widget/ArrayAdapter;

    return-void
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->promptAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_username:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/CheckBox;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1068
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    return-void
.end method

.method static synthetic access$16(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->btn_regist:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_password:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$18(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_confirmpass:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$20(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$21(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_password:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$23(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_confirm_password:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$25(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_email:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$26(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->email:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$27(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_email:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$29(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_zipcode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->adapter:Landroid/widget/ArrayAdapter;

    return-void
.end method

.method static synthetic access$30(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$31(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_zipcode:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$33(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_identifycode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$34(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->validcode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$35(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->validcode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_identifycode:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$37(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->username:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$38(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->nationId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->spin_country:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->handle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->image_picture_identifycode:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getModelClassMember(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/Country;
    .locals 8
    .parameter "filePath"

    .prologue
    .line 1105
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/model/Country;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;-><init>()V

    .line 1106
    .local v0, country:Lcom/cnlaunch/x431pro/module/user/model/Country;
    const/4 v4, 0x0

    .line 1108
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1109
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 1110
    .local v2, line:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v2

    if-nez v2, :cond_2

    .line 1126
    if-eqz v5, :cond_4

    .line 1128
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-object v4, v5

    .line 1134
    .end local v2           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v0

    .line 1111
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    const-string/jumbo v6, "\\|"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1112
    .local v3, members:[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v6, v3

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 1113
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/user/model/Country;->setDisplay(Ljava/lang/String;)V

    .line 1114
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/user/model/Country;->setNcode(Ljava/lang/String;)V

    .line 1115
    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/user/model/Country;->setIs_sms(I)V

    .line 1116
    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/user/model/Country;->setPre_code(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_0

    .line 1119
    .end local v3           #members:[Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 1120
    .end local v2           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-static {v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1126
    if-eqz v4, :cond_1

    .line 1128
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1129
    :catch_1
    move-exception v1

    .line 1130
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1121
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1122
    .restart local v1       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-static {v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1126
    if-eqz v4, :cond_1

    .line 1128
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 1129
    :catch_3
    move-exception v1

    .line 1130
    invoke-static {v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1123
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 1124
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    :try_start_8
    invoke-static {v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1126
    if-eqz v4, :cond_1

    .line 1128
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1

    .line 1129
    :catch_5
    move-exception v1

    .line 1130
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1125
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1126
    :goto_5
    if-eqz v4, :cond_3

    .line 1128
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1133
    :cond_3
    :goto_6
    throw v6

    .line 1129
    :catch_6
    move-exception v1

    .line 1130
    .restart local v1       #e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1129
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .line 1130
    .restart local v1       #e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V

    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_1

    .line 1125
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 1123
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v1

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 1121
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v1

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 1119
    .end local v2           #line:Ljava/lang/String;
    :catch_a
    move-exception v1

    goto :goto_2
.end method

.method private initIdentifycodePic()V
    .locals 5

    .prologue
    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->loadcodePic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->drawable:Landroid/graphics/drawable/Drawable;

    .line 642
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->image_picture_identifycode:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 643
    return-void

    .line 637
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->loadcodePic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->drawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initViews()V
    .locals 10

    .prologue
    const v9, 0x7f0c02c2

    const v8, 0x7f0c02c1

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 253
    new-instance v2, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 254
    const-string/jumbo v2, "codepic.png"

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->loadcodePic:Ljava/lang/String;

    .line 255
    const-string/jumbo v2, "countryInfo.ini"

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->tempCountryInfo:Ljava/lang/String;

    .line 257
    const v2, 0x7f0c02aa

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    .line 258
    const v2, 0x7f0c02c7

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_zipcode:Landroid/widget/EditText;

    .line 260
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_zipcode:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 262
    const v2, 0x7f0c02c6

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_email:Landroid/widget/EditText;

    .line 263
    const v2, 0x7f0c02b3

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_password:Landroid/widget/EditText;

    .line 264
    const v2, 0x7f0c02c4

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_confirmpass:Landroid/widget/EditText;

    .line 265
    const v2, 0x7f0c02cc

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_identifycode:Landroid/widget/EditText;

    .line 266
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_identifycode:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 267
    const v2, 0x7f0c02ca

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->spin_country:Landroid/widget/Spinner;

    .line 268
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

    .line 270
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_zipcode:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->tempCountryInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, filePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->getModelClassMember(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/Country;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

    .line 277
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->promptDisplay:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 278
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->promptDisplay:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getNcode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->nationId:Ljava/lang/String;

    .line 283
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filePath:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->handle:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_username:Landroid/widget/CheckBox;

    .line 287
    invoke-virtual {p0, v9}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_password:Landroid/widget/CheckBox;

    .line 288
    const v2, 0x7f0c02c3

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_confirm_password:Landroid/widget/CheckBox;

    .line 289
    const v2, 0x7f0c02c5

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_email:Landroid/widget/CheckBox;

    .line 290
    const v2, 0x7f0c02c9

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_zipcode:Landroid/widget/CheckBox;

    .line 291
    const v2, 0x7f0c02cb

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_identifycode:Landroid/widget/CheckBox;

    .line 293
    const v2, 0x7f0c02cd

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->image_picture_identifycode:Landroid/widget/ImageView;

    .line 295
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->initIdentifycodePic()V

    .line 297
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_username:Landroid/widget/CheckBox;

    .line 298
    invoke-virtual {p0, v9}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_password:Landroid/widget/CheckBox;

    .line 299
    const v2, 0x7f0c02c3

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_confirm_password:Landroid/widget/CheckBox;

    .line 300
    const v2, 0x7f0c02c5

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_email:Landroid/widget/CheckBox;

    .line 301
    const v2, 0x7f0c02c9

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_zipcode:Landroid/widget/CheckBox;

    .line 302
    const v2, 0x7f0c02cb

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_identifycode:Landroid/widget/CheckBox;

    .line 304
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_username:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_username:Landroid/widget/CheckBox;

    invoke-direct {p0, v2, v6, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 307
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_password:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 308
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_password:Landroid/widget/CheckBox;

    invoke-direct {p0, v2, v6, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 310
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_confirm_password:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 311
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_confirm_password:Landroid/widget/CheckBox;

    invoke-direct {p0, v2, v6, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 313
    :cond_3
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_email:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_4

    .line 314
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_email:Landroid/widget/CheckBox;

    invoke-direct {p0, v2, v6, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 316
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_zipcode:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    .line 317
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_zipcode:Landroid/widget/CheckBox;

    invoke-direct {p0, v2, v6, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 319
    :cond_5
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_6

    .line 320
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-direct {p0, v2, v6, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 323
    :cond_6
    const v2, 0x7f0c02ce

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->bt_refresh:Landroid/widget/Button;

    .line 324
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->bt_refresh:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    const v2, 0x7f0c02d0

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->btn_regist:Landroid/widget/Button;

    .line 327
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->btn_regist:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 328
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->btn_regist:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->image_picture_identifycode:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_identifycode:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 334
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 335
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 336
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_email:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 337
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_zipcode:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 338
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_identifycode:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 339
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->username:Ljava/lang/String;

    .line 340
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    .line 341
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;

    .line 342
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_email:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->email:Ljava/lang/String;

    .line 343
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_zipcode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$2;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 376
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_password:Landroid/widget/EditText;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 420
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_confirmpass:Landroid/widget/EditText;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$4;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$4;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 456
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_email:Landroid/widget/EditText;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$5;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$5;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 486
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_zipcode:Landroid/widget/EditText;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 521
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_identifycode:Landroid/widget/EditText;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 553
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->spin_country:Landroid/widget/Spinner;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$8;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$8;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 573
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->spin_country:Landroid/widget/Spinner;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$9;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$9;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 611
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->btn_regist:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->isRegisterBtnEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 612
    return-void
.end method

.method private showCheckBox(Landroid/widget/CheckBox;IZ)V
    .locals 1
    .parameter "checkBox"
    .parameter "visibleState"
    .parameter "flag"

    .prologue
    .line 1069
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1070
    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1071
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1072
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 10
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 695
    packed-switch p1, :pswitch_data_0

    .line 739
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 719
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->nationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->validcode:Ljava/lang/String;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    const-string/jumbo v5, "2013122400000003"

    const-string/jumbo v6, "nickname"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->email:Ljava/lang/String;

    const/16 v8, 0xb

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->regist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    move-result-object v0

    goto :goto_0

    .line 730
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->username:Ljava/lang/String;

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->verifyReqSendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    goto :goto_0

    .line 732
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getCountryList(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;

    move-result-object v0

    goto :goto_0

    .line 734
    :pswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->validcode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->verifyReqConfirmCode(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    goto :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method isRegisterBtnEnable()Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_username:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_password:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_confirm_password:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_email:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_zipcode:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    const/4 v0, 0x1

    .line 624
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 1080
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1082
    if-ne p1, v5, :cond_0

    .line 1083
    if-ne p2, v5, :cond_0

    .line 1084
    new-instance v3, Lcom/cnlaunch/x431pro/module/user/model/Country;

    invoke-direct {v3}, Lcom/cnlaunch/x431pro/module/user/model/Country;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

    .line 1085
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1086
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

    const-string/jumbo v4, "display"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/user/model/Country;->setDisplay(Ljava/lang/String;)V

    .line 1087
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

    const-string/jumbo v4, "ncode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/user/model/Country;->setNcode(Ljava/lang/String;)V

    .line 1088
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

    const-string/jumbo v4, "is_sms"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/user/model/Country;->setIs_sms(I)V

    .line 1089
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

    const-string/jumbo v4, "pre_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/user/model/Country;->setPre_code(I)V

    .line 1091
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1092
    .local v2, strCountryInfo:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getNcode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1093
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getIs_sms()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryInfo:Lcom/cnlaunch/x431pro/module/user/model/Country;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getPre_code()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->tempCountryInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->saveFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1099
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_zipcode:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 1102
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #strCountryInfo:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const v2, 0x7f070650

    .line 869
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 922
    :goto_0
    :pswitch_0
    return-void

    .line 871
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->username:Ljava/lang/String;

    .line 873
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;

    .line 874
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->email:Ljava/lang/String;

    .line 875
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    .line 876
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;

    .line 877
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_identifycode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->validcode:Ljava/lang/String;

    .line 879
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 890
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 894
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 895
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f070655

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 899
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 900
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 904
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->validcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 905
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 908
    :cond_5
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 909
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->request(I)V

    goto/16 :goto_0

    .line 913
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->username:Ljava/lang/String;

    .line 914
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 915
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 918
    :cond_6
    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->request(I)V

    goto/16 :goto_0

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c02ce
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1075
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1076
    const-string/jumbo v0, "weizewei"

    const-string/jumbo v1, "RegistActivity onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    const v0, 0x7f0300f0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->setContentView(I)V

    .line 237
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->setHeadVisibility(I)V

    .line 239
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 839
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onFailure(IILjava/lang/Object;)V

    .line 840
    packed-switch p1, :pswitch_data_0

    .line 865
    :goto_0
    return-void

    .line 843
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->setResult(I)V

    .line 845
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 848
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 857
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->handle:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 860
    :pswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 861
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v1, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 862
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->btn_regist:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->isRegisterBtnEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 840
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
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

    .line 941
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 943
    :sswitch_0
    if-nez p2, :cond_0

    .line 944
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAcount(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 946
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->username:Ljava/lang/String;

    .line 947
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 948
    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->request(I)V

    goto :goto_0

    .line 951
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 952
    new-array v0, v6, [I

    .line 953
    .local v0, location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 954
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070631

    aget v4, v0, v4

    aget v5, v0, v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto :goto_0

    .line 955
    .end local v0           #location:[I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    .line 956
    new-array v0, v6, [I

    .line 957
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 958
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070652

    aget v4, v0, v4

    aget v5, v0, v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto :goto_0

    .line 960
    .end local v0           #location:[I
    :cond_3
    new-array v0, v6, [I

    .line 961
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 962
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070653

    aget v4, v0, v4

    aget v5, v0, v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto :goto_0

    .line 968
    .end local v0           #location:[I
    .end local v1           #name:Ljava/lang/String;
    :sswitch_1
    if-nez p2, :cond_0

    .line 969
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    .line 970
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;

    .line 971
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 978
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAcountPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 979
    new-array v0, v6, [I

    .line 980
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 981
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    .line 982
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070683

    aget v4, v0, v4

    aget v5, v0, v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 984
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, v2, v7, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 987
    .end local v0           #location:[I
    :cond_5
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 988
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-nez v2, :cond_6

    .line 989
    new-array v0, v6, [I

    .line 990
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 991
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, v2, v8, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 992
    .end local v0           #location:[I
    :cond_6
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1003
    :sswitch_2
    if-nez p2, :cond_0

    .line 1004
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    .line 1005
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;

    .line 1006
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAcountPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1007
    new-array v0, v6, [I

    .line 1008
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1009
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, v2, v7, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1011
    .end local v0           #location:[I
    :cond_7
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1012
    new-array v0, v6, [I

    .line 1013
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_confirmpass:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1014
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    aget v3, v0, v4

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p0, v2, v8, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1022
    .end local v0           #location:[I
    :sswitch_3
    if-nez p2, :cond_0

    .line 1023
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_email:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->email:Ljava/lang/String;

    .line 1024
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->email:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->email:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1025
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->email:Ljava/lang/String;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1026
    new-array v0, v6, [I

    .line 1027
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_email:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1028
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f07067d

    aget v4, v0, v4

    aget v5, v0, v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1041
    .end local v0           #location:[I
    :sswitch_4
    if-nez p2, :cond_0

    .line 1042
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_zipcode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;

    .line 1043
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 1044
    new-array v0, v6, [I

    .line 1045
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_zipcode:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1046
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070680

    aget v4, v0, v4

    aget v5, v0, v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 1047
    .end local v0           #location:[I
    :cond_8
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAmericaZipCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isCanadaZipCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1048
    new-array v0, v6, [I

    .line 1049
    .restart local v0       #location:[I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_zipcode:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1050
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f07067f

    aget v4, v0, v4

    aget v5, v0, v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 941
    :sswitch_data_0
    .sparse-switch
        0x7f0c02aa -> :sswitch_0
        0x7f0c02b3 -> :sswitch_1
        0x7f0c02c4 -> :sswitch_2
        0x7f0c02c6 -> :sswitch_3
        0x7f0c02c7 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 926
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 928
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v1

    if-nez v1, :cond_0

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->tempCountryInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, filePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 933
    .end local v0           #filePath:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->finish()V

    .line 934
    const/4 v1, 0x1

    .line 936
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onResume()V

    .line 245
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->initViews()V

    .line 246
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->request(I)V

    .line 249
    :cond_0
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 10
    .parameter "requestCode"
    .parameter "result"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 744
    packed-switch p1, :pswitch_data_0

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 746
    :pswitch_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 747
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 748
    check-cast v4, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    .line 749
    .local v4, res:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;->getCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->isSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 751
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f07065b

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 753
    new-instance v2, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;-><init>(Landroid/content/Context;)V

    .line 754
    .local v2, lf:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
    invoke-virtual {v2, v8}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->setRegisterLogin(Z)V

    .line 755
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->username:Ljava/lang/String;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->Login(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const-class v6, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 759
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v5, "UserName"

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->username:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    const-string/jumbo v5, "PassWord"

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->startActivity(Landroid/content/Intent;)V

    .line 764
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->setResult(I)V

    .line 766
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v5

    if-nez v5, :cond_1

    .line 768
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->tempCountryInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, filePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 772
    .end local v0           #filePath:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->finish()V

    goto :goto_0

    .line 774
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #lf:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
    :cond_2
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;->getCode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->RegisterFailPrompt(I)V

    .line 777
    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->setResult(I)V

    goto :goto_0

    .line 782
    .end local v4           #res:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    :pswitch_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 783
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 784
    check-cast v4, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 785
    .local v4, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->isSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 786
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_username:Landroid/widget/CheckBox;

    invoke-direct {p0, v5, v7, v8}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 787
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

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->url:Ljava/lang/String;

    .line 788
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->handle:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 790
    :cond_3
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->GetIdentifyCodeFailPrompt(I)V

    .line 791
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_username:Landroid/widget/CheckBox;

    invoke-direct {p0, v5, v7, v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    goto/16 :goto_0

    .line 809
    .end local v4           #res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :pswitch_2
    if-eqz p2, :cond_4

    move-object v4, p2

    .line 810
    check-cast v4, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;

    .line 811
    .local v4, res:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->isSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 812
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getData()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->listCountry:Ljava/util/ArrayList;

    .line 813
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->handle:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 816
    .end local v4           #res:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    :cond_4
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->handle:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 820
    :pswitch_3
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    move-object v4, p2

    .line 821
    check-cast v4, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 822
    .local v4, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->isSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 823
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-direct {p0, v5, v7, v8}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 832
    :goto_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->btn_regist:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->isRegisterBtnEnable()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 825
    :cond_5
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_identifycode:Landroid/widget/CheckBox;

    invoke-direct {p0, v5, v7, v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    .line 826
    const/16 v5, 0xc9

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->request(I)V

    .line 827
    new-array v3, v9, [I

    .line 828
    .local v3, location:[I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_identifycode:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 829
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f07067b

    aget v7, v3, v7

    aget v8, v3, v8

    add-int/lit8 v8, v8, 0x28

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showToast(Landroid/content/Context;III)V

    goto :goto_1

    .line 744
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 223
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 224
    .local v0, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f0300f3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 225
    .local v1, setView:Landroid/view/View;
    const v4, 0x7f0c02af

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 226
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 227
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 228
    .local v2, toast:Landroid/widget/Toast;
    const/16 v4, 0x33

    invoke-virtual {v2, v4, p3, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 229
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 230
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 231
    return-void
.end method
