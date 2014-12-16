.class public Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "ActivateJointActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
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

.field private action:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

.field private allSerialNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/SerialNumber;",
            ">;"
        }
    .end annotation
.end field

.field private allSerialNumberListTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/SerialNumber;",
            ">;"
        }
    .end annotation
.end field

.field bt_activate_comfirm:Landroid/widget/Button;

.field edit_serialNumber:Landroid/widget/EditText;

.field edit_verifyCode:Landroid/widget/EditText;

.field password:Ljava/lang/String;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private serialNo:Ljava/lang/String;

.field private serialNo_Prefix:Ljava/lang/String;

.field serialNumber:Ljava/lang/String;

.field private serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

.field tv_getVerifyCode:Landroid/widget/TextView;

.field tv_skip:Landroid/widget/TextView;

.field username:Ljava/lang/String;

.field venderCode:Ljava/lang/String;

.field verifyCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 41
    const/16 v0, 0x8fd

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->REQ_ACTIVATE_CONNECTOR_CODE:I

    .line 43
    const/16 v0, 0x8fe

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->REQ_GET_REGISTTIME_CODE:I

    .line 45
    const/16 v0, 0x191

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->REQ_ACTIVATE_CONNECTOR_ERROR_VOID_PARAMETER:I

    .line 46
    const/16 v0, 0x195

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->REQ_ACTIVATE_CONNECTOR_ERROR_REQUEST_NO_RESULT:I

    .line 47
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->REQ_ACTIVATE_CONNECTOR_ERROR_SERVER:I

    .line 48
    const/16 v0, 0x28a

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->REQ_ACTIVATE_CONNECTOR_ERROR_NO_SALES:I

    .line 49
    const/16 v0, 0x28b

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->REQ_ACTIVATE_CONNECTOR_ERROR_REGISTERED:I

    .line 50
    const/16 v0, 0x28c

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->REQ_ACTIVATE_CONNECTOR_ERROR_DISABLED:I

    .line 51
    const/16 v0, 0x28f

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->REQ_ACTIVATE_CONNECTOR_ERROR_ACTIVATION_CODE_INCORRECT:I

    .line 52
    const/16 v0, 0x290

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->REQ_ACTIVATE_CONNECTOR_ERROR_VENDERCODE_INCORRECT:I

    .line 53
    const/16 v0, 0x292

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->REQ_ACTIVATE_CONNECTOR_ERROR_SERIALNUMBER_NONEXISTENT:I

    .line 54
    const/16 v0, 0x293

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->REQ_ACTIVATE_CONNECTOR_ERROR_REGISTERED_BY_OTHER:I

    .line 55
    const/16 v0, 0x294

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->REQ_ACTIVATE_CONNECTOR_ERROR_VOID_PRODUCT_CONFIGURE:I

    .line 69
    const-string/jumbo v0, "86X"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->venderCode:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private ActivateConnectorFailPrompt(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 139
    sparse-switch p1, :sswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 141
    :sswitch_0
    const v0, 0x7f0705ca

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 144
    :sswitch_1
    const v0, 0x7f0705cb

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 147
    :sswitch_2
    const v0, 0x7f0705cc

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 150
    :sswitch_3
    const v0, 0x7f0705cd

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 153
    :sswitch_4
    const v0, 0x7f0705ce

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 156
    :sswitch_5
    const v0, 0x7f0706e6

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 139
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

.method private initView()V
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "UserName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->username:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "PassWord"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->password:Ljava/lang/String;

    .line 89
    new-instance v1, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->action:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    .line 90
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 91
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "venderCode"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->venderCode:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "serialNo_Prefix"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNo_Prefix:Ljava/lang/String;

    .line 93
    const v1, 0x7f0c0286

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->edit_serialNumber:Landroid/widget/EditText;

    .line 94
    const v1, 0x7f0c0287

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->edit_verifyCode:Landroid/widget/EditText;

    .line 95
    const v1, 0x7f0c0289

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->bt_activate_comfirm:Landroid/widget/Button;

    .line 96
    const v1, 0x7f0c028a

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->tv_skip:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f0c0288

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->tv_getVerifyCode:Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "serialNo"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNo:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    .line 102
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getLocalSerialList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->tv_skip:Landroid/widget/TextView;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$1;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->bt_activate_comfirm:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->tv_getVerifyCode:Landroid/widget/TextView;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$2;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->edit_verifyCode:Landroid/widget/EditText;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$3;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity$3;-><init>(Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 136
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 6
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 171
    packed-switch p1, :pswitch_data_0

    .line 181
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->doInBackground(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    .line 173
    :pswitch_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->action:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->venderCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->verifyCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->registerProductForPad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v2

    goto :goto_0

    .line 175
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v0, serialNoList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->allSerialNumberList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->action:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getProductRegisterTime(Ljava/util/List;)Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;

    move-result-object v2

    goto :goto_0

    .line 176
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 177
    .local v1, sn:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x8fd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 338
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->edit_serialNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumber:Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->edit_verifyCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->verifyCode:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    const v1, 0x7f0705cf

    invoke-static {p0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->verifyCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    const v1, 0x7f0705d0

    invoke-static {p0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 319
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNo_Prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 321
    :cond_2
    const v1, 0x7f0706d7

    invoke-static {p0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 325
    :cond_3
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 326
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_state"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, login_state:Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 328
    :cond_4
    const v1, 0x7f0706da

    invoke-static {p0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 329
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 331
    :cond_5
    const/16 v1, 0x8fd

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->request(I)V

    goto/16 :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x7f0c0289
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f0300cf

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->setContentView(I)V

    .line 82
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->setHeadVisibility(I)V

    .line 83
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->initView()V

    .line 84
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onDestroy()V

    .line 167
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 281
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onFailure(IILjava/lang/Object;)V

    .line 282
    packed-switch p1, :pswitch_data_0

    .line 290
    :goto_0
    return-void

    .line 284
    :pswitch_0
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 287
    :pswitch_1
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x8fd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 294
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->finish()V

    .line 296
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 13
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 186
    packed-switch p1, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 188
    :pswitch_0
    if-eqz p2, :cond_6

    move-object v8, p2

    .line 189
    check-cast v8, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 190
    .local v8, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->isSuccess(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 191
    const v10, 0x7f070690

    invoke-static {p0, v10}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 194
    new-instance v7, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumber:Ljava/lang/String;

    invoke-direct {v7, v10, v11}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    .local v7, registAndLoadInfo:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->username:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setUserName(Ljava/lang/String;)V

    .line 196
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->password:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setPassWord(Ljava/lang/String;)V

    .line 197
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setRegisted(Z)V

    .line 198
    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->sava()V

    .line 201
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v10

    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    iget-object v12, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNo:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v10, v11, v12}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v3

    .line 202
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 203
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 204
    .local v2, isDefaultSerialNumber:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 205
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v10, v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->update(Ljava/lang/Object;)V

    .line 209
    .end local v2           #isDefaultSerialNumber:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    :cond_0
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v10

    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    iget-object v12, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v10, v11, v12}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 210
    .local v4, listTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 211
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 212
    .local v0, entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 213
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 214
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v10, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->update(Ljava/lang/Object;)V

    .line 224
    :goto_1
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v11, "serialNo"

    iget-object v12, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumber:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v11, "need_refresh"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 227
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->loadAll()Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->allSerialNumberListTemp:Ljava/util/List;

    .line 228
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->allSerialNumberList:Ljava/util/List;

    .line 230
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->allSerialNumberListTemp:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 236
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->allSerialNumberList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 237
    const/16 v10, 0x8fe

    invoke-virtual {p0, v10}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->request(I)V

    goto/16 :goto_0

    .line 216
    .end local v0           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    :cond_2
    new-instance v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;-><init>()V

    .line 217
    .restart local v0       #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v11, "user_id"

    invoke-virtual {v10, v11}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setCc(Ljava/lang/String;)V

    .line 218
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 219
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 220
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setSerialNo(Ljava/lang/String;)V

    .line 221
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v10, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->insert(Ljava/lang/Object;)J

    goto :goto_1

    .line 230
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 231
    .local v9, sn:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->serialNo_Prefix:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 232
    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->allSerialNumberList:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 239
    .end local v9           #sn:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    :cond_4
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 243
    .end local v0           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .end local v4           #listTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .end local v7           #registAndLoadInfo:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    :cond_5
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 244
    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->ActivateConnectorFailPrompt(I)V

    goto/16 :goto_0

    .line 247
    .end local v8           #res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :cond_6
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 251
    :pswitch_1
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 252
    if-nez p2, :cond_8

    .line 253
    const v10, 0x7f0705c9

    invoke-static {p0, v10}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 272
    :cond_7
    :goto_3
    new-instance v1, Landroid/content/Intent;

    const-class v10, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;

    invoke-direct {v1, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->startActivity(Landroid/content/Intent;)V

    .line 274
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->finish()V

    goto/16 :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    :cond_8
    move-object v8, p2

    .line 255
    check-cast v8, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;

    .line 256
    .local v8, res:Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;
    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;->getCode()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/cnlaunch/x431pro/activity/login/ActivateJointActivity;->isSuccess(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 259
    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;->getProductsRegDateDTOs()Ljava/util/List;

    move-result-object v6

    .line 262
    .local v6, productsRegDateDTOList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 263
    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;

    .line 264
    .local v5, productsRegDateDTO:Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;
    invoke-static {}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;

    move-result-object v10

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->getRegDate()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveActivateTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 268
    .end local v5           #productsRegDateDTO:Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;
    .end local v6           #productsRegDateDTOList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;>;"
    :cond_9
    const v10, 0x7f0705c9

    invoke-static {p0, v10}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_3

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x8fd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
