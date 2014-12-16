.class public Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
.super Lcom/cnlaunch/x431pro/activity/login/NetworkBase;
.source "LoginFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;,
        Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;
    }
.end annotation


# static fields
.field public static final REQ_GETPUBLICID_CODE:I = 0x1fa

.field public static final REQ_LOGIN_CODE:I = 0x1f4

.field public static final REQ_LOGOUT_CODE:I = 0x1f5

.field public static final REQ_SENDCLIIENTVERSION_APP_CODE:I = 0x1f7

.field public static final REQ_SENDCLIIENTVERSION_BOOT_CODE:I = 0x1f8

.field public static final REQ_SENDCLIIENTVERSION_DOWNLOADBIN_CODE:I = 0x1f9

.field public static final REQ_SERIALNUMBER_CODE:I = 0x1f6

.field private static afterLoginOperationCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final REQ_LOGIN_CODE_ERROR_DOMAIN_LOGIN_INCORRECT:I

.field private final REQ_LOGIN_CODE_ERROR_LOGIN_SYSTEM_INCORRECT:I

.field private final REQ_LOGIN_CODE_ERROR_PASSWORD_INCORRECT:I

.field private final REQ_LOGIN_CODE_ERROR_USERNAME_NOT_EXIST:I

.field private final REQ_SERIALNUMBER_CODE_ERROR_ERROR_VOID_PARAMETER:I

.field private final REQ_SERIALNUMBER_CODE_ERROR_NO_REGISTER_PRODUCT:I

.field private final REQ_SERIALNUMBER_CODE_ERROR_SERVER:I

.field private final REQ_SERIALNUMBER_CODE_ERROR_SN_NO_EXIST:I

.field private final SHOWGETSNTIPS:I

.field USERNAMELIST:Ljava/lang/String;

.field UsernameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final VERSION_TYPE_APK:Ljava/lang/String;

.field private final VERSION_TYPE_BOOT:Ljava/lang/String;

.field private final VERSION_TYPE_DOWNLOADBIN:Ljava/lang/String;

.field private final VERSION_TYPE_WATCH_APK:Ljava/lang/String;

.field private allProductDTOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;",
            ">;"
        }
    .end annotation
.end field

.field private connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

.field private handler:Landroid/os/Handler;

.field private handler2:Landroid/os/Handler;

.field private isRegisterLogin:Z

.field private loginInfo:Ljava/lang/String;

.field private mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

.field private mPassword:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private productType:Ljava/lang/String;

.field private serialNo_Prefix:Ljava/lang/String;

.field private serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

.field private showToast:Z

.field private final tag:Ljava/lang/String;

.field private userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

.field private userConnectorSerialNo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->afterLoginOperationCallback:Ljava/util/List;

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;-><init>(Landroid/content/Context;)V

    .line 49
    const-class v2, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    .line 59
    const v2, 0x186a2

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->REQ_LOGIN_CODE_ERROR_USERNAME_NOT_EXIST:I

    .line 60
    const v2, 0x186a1

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->REQ_LOGIN_CODE_ERROR_PASSWORD_INCORRECT:I

    .line 61
    const v2, 0x9c40

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->REQ_LOGIN_CODE_ERROR_DOMAIN_LOGIN_INCORRECT:I

    .line 62
    const v2, 0x9c41

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->REQ_LOGIN_CODE_ERROR_LOGIN_SYSTEM_INCORRECT:I

    .line 64
    const/16 v2, 0x191

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->REQ_SERIALNUMBER_CODE_ERROR_ERROR_VOID_PARAMETER:I

    .line 65
    const/16 v2, 0x295

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->REQ_SERIALNUMBER_CODE_ERROR_SN_NO_EXIST:I

    .line 66
    const/16 v2, 0x296

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->REQ_SERIALNUMBER_CODE_ERROR_NO_REGISTER_PRODUCT:I

    .line 67
    const/16 v2, 0x1f4

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->REQ_SERIALNUMBER_CODE_ERROR_SERVER:I

    .line 70
    const-string/jumbo v2, "1"

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->VERSION_TYPE_APK:Ljava/lang/String;

    .line 71
    const-string/jumbo v2, "2"

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->VERSION_TYPE_DOWNLOADBIN:Ljava/lang/String;

    .line 73
    const-string/jumbo v2, "3"

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->VERSION_TYPE_WATCH_APK:Ljava/lang/String;

    .line 74
    const-string/jumbo v2, "4"

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->VERSION_TYPE_BOOT:Ljava/lang/String;

    .line 89
    const-string/jumbo v2, "username_list"

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->USERNAMELIST:Ljava/lang/String;

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->UsernameList:Ljava/util/ArrayList;

    .line 92
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->showToast:Z

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    .line 103
    const/4 v2, 0x2

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->SHOWGETSNTIPS:I

    .line 104
    new-instance v2, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$1;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler2:Landroid/os/Handler;

    .line 119
    new-instance v2, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 120
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 121
    new-instance v2, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    .line 122
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    .line 123
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v3, "serialNo_Prefix"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNo_Prefix:Ljava/lang/String;

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    .line 126
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isRegisterLogin:Z

    .line 127
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->USERNAMELIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, UsernameString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    :try_start_0
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->String2StringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->UsernameList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/io/StreamCorruptedException;
    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v1           #e:Ljava/io/StreamCorruptedException;
    :catch_1
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 138
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private LoginFailPrompt(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 149
    sparse-switch p1, :sswitch_data_0

    .line 163
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f07062e

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 166
    :goto_0
    return-void

    .line 151
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070635

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 154
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070636

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 157
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070637

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 160
    :sswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070638

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x9c40 -> :sswitch_2
        0x9c41 -> :sswitch_3
        0x186a1 -> :sswitch_1
        0x186a2 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;)Lcom/cnlaunch/framework/common/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    return-object v0
.end method

.method public static declared-synchronized addGetSNInfoListenser(Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 636
    const-class v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->afterLoginOperationCallback:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    monitor-exit v1

    return-void

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized addListenser(Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 694
    const-class v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    monitor-exit v1

    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private closeLoginActivity()V
    .locals 2

    .prologue
    .line 838
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 839
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 840
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x7c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 841
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 845
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    if-eqz v1, :cond_1

    .line 846
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->dismiss()V

    .line 848
    :cond_1
    return-void
.end method

.method public static failed(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 679
    sget-object v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 682
    return-void

    .line 679
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;

    .line 680
    .local v0, tmp:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;
    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;->failed(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static finishGettingSN(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 650
    sget-object v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->afterLoginOperationCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 653
    return-void

    .line 650
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;

    .line 651
    .local v0, tmp:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;
    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;->finishGettingSN(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getSNFailPrompt(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 174
    sparse-switch p1, :sswitch_data_0

    .line 188
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070753

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 191
    :goto_0
    :sswitch_0
    return-void

    .line 176
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070635

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 179
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070756

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 185
    :sswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070754

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_1
        0x1f4 -> :sswitch_3
        0x295 -> :sswitch_2
        0x296 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isLogin(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 782
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, token:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static declared-synchronized logout(Ljava/lang/Object;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 688
    const-class v2, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 691
    monitor-exit v2

    return-void

    .line 688
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;

    .line 689
    .local v0, tmp:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;
    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;->logout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 688
    .end local v0           #tmp:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized removeGetSNInfoListenser(Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 640
    const-class v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->afterLoginOperationCallback:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    monitor-exit v1

    return-void

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeListenser(Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 698
    const-class v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    monitor-exit v1

    return-void

    .line 698
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendClientVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    .locals 10
    .parameter "serialNo"
    .parameter "versionType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 797
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "seria_no_product_type"

    invoke-static {v8, v9}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 800
    .local v6, softName:Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 801
    .local v7, version:Ljava/lang/String;
    const/4 v5, 0x0

    .line 802
    .local v5, sendClientVersionResponse:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    const-string/jumbo v8, "1"

    if-ne p2, v8, :cond_0

    .line 804
    :try_start_0
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, packageName:Ljava/lang/String;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 806
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v8, "2"

    if-ne p2, v8, :cond_1

    .line 813
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v4

    .line 814
    .local v4, path:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/entity/DPUSoftInfo;

    move-result-object v0

    .line 816
    .local v0, dpuSoftInfo:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    if-eqz v0, :cond_1

    .line 817
    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->getDownloadSersion()Ljava/lang/String;

    move-result-object v7

    .line 821
    .end local v0           #dpuSoftInfo:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    .end local v4           #path:Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "4"

    if-ne p2, v8, :cond_2

    .line 822
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v4

    .line 823
    .restart local v4       #path:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/entity/DPUSoftInfo;

    move-result-object v0

    .line 825
    .restart local v0       #dpuSoftInfo:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    if-eqz v0, :cond_2

    .line 826
    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->getBootVersion()Ljava/lang/String;

    move-result-object v7

    .line 830
    .end local v0           #dpuSoftInfo:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    .end local v4           #path:Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, ""

    if-eq v7, v8, :cond_3

    .line 831
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-virtual {v8, p1, p2, v6, v7}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->sendClientVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;

    move-result-object v5

    .line 833
    :cond_3
    return-object v5

    .line 807
    :catch_0
    move-exception v1

    .line 808
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startGettingSN(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 644
    sget-object v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->afterLoginOperationCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 647
    return-void

    .line 644
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;

    .line 645
    .local v0, tmp:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;
    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;->startGettingSN(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static success(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 670
    sget-object v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 673
    return-void

    .line 670
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;

    .line 671
    .local v0, tmp:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;
    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateSNDataLoginFailed()V
    .locals 4

    .prologue
    .line 430
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 431
    .local v0, allSerialNoListInTable:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 434
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 435
    return-void

    .line 431
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 432
    .local v1, serialNumber:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private updateSNGetSerialNoFailed()V
    .locals 4

    .prologue
    .line 437
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 438
    .local v0, allSerialNoListInTable:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 441
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 442
    return-void

    .line 438
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 439
    .local v1, serialNumber:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private updateSerialNumber()V
    .locals 18

    .prologue
    .line 444
    const-string/jumbo v15, ""

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    .line 445
    const/4 v7, 0x0

    .line 446
    .local v7, isMineConnector:Z
    const/4 v4, 0x0

    .line 449
    .local v4, entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "serialNo"

    const-string/jumbo v17, ""

    invoke-virtual/range {v15 .. v17}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 451
    .local v8, preSerialNO:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->loadAll()Ljava/util/List;

    move-result-object v1

    .line 452
    .local v1, allSerialNoListInTable:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_4

    .line 456
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v15, v1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 459
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 460
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "preSerialNo"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "need_refresh"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 464
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "serialNo"

    const-string/jumbo v17, ""

    invoke-virtual/range {v15 .. v17}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "if_auto_login"

    const-string/jumbo v17, "0"

    invoke-virtual/range {v15 .. v17}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isRegisterLogin:Z

    if-nez v15, :cond_2

    .line 468
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v16, 0x7f0706d6

    invoke-static/range {v15 .. v16}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 526
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "need_refresh"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 527
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v15, "softs_updated"

    invoke-direct {v6, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 530
    .end local v6           #intent:Landroid/content/Intent;
    :cond_3
    return-void

    .line 452
    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 453
    .local v14, serialNumber:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 454
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 471
    .end local v14           #serialNumber:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "serialNo"

    invoke-virtual/range {v15 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, currentSerialNo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_9

    .line 481
    :goto_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_2

    .line 482
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;

    .line 483
    .local v2, bean:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v13

    .line 484
    .local v13, serialNo:Ljava/lang/String;
    new-instance v4, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .end local v4           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-direct {v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;-><init>()V

    .line 485
    .restart local v4       #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "user_id"

    invoke-virtual/range {v15 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setCc(Ljava/lang/String;)V

    .line 486
    if-nez v7, :cond_b

    .line 487
    if-nez v5, :cond_a

    .line 488
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "serialNo"

    invoke-virtual/range {v15 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 490
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    .line 491
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "need_refresh"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 492
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "serialNo"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_7
    :goto_3
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 506
    invoke-virtual {v4, v13}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setSerialNo(Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v10

    .line 508
    .local v10, qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    sget-object v15, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v15, v13}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Lde/greenrobot/dao/query/WhereCondition;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 509
    invoke-virtual {v10}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v11

    .line 510
    .local v11, queryResult:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    if-eqz v11, :cond_8

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 511
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v15, v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->insert(Ljava/lang/Object;)J

    .line 518
    :goto_4
    new-instance v12, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 519
    .local v12, registAndLoadInfo:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    invoke-virtual {v12, v15}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setUserName(Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mPassword:Ljava/lang/String;

    invoke-virtual {v12, v15}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setPassWord(Ljava/lang/String;)V

    .line 521
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setRegisted(Z)V

    .line 522
    invoke-virtual {v12}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->sava()V

    .line 481
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 472
    .end local v2           #bean:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    .end local v5           #i:I
    .end local v10           #qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .end local v11           #queryResult:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .end local v12           #registAndLoadInfo:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    .end local v13           #serialNo:Ljava/lang/String;
    :cond_9
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;

    .line 473
    .local v9, productDTO:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v13

    .line 474
    .restart local v13       #serialNo:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 475
    const/4 v7, 0x1

    .line 476
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    goto/16 :goto_1

    .line 495
    .end local v9           #productDTO:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    .restart local v2       #bean:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    .restart local v5       #i:I
    :cond_a
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .line 498
    :cond_b
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 499
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .line 501
    :cond_c
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .line 513
    .restart local v10       #qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .restart local v11       #queryResult:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    :cond_d
    const/4 v15, 0x0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getId()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setId(Ljava/lang/Long;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v15, v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->update(Ljava/lang/Object;)V

    goto :goto_4
.end method


# virtual methods
.method public Login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "username"
    .parameter "password"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    .line 594
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mPassword:Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f07062f

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 607
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070630

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 606
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto :goto_0
.end method

.method public Logout()V
    .locals 4

    .prologue
    .line 702
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 704
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_state"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "if_auto_login"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "token"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_password"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "USER_PUBLIC_ID"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "USER_PUBLIC_NAME"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "logout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 716
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->logout(Ljava/lang/Object;)V

    .line 717
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v2, 0x7f07068b

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 718
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 719
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->logoutIM()V

    .line 720
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->updateSNDataLoginFailed()V

    .line 721
    return-void
.end method

.method public doInBackground(I)Ljava/lang/Object;
    .locals 14
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 195
    packed-switch p1, :pswitch_data_0

    .line 254
    :pswitch_0
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->doInBackground(I)Ljava/lang/Object;

    move-result-object v9

    :goto_0
    return-object v9

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isLogin(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->showToast:Z

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "{REQ_LOGIN_CODE_START}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mPassword:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "0"

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;

    move-result-object v9

    .line 200
    .local v9, result:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    goto :goto_0

    .line 204
    .end local v9           #result:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "iSGetSerialNumberFailed"

    invoke-virtual {v0, v1, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "{REQ_SERIALNUMBER_CODE_START}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->startGettingSN(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "seria_no_product_type"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->productType:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->productType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getRegisteredProductsForPad(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;

    move-result-object v8

    .local v8, res:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    move-object v9, v8

    .line 210
    goto/16 :goto_0

    .line 213
    .end local v8           #res:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "{REQ_GETPUBLICID_CODE_START}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 215
    .local v13, user_id:Ljava/lang/String;
    const/4 v7, 0x0

    .line 217
    .local v7, pidBytResponse:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->pidByt(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_1
    move-object v9, v7

    .line 221
    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v6

    .line 219
    .local v6, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v6}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_1

    .line 224
    .end local v6           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v7           #pidBytResponse:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    .end local v13           #user_id:Ljava/lang/String;
    :pswitch_4
    const/4 v12, 0x0

    .line 226
    .local v12, sendClientVersionResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :try_start_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->sendClientVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :try_end_1
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    :goto_2
    move-object v9, v12

    .line 230
    goto/16 :goto_0

    .line 227
    :catch_1
    move-exception v6

    .line 228
    .restart local v6       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v6}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_2

    .line 233
    .end local v6           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v12           #sendClientVersionResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :pswitch_5
    const/4 v11, 0x0

    .line 235
    .local v11, sendClientVersionDownloadBinResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :try_start_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->sendClientVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :try_end_2
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    :goto_3
    move-object v9, v11

    .line 239
    goto/16 :goto_0

    .line 236
    :catch_2
    move-exception v6

    .line 237
    .restart local v6       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v6}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_3

    .line 241
    .end local v6           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v11           #sendClientVersionDownloadBinResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :pswitch_6
    const/4 v10, 0x0

    .line 243
    .local v10, sendClientVersionBootResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :try_start_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    const-string/jumbo v1, "4"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->sendClientVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :try_end_3
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    :goto_4
    move-object v9, v10

    .line 247
    goto/16 :goto_0

    .line 244
    :catch_3
    move-exception v6

    .line 245
    .restart local v6       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v6}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_4

    .line 195
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public getRegisteredConnector()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 611
    const/16 v0, 0x1f6

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    .line 612
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 7
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 533
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->onFailure(IILjava/lang/Object;)V

    .line 534
    packed-switch p1, :pswitch_data_0

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 536
    :pswitch_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 537
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->updateSNDataLoginFailed()V

    .line 538
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 539
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 540
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x7b

    iput v3, v1, Landroid/os/Message;->what:I

    .line 541
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 542
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 545
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "logout"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 547
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "login_state"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "token"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->loginInfo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "is_golo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 552
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->loginInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->loginIM(Ljava/lang/String;)V

    .line 553
    const/16 v3, 0x1fa

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    .line 555
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "serialNo"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, preSerialNO:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 557
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "preSerialNo"

    invoke-virtual {v3, v4, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "need_refresh"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 559
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "serialNo"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "if_auto_login"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->updateSNGetSerialNoFailed()V

    .line 565
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->finishGettingSN(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 568
    .end local v2           #preSerialNO:Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 569
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->failed(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 572
    :pswitch_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 573
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 574
    const/16 v3, 0x1f9

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 578
    :pswitch_4
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 579
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 580
    const/16 v3, 0x1f8

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 584
    :pswitch_5
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 587
    :pswitch_6
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 19
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 259
    packed-switch p1, :pswitch_data_0

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 261
    :pswitch_0
    if-eqz p2, :cond_4

    move-object/from16 v11, p2

    .line 262
    check-cast v11, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;

    .line 263
    .local v11, res:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    if-eqz v14, :cond_1

    .line 264
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 265
    .local v5, msg:Landroid/os/Message;
    const/16 v14, 0x7b

    iput v14, v5, Landroid/os/Message;->what:I

    .line 266
    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getCode()I

    move-result v14

    iput v14, v5, Landroid/os/Message;->arg1:I

    .line 267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    invoke-virtual {v14, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    .end local v5           #msg:Landroid/os/Message;
    :cond_1
    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isSuccess(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 273
    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/LoginData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->getUser()Lcom/cnlaunch/x431pro/module/user/model/User;

    move-result-object v13

    .line 274
    .local v13, user:Lcom/cnlaunch/x431pro/module/user/model/User;
    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/LoginData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->getToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/cnlaunch/x431pro/module/user/model/User;->setToken(Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    invoke-virtual {v14, v13}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/Object;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "login_username"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "login_password"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mPassword:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "login_state"

    const-string/jumbo v16, "1"

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "if_auto_login"

    const-string/jumbo v16, "1"

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->UsernameList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->UsernameList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mPassword:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->USERNAMELIST:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->UsernameList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->StringList2String(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->showToast:Z

    if-nez v14, :cond_3

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v15, 0x7f07062d

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 294
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v14, "login"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v3, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, "{REQ_LOGIN_CODE_END}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/LoginData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->getUser()Lcom/cnlaunch/x431pro/module/user/model/User;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/x431pro/module/user/model/User;->getUser_id()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-virtual {v14, v11}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->BeanTojson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->loginInfo:Ljava/lang/String;
    :try_end_1
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_1 .. :try_end_1} :catch_1

    .line 305
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->closeLoginActivity()V

    .line 308
    const/16 v14, 0x1f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    .line 314
    .end local v3           #intent:Landroid/content/Intent;
    .end local v11           #res:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    .end local v13           #user:Lcom/cnlaunch/x431pro/module/user/model/User;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 286
    .restart local v11       #res:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    .restart local v13       #user:Lcom/cnlaunch/x431pro/module/user/model/User;
    :catch_0
    move-exception v2

    .line 287
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 300
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 301
    .local v2, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_2

    .line 310
    .end local v2           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v13           #user:Lcom/cnlaunch/x431pro/module/user/model/User;
    :cond_5
    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->LoginFailPrompt(I)V

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->updateSNDataLoginFailed()V

    goto :goto_3

    .line 317
    .end local v11           #res:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    :pswitch_1
    if-eqz p2, :cond_6

    move-object/from16 v10, p2

    .line 318
    check-cast v10, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;

    .line 319
    .local v10, registeredProductsResponse:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    if-eqz v10, :cond_6

    .line 320
    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isSuccess(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 322
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, "{REQ_SERIALNUMBER_CODE_SUCCESS}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getProductDTOs()Ljava/util/List;

    move-result-object v7

    .line 325
    .local v7, productDTOList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;>;"
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 326
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 335
    .end local v7           #productDTOList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;>;"
    .end local v10           #registeredProductsResponse:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    :cond_6
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->updateSerialNumber()V

    .line 336
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, "{REQ_SERIALNUMBER_CODE_END}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v14, "login_change_serialno"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v4, intent2:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 342
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->finishGettingSN(Ljava/lang/Object;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->loginInfo:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "is_golo"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 345
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->loginInfo:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->loginIM(Ljava/lang/String;)V

    .line 346
    const/16 v14, 0x1fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 329
    .end local v4           #intent2:Landroid/content/Intent;
    .restart local v10       #registeredProductsResponse:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    :cond_7
    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->getSNFailPrompt(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "registeredProductsResponse.getCode()="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getCode()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "iSGetSerialNumberFailed"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 347
    .end local v10           #registeredProductsResponse:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    .restart local v4       #intent2:Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 348
    const/16 v14, 0x1f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 354
    .end local v4           #intent2:Landroid/content/Intent;
    :pswitch_2
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, "{REQ_GETPUBLICID_CODE_SUCCESS}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    if-eqz p2, :cond_d

    move-object/from16 v6, p2

    .line 356
    check-cast v6, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;

    .line 357
    .local v6, pidBytResponse:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    move-result-object v1

    .line 358
    .local v1, data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;
    if-eqz v1, :cond_b

    .line 359
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->getPub_id()Ljava/lang/String;

    move-result-object v8

    .line 360
    .local v8, pub_id:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->getPub_name()Ljava/lang/String;

    move-result-object v9

    .line 361
    .local v9, pub_name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string/jumbo v14, "null"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 362
    :cond_9
    move-object v9, v8

    .line 364
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "pub_id:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", pub_name:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    const-string/jumbo v14, "null"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "USER_PUBLIC_ID"

    invoke-virtual {v14, v15, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "USER_PUBLIC_NAME"

    invoke-virtual {v14, v15, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .end local v8           #pub_id:Ljava/lang/String;
    .end local v9           #pub_name:Ljava/lang/String;
    :cond_b
    :goto_5
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->success(Ljava/lang/Object;)V

    .line 377
    .end local v1           #data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;
    .end local v6           #pidBytResponse:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    :goto_6
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, "{REQ_GETPUBLICID_CODE_END}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 380
    const/16 v14, 0x1f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 369
    .restart local v1       #data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;
    .restart local v6       #pidBytResponse:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    .restart local v8       #pub_id:Ljava/lang/String;
    .restart local v9       #pub_name:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "USER_PUBLIC_ID"

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "USER_PUBLIC_NAME"

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 375
    .end local v1           #data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;
    .end local v6           #pidBytResponse:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    .end local v8           #pub_id:Ljava/lang/String;
    .end local v9           #pub_name:Ljava/lang/String;
    :cond_d
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->failed(Ljava/lang/Object;)V

    goto :goto_6

    .line 384
    :pswitch_3
    if-eqz p2, :cond_e

    move-object/from16 v12, p2

    .line 385
    check-cast v12, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;

    .line 386
    .local v12, sendResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    invoke-virtual {v12}, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isSuccess(I)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 388
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, "{REQ_SENDCLIIENTVERSION_APP_CODE}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    .end local v12           #sendResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 392
    const/16 v14, 0x1f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 396
    :pswitch_4
    if-eqz p2, :cond_f

    move-object/from16 v12, p2

    .line 397
    check-cast v12, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;

    .line 398
    .restart local v12       #sendResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    invoke-virtual {v12}, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isSuccess(I)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 400
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, "{REQ_SENDCLIIENTVERSION_DOWNLOADBIN_CODE}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    .end local v12           #sendResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 404
    const/16 v14, 0x1f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 408
    :pswitch_5
    if-eqz p2, :cond_0

    move-object/from16 v12, p2

    .line 409
    check-cast v12, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;

    .line 410
    .restart local v12       #sendResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    invoke-virtual {v12}, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isSuccess(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 412
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->tag:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, "{REQ_SENDCLIIENTVERSION_BOOT_CODE}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 417
    .end local v12           #sendResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "login_state"

    const-string/jumbo v16, "0"

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v13, Lcom/cnlaunch/x431pro/module/user/model/User;

    invoke-direct {v13}, Lcom/cnlaunch/x431pro/module/user/model/User;-><init>()V

    .line 419
    .restart local v13       #user:Lcom/cnlaunch/x431pro/module/user/model/User;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    invoke-virtual {v14, v13}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/Object;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "if_auto_login"

    const-string/jumbo v16, "0"

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v14, "logout"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .restart local v3       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v15, 0x7f07068b

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public reLogin()V
    .locals 3

    .prologue
    .line 616
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "login_username"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    .line 617
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "login_password"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mPassword:Ljava/lang/String;

    .line 618
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 619
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    .line 620
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 786
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    .line 787
    return-void
.end method

.method public setRegisterLogin(Z)V
    .locals 0
    .parameter "isRegisterLogin"

    .prologue
    .line 852
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isRegisterLogin:Z

    .line 853
    return-void
.end method

.method public showLoginConflictDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 725
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    .line 726
    const v2, 0x7f070692

    .line 727
    const v3, 0x7f070693

    .line 725
    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;II)V

    .line 728
    .local v0, loginConflictDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const v1, 0x7f070044

    .line 729
    new-instance v2, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;-><init>(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;)V

    .line 728
    invoke-virtual {v0, v1, v4, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 737
    const v1, 0x7f070042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 738
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 739
    return-void
.end method

.method public showLoginDialog()Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;
    .locals 4

    .prologue
    .line 744
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_state"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "logout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 752
    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$3;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$3;-><init>(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    .line 776
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->setButtonBackground(I)V

    .line 777
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->show()V

    .line 778
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    return-object v1
.end method
