.class public Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "ConnectorActivateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final ACTIVE_CODE_LENGTH:I

.field private final REQ_ACTIVATE_CONNECTOR_CODE:I

.field private final REQ_ACTIVATE_CONNECTOR_ERROR_ACTIVATION_CODE_INCORRECT:I

.field private final REQ_ACTIVATE_CONNECTOR_ERROR_DISABLED:I

.field private final REQ_ACTIVATE_CONNECTOR_ERROR_NO_SALES:I

.field private final REQ_ACTIVATE_CONNECTOR_ERROR_REGISTERED:I

.field private final REQ_ACTIVATE_CONNECTOR_ERROR_REGISTERED_BY_OTHER:I

.field private final REQ_ACTIVATE_CONNECTOR_ERROR_REQUEST_NO_RESULT:I

.field private final REQ_ACTIVATE_CONNECTOR_ERROR_SERIALNUMBER_NONEXISTENT:I

.field private final REQ_ACTIVATE_CONNECTOR_ERROR_SERVER:I

.field private final REQ_ACTIVATE_CONNECTOR_ERROR_VENDERCODE_INCORRECT:I

.field private final REQ_ACTIVATE_CONNECTOR_ERROR_VOID_PARAMETER:I

.field private final REQ_ACTIVATE_CONNECTOR_ERROR_VOID_PRODUCT_CONFIGURE:I

.field private final REQ_GET_REGISTTIME_CODE:I

.field private final SERIAL_NUMBER_LENGTH:I

.field private btn_activate:Landroid/widget/Button;

.field private cb_password:Landroid/widget/CheckBox;

.field private cb_serialno:Landroid/widget/CheckBox;

.field private connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

.field private edit_password:Landroid/widget/EditText;

.field private edit_serialno:Landroid/widget/EditText;

.field private isBack:Z

.field private portNum:Ljava/lang/String;

.field private portPwd:Ljava/lang/String;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private serialNo:Ljava/lang/String;

.field private serialNo_Prefix:Ljava/lang/String;

.field private serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

.field private tv_get_code:Landroid/widget/TextView;

.field private venderCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 64
    const/16 v0, 0x8fd

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->REQ_ACTIVATE_CONNECTOR_CODE:I

    .line 66
    const/16 v0, 0x8fe

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->REQ_GET_REGISTTIME_CODE:I

    .line 69
    const/16 v0, 0x191

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->REQ_ACTIVATE_CONNECTOR_ERROR_VOID_PARAMETER:I

    .line 70
    const/16 v0, 0x195

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->REQ_ACTIVATE_CONNECTOR_ERROR_REQUEST_NO_RESULT:I

    .line 71
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->REQ_ACTIVATE_CONNECTOR_ERROR_SERVER:I

    .line 72
    const/16 v0, 0x28a

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->REQ_ACTIVATE_CONNECTOR_ERROR_NO_SALES:I

    .line 73
    const/16 v0, 0x28b

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->REQ_ACTIVATE_CONNECTOR_ERROR_REGISTERED:I

    .line 74
    const/16 v0, 0x28c

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->REQ_ACTIVATE_CONNECTOR_ERROR_DISABLED:I

    .line 75
    const/16 v0, 0x28f

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->REQ_ACTIVATE_CONNECTOR_ERROR_ACTIVATION_CODE_INCORRECT:I

    .line 76
    const/16 v0, 0x290

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->REQ_ACTIVATE_CONNECTOR_ERROR_VENDERCODE_INCORRECT:I

    .line 77
    const/16 v0, 0x292

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->REQ_ACTIVATE_CONNECTOR_ERROR_SERIALNUMBER_NONEXISTENT:I

    .line 78
    const/16 v0, 0x293

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->REQ_ACTIVATE_CONNECTOR_ERROR_REGISTERED_BY_OTHER:I

    .line 79
    const/16 v0, 0x294

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->REQ_ACTIVATE_CONNECTOR_ERROR_VOID_PRODUCT_CONFIGURE:I

    .line 81
    const/16 v0, 0xc

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->SERIAL_NUMBER_LENGTH:I

    .line 82
    const/16 v0, 0x8

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->ACTIVE_CODE_LENGTH:I

    .line 103
    const-string/jumbo v0, "86X"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->venderCode:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private ActivateConnectorFailPrompt(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 328
    sparse-switch p1, :sswitch_data_0

    .line 350
    :goto_0
    return-void

    .line 330
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0705c8

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 333
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0705c9

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 336
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0705ca

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 339
    :sswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0705cb

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 342
    :sswitch_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0705cc

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 345
    :sswitch_5
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0706e4

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 328
    :sswitch_data_0
    .sparse-switch
        0x195 -> :sswitch_5
        0x28a -> :sswitch_0
        0x28b -> :sswitch_1
        0x28f -> :sswitch_2
        0x293 -> :sswitch_3
        0x294 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->activate()V

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->btn_activate:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->cb_password:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_serialno:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->serialNo_Prefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->cb_serialno:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;Landroid/widget/CheckBox;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V

    return-void
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_password:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portPwd:Ljava/lang/String;

    return-void
.end method

.method private activate()V
    .locals 4

    .prologue
    .line 381
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_serialno:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;

    .line 382
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portPwd:Ljava/lang/String;

    .line 384
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0705cd

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 405
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portPwd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0705ce

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->serialNo_Prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 393
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0706d5

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 397
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 398
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_state"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, login_state:Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 400
    :cond_4
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0706d8

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 401
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 403
    :cond_5
    const/16 v1, 0x8fd

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->request(I)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 124
    const v0, 0x7f07059e

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->setTitle(I)V

    .line 125
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 126
    new-instance v0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    .line 127
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 128
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "serialNo_Prefix"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->serialNo_Prefix:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "venderCode"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->venderCode:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "serialNo"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->serialNo:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    .line 133
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0360

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_serialno:Landroid/widget/EditText;

    .line 134
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d02af

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_password:Landroid/widget/EditText;

    .line 137
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0364

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->tv_get_code:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->tv_get_code:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0361

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->cb_serialno:Landroid/widget/CheckBox;

    .line 140
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0362

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->cb_password:Landroid/widget/CheckBox;

    .line 142
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0363

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->btn_activate:Landroid/widget/Button;

    .line 143
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->btn_activate:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->isBtnActivateEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->btn_activate:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_password:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 161
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_serialno:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_password:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$3;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 221
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 222
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_serialno:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 223
    return-void
.end method

.method private showCheckBox(Landroid/widget/CheckBox;IZ)V
    .locals 1
    .parameter "checkBox"
    .parameter "visibleState"
    .parameter "flag"

    .prologue
    .line 226
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 227
    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 229
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 5
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 233
    packed-switch p1, :pswitch_data_0

    .line 242
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 235
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->venderCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portPwd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->registerProductForPad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    goto :goto_0

    .line 238
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, serialNoList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "serialNo"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getProductRegisterTime(Ljava/util/List;)Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;

    move-result-object v1

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x8fd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isBtnActivateEnable()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->cb_serialno:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->cb_serialno:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->cb_password:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->cb_password:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, 0x1

    .line 414
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->initViews()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->isBack:Z

    .line 113
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 371
    :pswitch_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->activate()V

    goto :goto_0

    .line 375
    :pswitch_1
    const-class v0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0363
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 117
    const v0, 0x7f030138

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 354
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 355
    packed-switch p1, :pswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 357
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const v1, 0x7f0d02da

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    .line 362
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x8fd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 421
    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->isBack:Z

    if-eqz v3, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 442
    :sswitch_0
    if-nez p2, :cond_0

    .line 443
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, activecode:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 445
    new-array v1, v7, [I

    .line 446
    .local v1, location:[I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 447
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0706de

    aget v5, v1, v5

    aget v6, v1, v6

    add-int/lit8 v6, v6, 0x28

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->showToast(Landroid/content/Context;III)V

    goto :goto_0

    .line 427
    .end local v0           #activecode:Ljava/lang/String;
    .end local v1           #location:[I
    :sswitch_1
    if-nez p2, :cond_0

    .line 428
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_serialno:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, serialno:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->cb_serialno:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->cb_serialno:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 430
    new-array v1, v7, [I

    .line 431
    .restart local v1       #location:[I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_serialno:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 432
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0706d5

    aget v5, v1, v5

    aget v6, v1, v6

    add-int/lit8 v6, v6, 0x28

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->showToast(Landroid/content/Context;III)V

    goto :goto_0

    .line 433
    .end local v1           #location:[I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 434
    new-array v1, v7, [I

    .line 435
    .restart local v1       #location:[I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_serialno:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 436
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0706dd

    aget v5, v1, v5

    aget v6, v1, v6

    add-int/lit8 v6, v6, 0x28

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->showToast(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 425
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d02af -> :sswitch_0
        0x7f0d0360 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 458
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onPause()V

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->isBack:Z

    .line 460
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 13
    .parameter "requestCode"
    .parameter "result"

    .prologue
    const v9, 0x7f0705c7

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 247
    packed-switch p1, :pswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 249
    :pswitch_0
    if-eqz p2, :cond_1

    move-object v7, p2

    .line 250
    check-cast v7, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 251
    .local v7, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->isSuccess(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 252
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f0705c6

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 255
    const-string/jumbo v8, "onSuccess"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    new-instance v6, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    .local v6, registAndLoadInfo:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v9, "login_username"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setUserName(Ljava/lang/String;)V

    .line 258
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v9, "login_password"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setPassWord(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v6, v12}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setRegisted(Z)V

    .line 260
    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->sava()V

    .line 263
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v8

    sget-object v9, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->serialNo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v9

    new-array v10, v11, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v8, v9, v10}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    .line 264
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 265
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 266
    .local v1, isDefaultSerialNumber:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 267
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v8, v1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->update(Ljava/lang/Object;)V

    .line 272
    .end local v1           #isDefaultSerialNumber:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    :cond_0
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v8

    sget-object v9, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v9

    new-array v10, v11, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v8, v9, v10}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v3

    .line 273
    .local v3, listTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 274
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 275
    .local v0, entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 276
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 277
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v8, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->update(Ljava/lang/Object;)V

    .line 286
    :goto_1
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v9, "serialNo"

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v9, "need_refresh"

    invoke-virtual {v8, v9, v12}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 289
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_serialno:Landroid/widget/EditText;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_password:Landroid/widget/EditText;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    const/16 v8, 0x8fe

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->request(I)V

    .line 298
    .end local v0           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .end local v3           #listTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .end local v6           #registAndLoadInfo:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    .end local v7           #res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 279
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .restart local v3       #listTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .restart local v6       #registAndLoadInfo:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    .restart local v7       #res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :cond_2
    new-instance v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;-><init>()V

    .line 280
    .restart local v0       #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v9, "user_id"

    invoke-virtual {v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setCc(Ljava/lang/String;)V

    .line 281
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 282
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 283
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setSerialNo(Ljava/lang/String;)V

    .line 284
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v8, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->insert(Ljava/lang/Object;)J

    goto :goto_1

    .line 295
    .end local v0           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .end local v3           #listTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .end local v6           #registAndLoadInfo:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    :cond_3
    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->ActivateConnectorFailPrompt(I)V

    goto :goto_2

    .line 302
    .end local v7           #res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :pswitch_1
    if-nez p2, :cond_5

    .line 303
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 321
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const v9, 0x7f0d02da

    invoke-virtual {v8, v9}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    .line 322
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_5
    move-object v7, p2

    .line 305
    check-cast v7, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;

    .line 306
    .local v7, res:Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;
    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;->getCode()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->isSuccess(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 309
    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;->getProductsRegDateDTOs()Ljava/util/List;

    move-result-object v5

    .line 312
    .local v5, productsRegDateDTOList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 313
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;

    .line 314
    .local v4, productsRegDateDTO:Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;
    invoke-static {}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;

    move-result-object v8

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->getRegDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveActivateTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 317
    .end local v4           #productsRegDateDTO:Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;
    .end local v5           #productsRegDateDTOList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;>;"
    :cond_6
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_3

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x8fd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method showToast(Landroid/content/Context;III)V
    .locals 7
    .parameter "mContext"
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 463
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 464
    .local v0, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f0300f1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 465
    .local v1, setView:Landroid/view/View;
    const v4, 0x7f0d02ab

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 466
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 467
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 468
    .local v2, toast:Landroid/widget/Toast;
    const/16 v4, 0x33

    invoke-virtual {v2, v4, p3, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 469
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 470
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 471
    return-void
.end method
