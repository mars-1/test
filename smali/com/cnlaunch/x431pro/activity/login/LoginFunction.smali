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
    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->afterLoginOperationCallback:Ljava/util/List;

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 104
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

    .line 105
    new-instance v2, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 106
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 107
    new-instance v2, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    .line 108
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    .line 109
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v3, "serialNo_Prefix"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNo_Prefix:Ljava/lang/String;

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    .line 112
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isRegisterLogin:Z

    .line 113
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->USERNAMELIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, UsernameString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    :try_start_0
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->String2StringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->UsernameList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/io/StreamCorruptedException;
    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v1           #e:Ljava/io/StreamCorruptedException;
    :catch_1
    move-exception v1

    .line 122
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 124
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private LoginFailPrompt(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 135
    sparse-switch p1, :sswitch_data_0

    .line 149
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070630

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 152
    :goto_0
    return-void

    .line 137
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070637

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 140
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070638

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 143
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070639

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 146
    :sswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f07063a

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 135
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
    .line 630
    const-class v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->afterLoginOperationCallback:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    monitor-exit v1

    return-void

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized addListenser(Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 685
    const-class v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    monitor-exit v1

    return-void

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private closeLoginActivity()V
    .locals 2

    .prologue
    .line 826
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 827
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 828
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x7c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 829
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 833
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    if-eqz v1, :cond_1

    .line 834
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->dismiss()V

    .line 836
    :cond_1
    return-void
.end method

.method public static failed(Ljava/lang/Object;)V
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
    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;->failed(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static finishGettingSN(Ljava/lang/Object;)V
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
    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;->finishGettingSN(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getSNFailPrompt(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 160
    sparse-switch p1, :sswitch_data_0

    .line 174
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070755

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 177
    :goto_0
    :sswitch_0
    return-void

    .line 162
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070637

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 165
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070758

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 171
    :sswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070756

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 160
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
    .line 770
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, token:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static declared-synchronized logout(Ljava/lang/Object;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 679
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

    .line 682
    monitor-exit v2

    return-void

    .line 679
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;

    .line 680
    .local v0, tmp:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;
    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;->logout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 679
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
    .line 634
    const-class v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->afterLoginOperationCallback:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    monitor-exit v1

    return-void

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeListenser(Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 689
    const-class v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    monitor-exit v1

    return-void

    .line 689
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
    .line 785
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "seria_no_product_type"

    invoke-static {v8, v9}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 788
    .local v6, softName:Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 789
    .local v7, version:Ljava/lang/String;
    const/4 v5, 0x0

    .line 790
    .local v5, sendClientVersionResponse:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    const-string/jumbo v8, "1"

    if-ne p2, v8, :cond_0

    .line 792
    :try_start_0
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 793
    .local v3, packageName:Ljava/lang/String;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 794
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v8, "2"

    if-ne p2, v8, :cond_1

    .line 801
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v4

    .line 802
    .local v4, path:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/entity/DPUSoftInfo;

    move-result-object v0

    .line 804
    .local v0, dpuSoftInfo:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    if-eqz v0, :cond_1

    .line 805
    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->getDownloadSersion()Ljava/lang/String;

    move-result-object v7

    .line 809
    .end local v0           #dpuSoftInfo:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    .end local v4           #path:Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "4"

    if-ne p2, v8, :cond_2

    .line 810
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v4

    .line 811
    .restart local v4       #path:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/entity/DPUSoftInfo;

    move-result-object v0

    .line 813
    .restart local v0       #dpuSoftInfo:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    if-eqz v0, :cond_2

    .line 814
    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->getBootVersion()Ljava/lang/String;

    move-result-object v7

    .line 818
    .end local v0           #dpuSoftInfo:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    .end local v4           #path:Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, ""

    if-eq v7, v8, :cond_3

    .line 819
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-virtual {v8, p1, p2, v6, v7}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->sendClientVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;

    move-result-object v5

    .line 821
    :cond_3
    return-object v5

    .line 795
    :catch_0
    move-exception v1

    .line 796
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startGettingSN(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 638
    sget-object v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->afterLoginOperationCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    return-void

    .line 638
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;

    .line 639
    .local v0, tmp:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;
    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;->startGettingSN(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static success(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 661
    sget-object v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 664
    return-void

    .line 661
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;

    .line 662
    .local v0, tmp:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;
    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateSNDataLoginFailed()V
    .locals 4

    .prologue
    .line 422
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 423
    .local v0, allSerialNoListInTable:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 426
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 427
    return-void

    .line 423
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 424
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

    invoke-virtual {v1, v3}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private updateSerialNumber()V
    .locals 18

    .prologue
    .line 438
    const-string/jumbo v15, ""

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    .line 439
    const/4 v7, 0x0

    .line 440
    .local v7, isMineConnector:Z
    const/4 v4, 0x0

    .line 443
    .local v4, entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "serialNo"

    const-string/jumbo v17, ""

    invoke-virtual/range {v15 .. v17}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 445
    .local v8, preSerialNO:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->loadAll()Ljava/util/List;

    move-result-object v1

    .line 446
    .local v1, allSerialNoListInTable:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_4

    .line 450
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v15, v1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 453
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 454
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "preSerialNo"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "need_refresh"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 458
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "serialNo"

    const-string/jumbo v17, ""

    invoke-virtual/range {v15 .. v17}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "if_auto_login"

    const-string/jumbo v17, "0"

    invoke-virtual/range {v15 .. v17}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isRegisterLogin:Z

    if-nez v15, :cond_2

    .line 462
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v16, 0x7f0706d8

    invoke-static/range {v15 .. v16}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 520
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "need_refresh"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 521
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v15, "softs_updated"

    invoke-direct {v6, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 524
    .end local v6           #intent:Landroid/content/Intent;
    :cond_3
    return-void

    .line 446
    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 447
    .local v14, serialNumber:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 448
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 465
    .end local v14           #serialNumber:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "serialNo"

    invoke-virtual/range {v15 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, currentSerialNo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_9

    .line 475
    :goto_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_2

    .line 476
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;

    .line 477
    .local v2, bean:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v13

    .line 478
    .local v13, serialNo:Ljava/lang/String;
    new-instance v4, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .end local v4           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-direct {v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;-><init>()V

    .line 479
    .restart local v4       #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "user_id"

    invoke-virtual/range {v15 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setCc(Ljava/lang/String;)V

    .line 480
    if-nez v7, :cond_b

    .line 481
    if-nez v5, :cond_a

    .line 482
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "serialNo"

    invoke-virtual/range {v15 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 484
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    .line 485
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "need_refresh"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 486
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v16, "serialNo"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_7
    :goto_3
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 500
    invoke-virtual {v4, v13}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setSerialNo(Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v10

    .line 502
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

    .line 503
    invoke-virtual {v10}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v11

    .line 504
    .local v11, queryResult:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    if-eqz v11, :cond_8

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 505
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v15, v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->insert(Ljava/lang/Object;)J

    .line 512
    :goto_4
    new-instance v12, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 513
    .local v12, registAndLoadInfo:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    invoke-virtual {v12, v15}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setUserName(Ljava/lang/String;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mPassword:Ljava/lang/String;

    invoke-virtual {v12, v15}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setPassWord(Ljava/lang/String;)V

    .line 515
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setRegisted(Z)V

    .line 516
    invoke-virtual {v12}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->sava()V

    .line 475
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 466
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

    .line 467
    .local v9, productDTO:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v13

    .line 468
    .restart local v13       #serialNo:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 469
    const/4 v7, 0x1

    .line 470
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    goto/16 :goto_1

    .line 489
    .end local v9           #productDTO:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    .restart local v2       #bean:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    .restart local v5       #i:I
    :cond_a
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .line 492
    :cond_b
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 493
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .line 495
    :cond_c
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .line 507
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

    .line 508
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
    .line 587
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    .line 588
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mPassword:Ljava/lang/String;

    .line 590
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070631

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 601
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f070632

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 600
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto :goto_0
.end method

.method public Logout()V
    .locals 4

    .prologue
    .line 693
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 695
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_state"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "if_auto_login"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "token"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_password"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "USER_PUBLIC_ID"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "USER_PUBLIC_NAME"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "logout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 707
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->logout(Ljava/lang/Object;)V

    .line 708
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v2, 0x7f07068d

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 709
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 710
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->logoutIM()V

    .line 711
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->updateSNDataLoginFailed()V

    .line 712
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

    .line 181
    packed-switch p1, :pswitch_data_0

    .line 240
    :pswitch_0
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->doInBackground(I)Ljava/lang/Object;

    move-result-object v9

    :goto_0
    return-object v9

    .line 183
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isLogin(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->showToast:Z

    .line 184
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

    .line 185
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

    .line 186
    .local v9, result:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    goto :goto_0

    .line 190
    .end local v9           #result:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "iSGetSerialNumberFailed"

    invoke-virtual {v0, v1, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 191
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

    .line 193
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->startGettingSN(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "seria_no_product_type"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->productType:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->productType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getRegisteredProductsForPad(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;

    move-result-object v8

    .local v8, res:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    move-object v9, v8

    .line 196
    goto/16 :goto_0

    .line 199
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

    .line 200
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 201
    .local v13, user_id:Ljava/lang/String;
    const/4 v7, 0x0

    .line 203
    .local v7, pidBytResponse:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->pidByt(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_1
    move-object v9, v7

    .line 207
    goto/16 :goto_0

    .line 204
    :catch_0
    move-exception v6

    .line 205
    .local v6, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v6}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_1

    .line 210
    .end local v6           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v7           #pidBytResponse:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    .end local v13           #user_id:Ljava/lang/String;
    :pswitch_4
    const/4 v12, 0x0

    .line 212
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

    .line 216
    goto/16 :goto_0

    .line 213
    :catch_1
    move-exception v6

    .line 214
    .restart local v6       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v6}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_2

    .line 219
    .end local v6           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v12           #sendClientVersionResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :pswitch_5
    const/4 v11, 0x0

    .line 221
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

    .line 225
    goto/16 :goto_0

    .line 222
    :catch_2
    move-exception v6

    .line 223
    .restart local v6       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v6}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_3

    .line 227
    .end local v6           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v11           #sendClientVersionDownloadBinResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :pswitch_6
    const/4 v10, 0x0

    .line 229
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

    .line 233
    goto/16 :goto_0

    .line 230
    :catch_3
    move-exception v6

    .line 231
    .restart local v6       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v6}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_4

    .line 181
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
    .line 604
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 605
    const/16 v0, 0x1f6

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    .line 606
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 7
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 527
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->onFailure(IILjava/lang/Object;)V

    .line 528
    packed-switch p1, :pswitch_data_0

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 530
    :pswitch_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 531
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->updateSNDataLoginFailed()V

    .line 532
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 533
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 534
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x7b

    iput v3, v1, Landroid/os/Message;->what:I

    .line 535
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 536
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 539
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "logout"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 541
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "login_state"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "token"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 545
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

    .line 546
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->loginInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->loginIM(Ljava/lang/String;)V

    .line 547
    const/16 v3, 0x1fa

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    .line 549
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "serialNo"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, preSerialNO:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 551
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "preSerialNo"

    invoke-virtual {v3, v4, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "need_refresh"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 553
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "serialNo"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "if_auto_login"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->updateSNGetSerialNoFailed()V

    .line 559
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->finishGettingSN(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 562
    .end local v2           #preSerialNO:Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 563
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->failed(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 566
    :pswitch_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 567
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 568
    const/16 v3, 0x1f9

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 572
    :pswitch_4
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 573
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 574
    const/16 v3, 0x1f8

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 578
    :pswitch_5
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 581
    :pswitch_6
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 528
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
    .line 245
    packed-switch p1, :pswitch_data_0

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 247
    :pswitch_0
    if-eqz p2, :cond_4

    move-object/from16 v11, p2

    .line 248
    check-cast v11, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;

    .line 249
    .local v11, res:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    if-eqz v14, :cond_1

    .line 250
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 251
    .local v5, msg:Landroid/os/Message;
    const/16 v14, 0x7b

    iput v14, v5, Landroid/os/Message;->what:I

    .line 252
    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getCode()I

    move-result v14

    iput v14, v5, Landroid/os/Message;->arg1:I

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    invoke-virtual {v14, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    .end local v5           #msg:Landroid/os/Message;
    :cond_1
    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isSuccess(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 259
    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/LoginData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->getUser()Lcom/cnlaunch/x431pro/module/user/model/User;

    move-result-object v13

    .line 260
    .local v13, user:Lcom/cnlaunch/x431pro/module/user/model/User;
    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/LoginData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->getToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/cnlaunch/x431pro/module/user/model/User;->setToken(Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    invoke-virtual {v14, v13}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/Object;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "login_username"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "login_password"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mPassword:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "login_state"

    const-string/jumbo v16, "1"

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "if_auto_login"

    const-string/jumbo v16, "1"

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mPassword:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->UsernameList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->UsernameList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
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

    .line 279
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->showToast:Z

    if-nez v14, :cond_3

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v15, 0x7f07062f

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 282
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v14, "login"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v3, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
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

    .line 287
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-virtual {v14, v11}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->BeanTojson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->loginInfo:Ljava/lang/String;
    :try_end_1
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->closeLoginActivity()V

    .line 296
    const/16 v14, 0x1f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    .line 302
    .end local v3           #intent:Landroid/content/Intent;
    .end local v11           #res:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    .end local v13           #user:Lcom/cnlaunch/x431pro/module/user/model/User;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 273
    .restart local v11       #res:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    .restart local v13       #user:Lcom/cnlaunch/x431pro/module/user/model/User;
    :catch_0
    move-exception v2

    .line 274
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 288
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 289
    .local v2, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_2

    .line 298
    .end local v2           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v13           #user:Lcom/cnlaunch/x431pro/module/user/model/User;
    :cond_5
    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->LoginFailPrompt(I)V

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->updateSNDataLoginFailed()V

    goto :goto_3

    .line 306
    .end local v11           #res:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    :pswitch_1
    if-eqz p2, :cond_6

    move-object/from16 v10, p2

    .line 307
    check-cast v10, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;

    .line 308
    .local v10, registeredProductsResponse:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    if-eqz v10, :cond_6

    .line 309
    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isSuccess(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 311
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

    .line 313
    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getProductDTOs()Ljava/util/List;

    move-result-object v7

    .line 314
    .local v7, productDTOList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;>;"
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->allProductDTOList:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 324
    .end local v7           #productDTOList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;>;"
    .end local v10           #registeredProductsResponse:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    :cond_6
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->updateSerialNumber()V

    .line 325
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

    .line 328
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v14, "login_change_serialno"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v4, intent2:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 331
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->finishGettingSN(Ljava/lang/Object;)V

    .line 333
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

    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->loginInfo:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->loginIM(Ljava/lang/String;)V

    .line 335
    const/16 v14, 0x1fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 318
    .end local v4           #intent2:Landroid/content/Intent;
    .restart local v10       #registeredProductsResponse:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    :cond_7
    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->getSNFailPrompt(I)V

    .line 319
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

    .line 320
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "iSGetSerialNumberFailed"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 336
    .end local v10           #registeredProductsResponse:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    .restart local v4       #intent2:Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 337
    const/16 v14, 0x1f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 342
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

    .line 343
    if-eqz p2, :cond_d

    move-object/from16 v6, p2

    .line 344
    check-cast v6, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;

    .line 345
    .local v6, pidBytResponse:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    move-result-object v1

    .line 346
    .local v1, data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;
    if-eqz v1, :cond_b

    .line 347
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->getPub_id()Ljava/lang/String;

    move-result-object v8

    .line 348
    .local v8, pub_id:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->getPub_name()Ljava/lang/String;

    move-result-object v9

    .line 349
    .local v9, pub_name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string/jumbo v14, "null"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 350
    :cond_9
    move-object v9, v8

    .line 352
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

    .line 353
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    const-string/jumbo v14, "null"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 354
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "USER_PUBLIC_ID"

    invoke-virtual {v14, v15, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "USER_PUBLIC_NAME"

    invoke-virtual {v14, v15, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v8           #pub_id:Ljava/lang/String;
    .end local v9           #pub_name:Ljava/lang/String;
    :cond_b
    :goto_5
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->success(Ljava/lang/Object;)V

    .line 365
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

    .line 367
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 368
    const/16 v14, 0x1f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 357
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

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "USER_PUBLIC_NAME"

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 363
    .end local v1           #data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;
    .end local v6           #pidBytResponse:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    .end local v8           #pub_id:Ljava/lang/String;
    .end local v9           #pub_name:Ljava/lang/String;
    :cond_d
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->failed(Ljava/lang/Object;)V

    goto :goto_6

    .line 373
    :pswitch_3
    if-eqz p2, :cond_e

    move-object/from16 v12, p2

    .line 374
    check-cast v12, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;

    .line 375
    .local v12, sendResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    invoke-virtual {v12}, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isSuccess(I)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 377
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

    .line 380
    .end local v12           #sendResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 381
    const/16 v14, 0x1f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 386
    :pswitch_4
    if-eqz p2, :cond_f

    move-object/from16 v12, p2

    .line 387
    check-cast v12, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;

    .line 388
    .restart local v12       #sendResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    invoke-virtual {v12}, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isSuccess(I)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 390
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

    .line 393
    .end local v12           #sendResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->userConnectorSerialNo:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 394
    const/16 v14, 0x1f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    goto/16 :goto_0

    .line 399
    :pswitch_5
    if-eqz p2, :cond_0

    move-object/from16 v12, p2

    .line 400
    check-cast v12, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;

    .line 401
    .restart local v12       #sendResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    invoke-virtual {v12}, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;->getCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isSuccess(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 403
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

    .line 409
    .end local v12           #sendResult:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "login_state"

    const-string/jumbo v16, "0"

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v13, Lcom/cnlaunch/x431pro/module/user/model/User;

    invoke-direct {v13}, Lcom/cnlaunch/x431pro/module/user/model/User;-><init>()V

    .line 411
    .restart local v13       #user:Lcom/cnlaunch/x431pro/module/user/model/User;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    invoke-virtual {v14, v13}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/Object;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "if_auto_login"

    const-string/jumbo v16, "0"

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v14, "logout"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .restart local v3       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    const v15, 0x7f07068d

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 245
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
    .line 610
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "login_username"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mUsername:Ljava/lang/String;

    .line 611
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "login_password"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mPassword:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 613
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->request(I)V

    .line 614
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 774
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->handler:Landroid/os/Handler;

    .line 775
    return-void
.end method

.method public setRegisterLogin(Z)V
    .locals 0
    .parameter "isRegisterLogin"

    .prologue
    .line 840
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isRegisterLogin:Z

    .line 841
    return-void
.end method

.method public showLoginConflictDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 716
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    .line 717
    const v2, 0x7f070694

    .line 718
    const v3, 0x7f070695

    .line 716
    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;II)V

    .line 719
    .local v0, loginConflictDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const v1, 0x7f07002b

    .line 720
    new-instance v2, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$1;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;)V

    .line 719
    invoke-virtual {v0, v1, v4, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 728
    const v1, 0x7f070029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 729
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 730
    return-void
.end method

.method public showLoginDialog()Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;
    .locals 4

    .prologue
    .line 735
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_state"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "logout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 740
    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$2;-><init>(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    .line 764
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->setButtonBackground(I)V

    .line 765
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->show()V

    .line 766
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    return-object v1
.end method
