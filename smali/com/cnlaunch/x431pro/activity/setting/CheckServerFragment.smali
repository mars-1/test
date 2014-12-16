.class public Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "CheckServerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat",
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;,
        Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;,
        Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;
    }
.end annotation


# static fields
.field private static final BUFFER:I = 0x800

.field private static final tag:Ljava/lang/String;


# instance fields
.field private final REQ_CHECK_NETWORK_CODE:I

.field private final REQ_FILE_DOWNLOAD_CODE:I

.field private final REQ_GET_CONFIG_CODE:I

.field private final REQ_LOGIN_CODE:I

.field private final REQ_QUERYLATESTDIAGSOFTS_CODE:I

.field private final REQ_QUERYLATESTPUBLICSOFTS_CODE:I

.field private final REQ_SEND_LOG_INFO:I

.field private final REQ_SERIALNUMBER_CODE:I

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

.field private app_name_str:Ljava/lang/String;

.field private btn_checkserver:Landroid/widget/Button;

.field private btn_upload_log:Landroid/widget/Button;

.field private check_action:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;

.field private check_cc:Ljava/lang/String;

.field private check_configurl:Ljava/lang/String;

.field private check_configurl_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;",
            ">;"
        }
    .end annotation
.end field

.field private check_ip:Ljava/lang/String;

.field private check_lang:Ljava/lang/String;

.field private check_local_ip:Ljava/lang/String;

.field private check_network_one:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private check_network_two:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private check_password:Ljava/lang/String;

.field private check_productType:Ljava/lang/String;

.field private check_serialNo:Ljava/lang/String;

.field private check_server_download_str:Ljava/lang/String;

.field private check_server_end_str:Ljava/lang/String;

.field private check_server_failure_str:Ljava/lang/String;

.field private check_server_file_download_str:Ljava/lang/String;

.field private check_server_file_str:Ljava/lang/String;

.field private check_server_finish_str:Ljava/lang/String;

.field private check_server_login_str:Ljava/lang/String;

.field private check_server_network_str:Ljava/lang/String;

.field private check_server_str:Ljava/lang/String;

.field private check_server_submit_failure_str:Ljava/lang/String;

.field private check_server_submit_success_str:Ljava/lang/String;

.field private check_server_submiting_str:Ljava/lang/String;

.field private check_server_success_str:Ljava/lang/String;

.field private check_server_upload_str:Ljava/lang/String;

.field private check_url:Ljava/lang/String;

.field private check_username:Ljava/lang/String;

.field private comm:Lcom/cnlaunch/x431pro/utils/CommonUtils;

.field private configDB:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

.field private connFlag:Z

.field private connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

.field private country_id:Ljava/lang/String;

.field private country_lang:Ljava/lang/String;

.field private diagSoftList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;",
            ">;"
        }
    .end annotation
.end field

.field private domainStr:Ljava/lang/String;

.field private downloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;",
            ">;"
        }
    .end annotation
.end field

.field private downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

.field private listError:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;",
            ">;"
        }
    .end annotation
.end field

.field private listInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;",
            ">;"
        }
    .end annotation
.end field

.field private listSerialNo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;",
            ">;"
        }
    .end annotation
.end field

.field private logFilePath:Ljava/lang/String;

.field private packageinfo:Landroid/content/pm/PackageInfo;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private publicSoftList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;",
            ">;"
        }
    .end annotation
.end field

.field private requestUrl:Ljava/lang/String;

.field private serialNoInfo:Ljava/lang/String;

.field private serialNo_Prefix:Ljava/lang/String;

.field private serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

.field private textview_outLeft:Landroid/widget/TextView;

.field private textview_outRight:Landroid/widget/TextView;

.field private upgradeAction:Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

.field private userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

.field private verLocal:Ljava/lang/String;

.field private zipFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->tag:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 129
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->zipFilePath:Ljava/lang/String;

    .line 139
    const/16 v0, 0x4b3

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->REQ_LOGIN_CODE:I

    .line 140
    const/16 v0, 0x4b4

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->REQ_SERIALNUMBER_CODE:I

    .line 141
    const/16 v0, 0x4b5

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->REQ_CHECK_NETWORK_CODE:I

    .line 142
    const/16 v0, 0x4b6

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->REQ_FILE_DOWNLOAD_CODE:I

    .line 143
    const/16 v0, 0x4b7

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->REQ_GET_CONFIG_CODE:I

    .line 144
    const/16 v0, 0x835

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->REQ_QUERYLATESTPUBLICSOFTS_CODE:I

    .line 145
    const/16 v0, 0x836

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->REQ_QUERYLATESTDIAGSOFTS_CODE:I

    .line 146
    const/16 v0, 0x4b8

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->REQ_SEND_LOG_INFO:I

    .line 99
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_serialNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_end_str:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_upload_str:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_failure_str:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->connFlag:Z

    return-void
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_file_str:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_download_str:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_success_str:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 8

    .prologue
    .line 319
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_1

    .line 332
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 320
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 321
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 322
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 323
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 324
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 325
    .local v5, ipT:Ljava/lang/String;
    goto :goto_1

    .line 329
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    .end local v5           #ipT:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/net/SocketException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v7, "error"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 218
    const v3, 0x7f0705f1

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->setTitle(I)V

    .line 219
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020525

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 220
    new-instance v3, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 221
    new-instance v3, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    .line 222
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 223
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    .line 224
    new-instance v3, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->upgradeAction:Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

    .line 225
    new-instance v3, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_action:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;

    .line 226
    new-instance v3, Lcom/cnlaunch/x431pro/utils/CommonUtils;

    invoke-direct {v3}, Lcom/cnlaunch/x431pro/utils/CommonUtils;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->comm:Lcom/cnlaunch/x431pro/utils/CommonUtils;

    .line 227
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->configDB:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    .line 229
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    .line 230
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "serialNo_Prefix"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->serialNo_Prefix:Ljava/lang/String;

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->allProductDTOList:Ljava/util/List;

    .line 233
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c046b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    .line 234
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c046c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;

    .line 236
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    .line 240
    .local v1, isNetCon:Z
    if-nez v1, :cond_0

    .line 241
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0704df

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 242
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    iput-boolean v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->connFlag:Z

    .line 249
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c046e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outLeft:Landroid/widget/TextView;

    .line 250
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outLeft:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 254
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c046f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outRight:Landroid/widget/TextView;

    .line 255
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outRight:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 259
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;

    .line 260
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    .line 261
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_one:Ljava/util/List;

    .line 262
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_two:Ljava/util/List;

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->packageinfo:Landroid/content/pm/PackageInfo;

    .line 267
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->packageinfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->verLocal:Ljava/lang/String;

    .line 268
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->configDB:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    sget-object v4, Lcom/cnlaunch/framework/common/KeyConstant;->send_Server_Check_Log:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->requestUrl:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    .end local v2           #packageName:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;->getInstance()Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;

    move-result-object v3

    .line 276
    new-instance v4, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;Landroid/os/Looper;)V

    .line 275
    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;->addObserver(Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;)V

    .line 296
    return-void

    .line 245
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->connFlag:Z

    goto/16 :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 271
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateSerialNumber()V
    .locals 17

    .prologue
    .line 1542
    const/4 v7, 0x0

    .line 1543
    .local v7, isMineConnector:Z
    const/4 v4, 0x0

    .line 1546
    .local v4, entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->loadAll()Ljava/util/List;

    move-result-object v1

    .line 1547
    .local v1, allSerialNoListInTable:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_2

    .line 1551
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v14, v1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->allProductDTOList:Ljava/util/List;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->allProductDTOList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1554
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "serialNo"

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "need_refresh"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "if_auto_login"

    const-string/jumbo v16, "0"

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    :cond_1
    return-void

    .line 1547
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 1548
    .local v13, serialNumber:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 1549
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1561
    .end local v13           #serialNumber:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->allProductDTOList:Ljava/util/List;

    if-eqz v14, :cond_1

    .line 1562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "serialNo"

    invoke-virtual {v14, v15}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1563
    .local v3, currentSerialNo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->allProductDTOList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_6

    .line 1571
    :goto_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->allProductDTOList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_1

    .line 1572
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->allProductDTOList:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;

    .line 1573
    .local v2, bean:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v12

    .line 1574
    .local v12, serialNo:Ljava/lang/String;
    new-instance v4, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .end local v4           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-direct {v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;-><init>()V

    .line 1575
    .restart local v4       #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "user_id"

    invoke-virtual {v14, v15}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setCc(Ljava/lang/String;)V

    .line 1577
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->serialNo_Prefix:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 1571
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1563
    .end local v2           #bean:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    .end local v5           #i:I
    .end local v12           #serialNo:Ljava/lang/String;
    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;

    .line 1564
    .local v8, productDTO:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v12

    .line 1565
    .restart local v12       #serialNo:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1566
    const/4 v7, 0x1

    .line 1567
    goto :goto_1

    .line 1581
    .end local v8           #productDTO:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    .restart local v2       #bean:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    .restart local v5       #i:I
    :cond_7
    if-nez v7, :cond_c

    .line 1582
    if-nez v5, :cond_b

    .line 1583
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "serialNo"

    invoke-virtual {v14, v15}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 1585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "need_refresh"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "serialNo"

    invoke-virtual {v14, v15, v12}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    :cond_8
    :goto_4
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 1600
    invoke-virtual {v4, v12}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setSerialNo(Ljava/lang/String;)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v9

    .line 1602
    .local v9, qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    sget-object v14, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v14, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v9, v14, v15}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 1603
    invoke-virtual {v9}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v10

    .line 1604
    .local v10, queryResult:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    if-eqz v10, :cond_9

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1605
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v14, v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->insert(Ljava/lang/Object;)J

    .line 1611
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v15, "need_refresh"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1612
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v14, "softs_updated"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1613
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1617
    .end local v6           #intent:Landroid/content/Intent;
    :cond_a
    new-instance v11, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v14, v15}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1618
    .local v11, registAndLoadInfo:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_username:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setUserName(Ljava/lang/String;)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_password:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setPassWord(Ljava/lang/String;)V

    .line 1620
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->setRegisted(Z)V

    .line 1621
    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->sava()V

    goto/16 :goto_3

    .line 1589
    .end local v9           #qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .end local v10           #queryResult:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .end local v11           #registAndLoadInfo:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    :cond_b
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto :goto_4

    .line 1592
    :cond_c
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1593
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto/16 :goto_4

    .line 1595
    :cond_d
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto/16 :goto_4

    .line 1607
    .restart local v9       #qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .restart local v10       #queryResult:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    :cond_e
    const/4 v14, 0x0

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getId()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setId(Ljava/lang/Long;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v14, v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->update(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"
    .parameter "content"

    .prologue
    .line 487
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 488
    .local v1, writer:Ljava/io/FileWriter;
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v1           #writer:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelRequest(I)V
    .locals 0
    .parameter "requsetCode"

    .prologue
    .line 1629
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->cancelRequest(I)V

    .line 1630
    return-void
.end method

.method public doInBackground(I)Ljava/lang/Object;
    .locals 30
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 670
    sparse-switch p1, :sswitch_data_0

    .line 828
    invoke-super/range {p0 .. p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v24

    :goto_0
    return-object v24

    .line 675
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "isRelease"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v19

    .line 676
    .local v19, isRelease:Z
    if-eqz v19, :cond_7

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_action:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getIp()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_ip:Ljava/lang/String;

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_ip:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_action:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getIpArea(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;

    move-result-object v27

    .line 680
    .local v27, resUrl:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    if-eqz v27, :cond_0

    invoke-virtual/range {v27 .. v27}, Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 681
    invoke-virtual/range {v27 .. v27}, Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;->getData()Lcom/cnlaunch/x431pro/module/config/model/IpAreaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/config/model/IpAreaData;->getCountry_id()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_id:Ljava/lang/String;

    .line 682
    const-string/jumbo v2, "CN"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 683
    const-string/jumbo v2, "http://base.api.dbscar.com/?action=config_service.urls"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_configurl:Ljava/lang/String;

    .line 695
    .end local v27           #resUrl:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_configurl:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_configurl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_configurl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getDomainUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_url:Ljava/lang/String;

    .line 699
    :cond_1
    const-string/jumbo v2, "CN"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "TW"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 700
    :cond_2
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    const/4 v2, 0x3

    move/from16 v0, v18

    if-lt v0, v2, :cond_8

    .line 709
    :cond_3
    const/16 v18, 0x0

    :goto_3
    const/4 v2, 0x3

    move/from16 v0, v18

    if-lt v0, v2, :cond_9

    .line 739
    :cond_4
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    goto/16 :goto_0

    .line 685
    .end local v18           #i:I
    .restart local v27       #resUrl:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    :cond_5
    const-string/jumbo v2, "http://base.us.api.dbscar.com/?action=config_service.urls"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_configurl:Ljava/lang/String;

    goto :goto_1

    .line 689
    .end local v27           #resUrl:Lcom/cnlaunch/x431pro/module/config/model/GetIpAreaResponse;
    :cond_6
    const-string/jumbo v2, "http://base.us.api.dbscar.com/?action=config_service.urls"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_configurl:Ljava/lang/String;

    goto :goto_1

    .line 692
    :cond_7
    const-string/jumbo v2, "http://golo.test.x431.com:8008/dev/?action=config_service.urls"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_configurl:Ljava/lang/String;

    goto :goto_1

    .line 701
    .restart local v18       #i:I
    :cond_8
    const-string/jumbo v2, "www.baidu.com"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->pingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 702
    .local v12, check_network_one_T:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_one:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    const-string/jumbo v2, ";"

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 704
    .local v22, pos:I
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 705
    .local v29, retTag:Ljava/lang/String;
    const-string/jumbo v2, "0"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 700
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 710
    .end local v12           #check_network_one_T:Ljava/lang/String;
    .end local v22           #pos:I
    .end local v29           #retTag:Ljava/lang/String;
    :cond_9
    const-string/jumbo v2, "www.qq.com"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->pingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 711
    .local v13, check_network_two_T:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_two:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    const-string/jumbo v2, ";"

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 713
    .restart local v22       #pos:I
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 714
    .restart local v29       #retTag:Ljava/lang/String;
    const-string/jumbo v2, "0"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 709
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 720
    .end local v13           #check_network_two_T:Ljava/lang/String;
    .end local v18           #i:I
    .end local v22           #pos:I
    .end local v29           #retTag:Ljava/lang/String;
    :cond_a
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    const/4 v2, 0x3

    move/from16 v0, v18

    if-lt v0, v2, :cond_c

    .line 729
    :cond_b
    const/16 v18, 0x0

    :goto_5
    const/4 v2, 0x3

    move/from16 v0, v18

    if-ge v0, v2, :cond_4

    .line 730
    const-string/jumbo v2, "www.apple.com"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->pingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 731
    .restart local v13       #check_network_two_T:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_two:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    const-string/jumbo v2, ";"

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 733
    .restart local v22       #pos:I
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 734
    .restart local v29       #retTag:Ljava/lang/String;
    const-string/jumbo v2, "0"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 729
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 721
    .end local v13           #check_network_two_T:Ljava/lang/String;
    .end local v22           #pos:I
    .end local v29           #retTag:Ljava/lang/String;
    :cond_c
    const-string/jumbo v2, "www.google.com"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->pingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 722
    .restart local v12       #check_network_one_T:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_one:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    const-string/jumbo v2, ";"

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 724
    .restart local v22       #pos:I
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 725
    .restart local v29       #retTag:Ljava/lang/String;
    const-string/jumbo v2, "0"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 720
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 743
    .end local v12           #check_network_one_T:Ljava/lang/String;
    .end local v18           #i:I
    .end local v19           #isRelease:Z
    .end local v22           #pos:I
    .end local v29           #retTag:Ljava/lang/String;
    :sswitch_1
    new-instance v11, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;-><init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V

    .line 744
    .local v11, checkLogin:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    const-string/jumbo v2, "REQ_LOGIN_CODE"

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v2, v3}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->setStar(Ljava/lang/String;Ljava/util/Date;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_username:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_password:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "0"

    const-string/jumbo v7, ""

    invoke-virtual/range {v2 .. v7}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 751
    .end local v11           #checkLogin:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "seria_no_product_type"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_productType:Ljava/lang/String;

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_productType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getRegisteredProductsForPad(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;

    move-result-object v24

    .line 753
    .local v24, res:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    goto/16 :goto_0

    .line 757
    .end local v24           #res:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    :sswitch_3
    new-instance v10, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;-><init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V

    .line 758
    .local v10, checkGetConfig:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    const-string/jumbo v2, "REQ_GET_CONFIG_CODE"

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v2, v3}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->setStar(Ljava/lang/String;Ljava/util/Date;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_action:Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_configurl:Ljava/lang/String;

    const-string/jumbo v4, "0.0.0"

    const-string/jumbo v5, "cn"

    invoke-virtual {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/config/action/ConfigAction;->getConfigService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;

    move-result-object v28

    .local v28, response:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    move-object/from16 v24, v28

    .line 762
    goto/16 :goto_0

    .line 766
    .end local v10           #checkGetConfig:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    .end local v28           #response:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    :sswitch_4
    new-instance v14, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;-><init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V

    .line 767
    .local v14, checkdown:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    const-string/jumbo v2, "REQ_QUERYLATESTPUBLICSOFTS_CODE"

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v2, v3}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->setStar(Ljava/lang/String;Ljava/util/Date;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    const-string/jumbo v20, "1002"

    .line 771
    .local v20, lanId:Ljava/lang/String;
    const-string/jumbo v15, ""

    .line 772
    .local v15, defaultLanId:Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v21, listRet:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->configDB:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->publicsoft_download:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 776
    .local v23, publicsoftUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->configDB:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->diagsoft_download_ex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 778
    .local v16, diagsoftUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->upgradeAction:Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_serialNo:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0, v15}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->queryLatestPublicSofts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;

    move-result-object v26

    .line 779
    .local v26, resList:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    invoke-virtual/range {v26 .. v26}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;->getCode()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->isSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 780
    invoke-virtual/range {v26 .. v26}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;->getX431PadSoftList()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->publicSoftList:Ljava/util/List;

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->publicSoftList:Ljava/util/List;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->publicSoftList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->publicSoftList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11

    .line 799
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->upgradeAction:Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_cc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_serialNo:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v4, v0, v15}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->queryLatestDiagSofts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;

    move-result-object v25

    .line 800
    .local v25, res1:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    invoke-virtual/range {v25 .. v25}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;->getCode()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->isSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 801
    invoke-virtual/range {v25 .. v25}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;->getX431PadSoftList()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->diagSoftList:Ljava/util/List;

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->diagSoftList:Ljava/util/List;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->diagSoftList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->diagSoftList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13

    :cond_10
    :goto_9
    move-object/from16 v24, v21

    .line 817
    goto/16 :goto_0

    .line 782
    .end local v25           #res1:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 784
    .local v9, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setUrl(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DOWNLOAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 786
    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setType(I)V

    .line 787
    const-string/jumbo v3, "Firmware"

    invoke-virtual {v9, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setSoftName(Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 793
    .end local v9           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_12
    new-instance v17, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;-><init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V

    .line 794
    .local v17, err:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    const/16 v2, 0x835

    invoke-virtual/range {v26 .. v26}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;->getCode()I

    move-result v3

    invoke-virtual/range {v26 .. v26}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;->getMsg()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->addError(IILjava/lang/String;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 803
    .end local v17           #err:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    .restart local v25       #res1:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 805
    .restart local v9       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DEMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 806
    const/4 v3, 0x3

    invoke-virtual {v9, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setType(I)V

    .line 807
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setUrl(Ljava/lang/String;)V

    .line 808
    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 813
    .end local v9           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_14
    new-instance v17, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;-><init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V

    .line 814
    .restart local v17       #err:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    const/16 v2, 0x836

    invoke-virtual/range {v25 .. v25}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;->getCode()I

    move-result v3

    invoke-virtual/range {v25 .. v25}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;->getMsg()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->addError(IILjava/lang/String;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 821
    .end local v14           #checkdown:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    .end local v15           #defaultLanId:Ljava/lang/String;
    .end local v16           #diagsoftUrl:Ljava/lang/String;
    .end local v17           #err:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    .end local v20           #lanId:Ljava/lang/String;
    .end local v21           #listRet:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    .end local v23           #publicsoftUrl:Ljava/lang/String;
    .end local v25           #res1:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    .end local v26           #resList:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    :sswitch_5
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    goto/16 :goto_0

    .line 825
    :sswitch_6
    new-instance v8, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;-><init>(Landroid/content/Context;)V

    .line 826
    .local v8, action:Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_serialNo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->zipFilePath:Ljava/lang/String;

    invoke-virtual {v8, v2, v3}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;->sendServerCheckLog(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/setting/model/UploadServerCheckLogResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 670
    :sswitch_data_0
    .sparse-switch
        0x4b3 -> :sswitch_1
        0x4b4 -> :sswitch_2
        0x4b5 -> :sswitch_0
        0x4b6 -> :sswitch_5
        0x4b7 -> :sswitch_3
        0x4b8 -> :sswitch_6
        0x835 -> :sswitch_4
    .end sparse-switch
.end method

.method public getDomainUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "requestUrl"

    .prologue
    const/4 v6, 0x0

    .line 566
    const-string/jumbo v0, ""

    .line 568
    .local v0, domainUrl:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 569
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, temp1:Ljava/lang/String;
    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 571
    .local v1, pos2:I
    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, temp2:Ljava/lang/String;
    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 573
    .local v2, pos3:I
    if-lez v2, :cond_1

    .line 574
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 579
    .end local v1           #pos2:I
    .end local v2           #pos3:I
    .end local v3           #temp1:Ljava/lang/String;
    .end local v4           #temp2:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 576
    .restart local v1       #pos2:I
    .restart local v2       #pos3:I
    .restart local v3       #temp1:Ljava/lang/String;
    .restart local v4       #temp2:Ljava/lang/String;
    :cond_1
    move-object v0, v4

    goto :goto_0
.end method

.method public getDownloadFileName(Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)Ljava/lang/String;
    .locals 5
    .parameter "bean"

    .prologue
    .line 343
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, versionNo:Ljava/lang/String;
    const-string/jumbo v3, "."

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getLanId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, filaName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .local v1, nameBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 350
    const-string/jumbo v3, ".apk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 352
    const-string/jumbo v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 354
    const-string/jumbo v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public initList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 301
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->publicSoftList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->publicSoftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_8

    .line 303
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->diagSoftList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->diagSoftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9

    .line 305
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    .line 307
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    .line 309
    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_one:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_one:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_c

    .line 311
    :cond_5
    :goto_6
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_two:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_two:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_d

    .line 313
    :cond_6
    return-void

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 302
    :cond_8
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->publicSoftList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 304
    :cond_9
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->diagSoftList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 306
    :cond_a
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 308
    :cond_b
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 310
    :cond_c
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_one:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 312
    :cond_d
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_two:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6
.end method

.method public initTextview()V
    .locals 4

    .prologue
    .line 1634
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1635
    .local v1, screenWidth:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1637
    .local v0, screenHeight:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outLeft:Landroid/widget/TextView;

    const/16 v3, 0x258

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 1638
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 187
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->initViews()V

    .line 188
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v9, 0x0

    .line 584
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 665
    :goto_0
    return-void

    .line 589
    :pswitch_0
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outLeft:Landroid/widget/TextView;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outRight:Landroid/widget/TextView;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 593
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v8, "login_username"

    invoke-virtual {v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_username:Ljava/lang/String;

    .line 594
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v8, "login_password"

    invoke-virtual {v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_password:Ljava/lang/String;

    .line 596
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyyMMddHHmmss"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 597
    .local v2, format:Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, nowTime:Ljava/lang/String;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    .line 600
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "serialNo"

    invoke-virtual {v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->serialNoInfo:Ljava/lang/String;

    .line 603
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    .line 604
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->serialNoInfo:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 605
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x416312d000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/lit8 v4, v7, 0x1

    .line 606
    .local v4, n:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "10000"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->serialNoInfo:Ljava/lang/String;

    .line 613
    .end local v4           #n:I
    :cond_0
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->requestUrl:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getDomainUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->domainStr:Ljava/lang/String;

    .line 614
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->domainStr:Ljava/lang/String;

    const-string/jumbo v8, "."

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->domainStr:Ljava/lang/String;

    .line 615
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getCheckServerPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->serialNoInfo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->domainStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    .line 616
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->initList()V

    .line 618
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_str:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {p0, v7, v8}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string/jumbo v7, "CN"

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "TW"

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 620
    :cond_1
    const-string/jumbo v3, "\u68c0\u6d4b\u5f00\u59cb\u2026\n"

    .line 621
    .local v3, logtemp:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u8f6f\u4ef6\u540d\u79f0:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->app_name_str:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->verLocal:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->verLocal:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 623
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u8f6f\u4ef6\u7248\u672c\u53f7: V"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->verLocal:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 625
    :cond_2
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :goto_1
    const/16 v7, 0x4b5

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->request(I)V

    goto/16 :goto_0

    .line 627
    .end local v3           #logtemp:Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "Start Test\u2026\n"

    .line 629
    .restart local v3       #logtemp:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Software name:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->app_name_str:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->verLocal:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->verLocal:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 631
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Software version: V"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->verLocal:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 632
    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 631
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 634
    :cond_4
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 648
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    .end local v3           #logtemp:Ljava/lang/String;
    .end local v5           #nowTime:Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getSDFreeSize()J

    move-result-wide v0

    .line 650
    .local v0, availableBlock:J
    const-wide/16 v7, 0xa

    cmp-long v7, v0, v7

    if-gez v7, :cond_5

    .line 651
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f070053

    const/16 v9, 0x11

    invoke-static {v7, v8, v9}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 655
    :cond_5
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    const-string/jumbo v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 656
    .local v6, pos:I
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, ".zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->zipFilePath:Ljava/lang/String;

    .line 657
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->zipFilePath:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->zip(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_submiting_str:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {p0, v7, v8}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f0705f8

    invoke-static {v7, v8}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;I)V

    .line 661
    const/16 v7, 0x4b8

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->request(I)V

    goto/16 :goto_0

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c046b
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
    .line 193
    const v0, 0x7f030185

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->connFlag:Z

    if-eqz v0, :cond_1

    .line 1524
    const-string/jumbo v0, "CN"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TW"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    const-string/jumbo v1, "\n\u7528\u6237\u53d6\u6d88\u68c0\u6d4b\u3002\n"

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    :goto_0
    const/16 v0, 0x4b3

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->cancelRequest(I)V

    .line 1531
    const/16 v0, 0x4b4

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->cancelRequest(I)V

    .line 1532
    const/16 v0, 0x4b5

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->cancelRequest(I)V

    .line 1533
    const/16 v0, 0x4b6

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->cancelRequest(I)V

    .line 1534
    const/16 v0, 0x4b7

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->cancelRequest(I)V

    .line 1535
    const/16 v0, 0x835

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->cancelRequest(I)V

    .line 1536
    const/16 v0, 0x836

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->cancelRequest(I)V

    .line 1538
    :cond_1
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroyView()V

    .line 1539
    return-void

    .line 1527
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    const-string/jumbo v1, "\nNetwork detection is cancelled by user.\n"

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 10
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    .line 1410
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 1411
    const-string/jumbo v6, "test"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "requestCode="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    sparse-switch p1, :sswitch_data_0

    .line 1518
    :goto_0
    return-void

    .line 1415
    :sswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_network_str:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_failure_str:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string/jumbo v6, "CN"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "TW"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1418
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\n\u68c0\u6d4b\u5f53\u524d\u7f51\u7edc\u73af\u5883\uff1a\n\u68c0\u6d4b\u5f53\u524d\u7f51\u7edc\u73af\u5883\u7ed3\u679c\uff1a\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1419
    .local v3, log4:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :goto_1
    const/16 v6, 0x4b3

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->request(I)V

    goto :goto_0

    .line 1421
    .end local v3           #log4:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\nTesting current network environment\uff1a\nTesting current network environment results:Failed,Error code:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1422
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",Error message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1421
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1423
    .restart local v3       #log4:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1429
    .end local v3           #log4:Ljava/lang/String;
    :sswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_login_str:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1430
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_failure_str:Ljava/lang/String;

    .line 1429
    invoke-virtual {p0, v6, v7}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_end_str:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1432
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_upload_str:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    .line 1431
    invoke-virtual {p0, v6, v7}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string/jumbo v6, "CN"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "TW"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1434
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\n\u7f51\u7ad9\u767b\u5f55\u6d4b\u8bd5\uff1a\n\u7f51\u7ad9\u767b\u5f55\u6d4b\u8bd5\u7ed3\u679c\uff1a\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n\n\u68c0\u6d4b\u5b8c\u6bd5\u3002\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1435
    .local v0, log1:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    :goto_2
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1445
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1437
    .end local v0           #log1:Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\nTesting logging on:\nTesting logging on results:Failed,Error code:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1439
    const-string/jumbo v7, ",Error message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1440
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1441
    const-string/jumbo v7, "\n\nServer test is done. \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1437
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1442
    .restart local v0       #log1:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1449
    .end local v0           #log1:Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v6, "CN"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "TW"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1450
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\n\u83b7\u53d6\u4ea7\u54c1\u5e8f\u5217\u53f7\u6d4b\u8bd5\uff1a\n\u83b7\u53d6\u4ea7\u54c1\u5e8f\u5217\u53f7\u6d4b\u8bd5\u7ed3\u679c\uff1a\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1451
    const-string/jumbo v7, ",\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n\n\u68c0\u6d4b\u5b8c\u6bd5\u3002\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1450
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1452
    .local v1, log2:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_end_str:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_upload_str:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {p0, v6, v7}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1463
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1454
    .end local v1           #log2:Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\nTesting getting the product serial number\uff1a\nTesting getting the product serial number results:Failed,Error code:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1456
    const-string/jumbo v7, ",Error message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1457
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1458
    const-string/jumbo v7, "\n\nServer test is done. \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1454
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1459
    .restart local v1       #log2:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1467
    .end local v1           #log2:Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v6, "CN"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "TW"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1468
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\n\u914d\u7f6e\u4e0b\u53d1\u6d4b\u8bd5\uff1a\n\u914d\u7f6e\u4e0b\u53d1\u6d4b\u8bd5\u7ed3\u679c\uff1a\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1469
    .local v2, log3:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    :goto_4
    const/16 v6, 0x835

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->request(I)V

    goto/16 :goto_0

    .line 1471
    .end local v2           #log3:Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\nTesting config\uff1a\nTesting config results:Failed,Error code:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",Error message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1472
    .restart local v2       #log3:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1479
    .end local v2           #log3:Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v6, "CN"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "TW"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1480
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\n\u83b7\u53d6\u6587\u4ef6\u4e0b\u8f7d\u4fe1\u606f\uff1a\n\u83b7\u53d6\u6587\u4ef6\u4e0b\u8f7d\u4fe1\u606f\u7ed3\u679c\uff1a\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n\n\u68c0\u6d4b\u5b8c\u6bd5\u3002\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1481
    .local v4, log5:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_end_str:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_upload_str:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {p0, v6, v7}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1492
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1483
    .end local v4           #log5:Ljava/lang/String;
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\nThe software download information\uff1a\nThe software download information results:Failed,Error code:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1485
    const-string/jumbo v7, ",Error message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1486
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1487
    const-string/jumbo v7, "\n\nServer test is done. \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1483
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1488
    .restart local v4       #log5:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1496
    .end local v4           #log5:Ljava/lang/String;
    :sswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_file_download_str:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_failure_str:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    const-string/jumbo v6, "CN"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "TW"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1499
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\n\u68c0\u6d4b\u6587\u4ef6\u4e0b\u8f7d\uff1a\n\u68c0\u6d4b\u6587\u4ef6\u4e0b\u8f7d\u7ed3\u679c\uff1a\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n\n\u68c0\u6d4b\u5b8c\u6bd5\u3002\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1500
    .local v5, log6:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    :goto_6
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1510
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1502
    .end local v5           #log6:Ljava/lang/String;
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\nTesting file downloading:\nTesting file downloading results:Failed,Error code:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1504
    const-string/jumbo v7, ",Error message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1505
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1506
    const-string/jumbo v7, "\n\nServer test is done.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1502
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1507
    .restart local v5       #log6:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1514
    .end local v5           #log6:Ljava/lang/String;
    :sswitch_6
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 1515
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_submit_failure_str:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {p0, v6, v7}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1412
    nop

    :sswitch_data_0
    .sparse-switch
        0x4b3 -> :sswitch_1
        0x4b4 -> :sswitch_2
        0x4b5 -> :sswitch_0
        0x4b6 -> :sswitch_5
        0x4b7 -> :sswitch_3
        0x4b8 -> :sswitch_6
        0x835 -> :sswitch_4
    .end sparse-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onStart()V

    .line 199
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->app_name_str:Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070618

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_str:Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07061b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_network_str:Ljava/lang/String;

    .line 202
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070624

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_finish_str:Ljava/lang/String;

    .line 203
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07061c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_login_str:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070622

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_success_str:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07061e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_upload_str:Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07061d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_end_str:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07061f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_file_str:Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070623

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_failure_str:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070621

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_file_download_str:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070620

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_download_str:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070625

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_submiting_str:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070626

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_submit_success_str:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070627

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_submit_failure_str:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 35
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 834
    sparse-switch p1, :sswitch_data_0

    .line 1406
    :cond_0
    :goto_0
    return-void

    .line 837
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_one:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_one:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 838
    .local v5, checkT1:Ljava/lang/String;
    const-string/jumbo v31, ";"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 839
    .local v20, pos1:I
    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 840
    .local v25, retOne:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_two:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_two:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 841
    .local v6, checkT2:Ljava/lang/String;
    const-string/jumbo v31, ";"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 842
    .local v21, pos2:I
    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 844
    .local v26, retTwo:Ljava/lang/String;
    const-string/jumbo v31, "0"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_1

    const-string/jumbo v31, "0"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 845
    :cond_1
    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_network_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_finish_str:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :goto_1
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_lang:Ljava/lang/String;

    .line 852
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_2

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 853
    :cond_2
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\n\u68c0\u6d4b\u5f53\u524d\u7f51\u7edc\u73af\u5883:\n\u68c0\u6d4b\u5f53\u524d\u7f51\u7edc\u73af\u5883\u7ed3\u679c\uff1a\u6210\u529f\u3002\n\u5f53\u524d\u8bed\u8a00:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 859
    .local v28, tempCheck:Ljava/lang/String;
    :goto_2
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_3

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 860
    :cond_3
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_one:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-lt v13, v0, :cond_8

    .line 864
    const-string/jumbo v31, "\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 865
    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_two:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-lt v13, v0, :cond_9

    .line 881
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_password:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_c

    .line 884
    :cond_5
    const/16 v31, 0x4b7

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->request(I)V

    goto/16 :goto_0

    .line 847
    .end local v13           #i:I
    .end local v28           #tempCheck:Ljava/lang/String;
    :cond_6
    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_network_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_failure_str:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 855
    :cond_7
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\nTesting current network environment:\nTesting current network environment results\uff1aSuccess.\nThe current language:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ".\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 855
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .restart local v28       #tempCheck:Ljava/lang/String;
    goto/16 :goto_2

    .line 861
    .restart local v13       #i:I
    :cond_8
    const-string/jumbo v31, "ping www.baidu.com\u8fd4\u56de\uff1a\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_one:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 860
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 866
    :cond_9
    const-string/jumbo v31, "ping www.qq.com\u8fd4\u56de\uff1a\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_two:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 865
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 870
    .end local v13           #i:I
    :cond_a
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_one:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-lt v13, v0, :cond_b

    .line 874
    const-string/jumbo v31, "\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 875
    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_two:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_4

    .line 876
    const-string/jumbo v31, "ping www.apple.comReturn\uff1a\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_two:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 875
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 871
    :cond_b
    const-string/jumbo v31, "ping www.google.comReturn\uff1a\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_network_one:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 870
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 886
    :cond_c
    const/16 v31, 0x4b3

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->request(I)V

    goto/16 :goto_0

    .line 891
    .end local v5           #checkT1:Ljava/lang/String;
    .end local v6           #checkT2:Ljava/lang/String;
    .end local v13           #i:I
    .end local v20           #pos1:I
    .end local v21           #pos2:I
    .end local v25           #retOne:Ljava/lang/String;
    .end local v26           #retTwo:Ljava/lang/String;
    .end local v28           #tempCheck:Ljava/lang/String;
    :sswitch_1
    if-eqz p2, :cond_0

    move-object/from16 v22, p2

    .line 892
    check-cast v22, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;

    .line 893
    .local v22, res:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getCode()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->isSuccess(I)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 894
    const-wide/16 v7, 0x0

    .line 895
    .local v7, checkTime:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_d
    :goto_7
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_f

    .line 902
    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/LoginData;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->getUser()Lcom/cnlaunch/x431pro/module/user/model/User;

    move-result-object v30

    .line 903
    .local v30, user:Lcom/cnlaunch/x431pro/module/user/model/User;
    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/LoginData;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/cnlaunch/x431pro/module/user/model/LoginData;->getToken()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/cnlaunch/x431pro/module/user/model/User;->setToken(Ljava/lang/String;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/Object;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    move-object/from16 v31, v0

    const-string/jumbo v32, "login_state"

    const-string/jumbo v33, "1"

    invoke-virtual/range {v31 .. v33}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    move-object/from16 v31, v0

    const-string/jumbo v32, "if_auto_login"

    const-string/jumbo v33, "1"

    invoke-virtual/range {v31 .. v33}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v31, "login"

    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 909
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 910
    invoke-virtual/range {v30 .. v30}, Lcom/cnlaunch/x431pro/module/user/model/User;->getUser_id()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_cc:Ljava/lang/String;

    .line 911
    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_login_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_success_str:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_e

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 915
    :cond_e
    const-string/jumbo v18, "\n\u7f51\u7ad9\u767b\u5f55\u6d4b\u8bd5:\n"

    .line 916
    .local v18, logtemp:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\u7f51\u7ad9\u767b\u5f55\u6d4b\u8bd5\u7ed3\u679c:\u6210\u529f\uff0c\u8017\u65f6"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\u79d2\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 917
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "CC\u53f7:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_cc:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 918
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\u7528\u6237\u540d:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_username:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 925
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const/16 v31, 0x4b4

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->request(I)V

    goto/16 :goto_0

    .line 895
    .end local v14           #intent:Landroid/content/Intent;
    .end local v18           #logtemp:Ljava/lang/String;
    .end local v30           #user:Lcom/cnlaunch/x431pro/module/user/model/User;
    :cond_f
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;

    .line 896
    .local v27, temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    invoke-virtual/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->getName()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "REQ_LOGIN_CODE"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 897
    new-instance v32, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    invoke-direct/range {v32 .. v34}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->setFinishDate(Ljava/util/Date;)V

    .line 898
    invoke-virtual/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->timeConsuming()D

    move-result-wide v7

    goto/16 :goto_7

    .line 920
    .end local v27           #temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    .restart local v14       #intent:Landroid/content/Intent;
    .restart local v30       #user:Lcom/cnlaunch/x431pro/module/user/model/User;
    :cond_10
    const-string/jumbo v18, "\nTesting logging on:\n"

    .line 921
    .restart local v18       #logtemp:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "Testing logging on results:Success,Time of "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "seconds\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 922
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "CC:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_cc:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 923
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "User name:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_username:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_8

    .line 928
    .end local v7           #checkTime:D
    .end local v14           #intent:Landroid/content/Intent;
    .end local v18           #logtemp:Ljava/lang/String;
    .end local v30           #user:Lcom/cnlaunch/x431pro/module/user/model/User;
    :cond_11
    new-instance v10, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;-><init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V

    .line 929
    .local v10, err:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    const/16 v31, 0x4b3

    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getCode()I

    move-result v32

    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getMsg()Ljava/lang/String;

    move-result-object v33

    move/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v10, v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->addError(IILjava/lang/String;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_login_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_end_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_upload_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_12

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 936
    :cond_12
    const-string/jumbo v18, "\n\u7f51\u7ad9\u767b\u5f55\u6d4b\u8bd5:\n"

    .line 937
    .restart local v18       #logtemp:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\u7f51\u7ad9\u767b\u5f55\u6d4b\u8bd5\u7ed3\u679c:\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getCode()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ",\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getMsg()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 938
    const-string/jumbo v31, "\n\u68c0\u6d4b\u5b8c\u6bd5\u3002\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 947
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setEnabled(Z)V

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 940
    .end local v18           #logtemp:Ljava/lang/String;
    :cond_13
    const-string/jumbo v18, "\nTesting logging on:\n"

    .line 941
    .restart local v18       #logtemp:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "Testing logging on results:Failed,Error code:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 942
    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getCode()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 943
    const-string/jumbo v32, ",Error message:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 944
    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;->getMsg()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 941
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 945
    const-string/jumbo v31, "\nServer test is done.\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_9

    .line 957
    .end local v10           #err:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    .end local v18           #logtemp:Ljava/lang/String;
    .end local v22           #res:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    :sswitch_2
    if-eqz p2, :cond_16

    move-object/from16 v22, p2

    .line 958
    check-cast v22, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;

    .line 959
    .local v22, res:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    if-eqz v22, :cond_16

    .line 960
    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getCode()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->isSuccess(I)Z

    move-result v31

    if-eqz v31, :cond_1f

    .line 961
    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getProductDTOs()Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listSerialNo:Ljava/util/List;

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listSerialNo:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listSerialNo:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_14

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->allProductDTOList:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listSerialNo:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 967
    :cond_14
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_15

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_17

    .line 968
    :cond_15
    const-string/jumbo v18, "\n\u83b7\u53d6\u4ea7\u54c1\u5e8f\u5217\u53f7\u6d4b\u8bd5:\n"

    .line 969
    .restart local v18       #logtemp:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\u4ea7\u54c1\u7c7b\u578b:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_productType:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 975
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listSerialNo:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listSerialNo:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_1c

    .line 976
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listSerialNo:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-lt v13, v0, :cond_18

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const/16 v31, 0x4b7

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->request(I)V

    .line 1031
    .end local v13           #i:I
    .end local v18           #logtemp:Ljava/lang/String;
    .end local v22           #res:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    :cond_16
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->updateSerialNumber()V

    .line 1033
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v31, "login_change_serialno"

    move-object/from16 v0, v31

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v15, intent2:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 971
    .end local v15           #intent2:Landroid/content/Intent;
    .restart local v22       #res:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    :cond_17
    const-string/jumbo v18, "\nTesting getting the product serial number:\n"

    .line 972
    .restart local v18       #logtemp:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "Product types:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_productType:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_a

    .line 977
    .restart local v13       #i:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listSerialNo:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;

    .line 978
    .local v4, bean:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_19

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 979
    :cond_19
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\u5e8f\u5217\u53f7:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 980
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\u4ea7\u54c1\u914d\u7f6e:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getProductConfigName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 985
    :goto_d
    if-nez v13, :cond_1a

    .line 986
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_serialNo:Ljava/lang/String;

    .line 976
    :cond_1a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    .line 982
    :cond_1b
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "Serial Number:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getSerialNo()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 983
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "Product configuration:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;->getProductConfigName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_d

    .line 992
    .end local v4           #bean:Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;
    .end local v13           #i:I
    :cond_1c
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1d

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1e

    .line 993
    :cond_1d
    const-string/jumbo v31, "\n\u8be5\u7528\u6237\u672a\u6ce8\u518c\u4ea7\u54c1\uff0c\u65e0\u6cd5\u83b7\u53d6\u4ea7\u54c1\u5e8f\u5217\u53f7\n\u68c0\u6d4b\u5b8c\u6bd5\u3002\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 997
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_end_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_upload_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_c

    .line 995
    :cond_1e
    const-string/jumbo v31, "\nThe unregistered user product, unable to obtain the product serial number.\nServer test is done.\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_e

    .line 1005
    .end local v18           #logtemp:Ljava/lang/String;
    :cond_1f
    new-instance v10, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;-><init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V

    .line 1006
    .restart local v10       #err:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    const/16 v31, 0x4b4

    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getCode()I

    move-result v32

    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getMsg()Ljava/lang/String;

    move-result-object v33

    move/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v10, v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->addError(IILjava/lang/String;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_20

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_21

    .line 1011
    :cond_20
    const-string/jumbo v18, "\u83b7\u53d6\u4ea7\u54c1\u5e8f\u5217\u53f7\u6d4b\u8bd5:\n"

    .line 1012
    .restart local v18       #logtemp:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\u83b7\u53d6\u4ea7\u54c1\u5e8f\u5217\u53f7\u6d4b\u8bd5\u7ed3\u679c:\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getCode()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ",\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getMsg()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1013
    const-string/jumbo v32, "\n\n\u68c0\u6d4b\u5b8c\u6bd5\u3002\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1012
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1022
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_end_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_upload_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_c

    .line 1015
    .end local v18           #logtemp:Ljava/lang/String;
    :cond_21
    const-string/jumbo v18, "Testing getting the product serial number:\n"

    .line 1016
    .restart local v18       #logtemp:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "Testing getting the product serial number results:Failed,Error code:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1017
    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getCode()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1018
    const-string/jumbo v32, ",Error message:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1019
    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getMsg()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1020
    const-string/jumbo v32, "\n\nServer test is done.\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1016
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_f

    .line 1039
    .end local v10           #err:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    .end local v18           #logtemp:Ljava/lang/String;
    .end local v22           #res:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    :sswitch_3
    if-eqz p2, :cond_24

    move-object/from16 v24, p2

    .line 1040
    check-cast v24, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;

    .line 1041
    .local v24, response:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    invoke-virtual/range {v24 .. v24}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getCode()I

    move-result v31

    if-nez v31, :cond_2a

    .line 1042
    invoke-virtual/range {v24 .. v24}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getData()Lcom/cnlaunch/x431pro/module/config/model/ConfigData;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/cnlaunch/x431pro/module/config/model/ConfigData;->getUrls()Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_configurl_list:Ljava/util/List;

    .line 1043
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_local_ip:Ljava/lang/String;

    .line 1044
    const-wide/16 v7, 0x0

    .line 1045
    .restart local v7       #checkTime:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_22
    :goto_10
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_27

    .line 1053
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_23

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_28

    .line 1054
    :cond_23
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\n\u914d\u7f6e\u4e0b\u53d1\u68c0\u6d4b\uff1a\n\u914d\u7f6e\u4e0b\u53d1\u68c0\u6d4b\u7ed3\u679c:\u6210\u529f,\u8017\u65f6"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\u79d2\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1055
    .restart local v18       #logtemp:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\u5916\u7f51IP:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_ip:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1056
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\u5185\u7f51IP:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_local_ip:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1057
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\u5f53\u524d\u8bbf\u95ee\u57df\u540d:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1058
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\u914d\u7f6e\u4e0b\u53d1\u5165\u53e3:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_configurl:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1059
    const-string/jumbo v31, "\u914d\u7f6e\u4e0b\u53d1\u7684\u8fd4\u56de\u5185\u5bb9:\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1069
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_configurl_list:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_12
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_29

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    .end local v7           #checkTime:D
    .end local v18           #logtemp:Ljava/lang/String;
    .end local v24           #response:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    :cond_24
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_password:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_2e

    .line 1098
    :cond_25
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-class v32, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1099
    .local v3, LoginIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->startActivity(Landroid/content/Intent;)V

    .line 1101
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_26

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2d

    .line 1102
    :cond_26
    const-string/jumbo v17, "\n\u68c0\u6d4b\u5b8c\u6bd5\u3002\n"

    .line 1103
    .local v17, logover:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :goto_14
    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_end_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_upload_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1045
    .end local v3           #LoginIntent:Landroid/content/Intent;
    .end local v17           #logover:Ljava/lang/String;
    .restart local v7       #checkTime:D
    .restart local v24       #response:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    :cond_27
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;

    .line 1046
    .restart local v27       #temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    invoke-virtual/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->getName()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "REQ_GET_CONFIG_CODE"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_22

    .line 1047
    new-instance v32, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    invoke-direct/range {v32 .. v34}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->setFinishDate(Ljava/util/Date;)V

    .line 1048
    invoke-virtual/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->timeConsuming()D

    move-result-wide v7

    goto/16 :goto_10

    .line 1061
    .end local v27           #temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    :cond_28
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\nTesting config\uff1a\nTesting config results:Success,Time of "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "seconds\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1062
    .restart local v18       #logtemp:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "Extranet IP:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_ip:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1063
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "Intranet IP:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_local_ip:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1064
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "The current access domain:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1065
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "Config URL:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_configurl:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1066
    const-string/jumbo v31, "Config return:\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_11

    .line 1069
    :cond_29
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;

    .line 1070
    .local v29, url:Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-virtual/range {v29 .. v29}, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;->getKey()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v29 .. v29}, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;->getValue()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " \n"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_12

    .line 1075
    .end local v7           #checkTime:D
    .end local v18           #logtemp:Ljava/lang/String;
    .end local v29           #url:Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;
    :cond_2a
    new-instance v10, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;-><init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V

    .line 1076
    .restart local v10       #err:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    const/16 v31, 0x4b7

    invoke-virtual/range {v24 .. v24}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getCode()I

    move-result v32

    invoke-virtual/range {v24 .. v24}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getMsg()Ljava/lang/String;

    move-result-object v33

    move/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v10, v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->addError(IILjava/lang/String;)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_2b

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2c

    .line 1081
    :cond_2b
    const-string/jumbo v18, "\u914d\u7f6e\u4e0b\u53d1\u68c0\u6d4b:\n"

    .line 1082
    .restart local v18       #logtemp:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\u914d\u7f6e\u4e0b\u53d1\u68c0\u6d4b\u7ed3\u679c:\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {v24 .. v24}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getCode()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ",\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1084
    invoke-virtual/range {v24 .. v24}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getMsg()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1082
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1093
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1086
    .end local v18           #logtemp:Ljava/lang/String;
    :cond_2c
    const-string/jumbo v18, "Testing config:\n"

    .line 1087
    .restart local v18       #logtemp:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "Testing config results:Failed,Error code:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1088
    invoke-virtual/range {v24 .. v24}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getCode()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1089
    const-string/jumbo v32, ",Error message:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1090
    invoke-virtual/range {v24 .. v24}, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->getMsg()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1091
    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1087
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_15

    .line 1105
    .end local v10           #err:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    .end local v18           #logtemp:Ljava/lang/String;
    .end local v24           #response:Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
    .restart local v3       #LoginIntent:Landroid/content/Intent;
    :cond_2d
    const-string/jumbo v17, "\nServer test is done. \n"

    .line 1106
    .restart local v17       #logover:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1113
    .end local v3           #LoginIntent:Landroid/content/Intent;
    .end local v17           #logover:Ljava/lang/String;
    :cond_2e
    const/16 v31, 0x835

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->request(I)V

    goto/16 :goto_0

    .line 1119
    :sswitch_4
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;

    .line 1120
    if-eqz p2, :cond_0

    .line 1121
    const-wide/16 v7, 0x0

    .line 1122
    .restart local v7       #checkTime:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_2f
    :goto_16
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_33

    move-object/from16 v23, p2

    .line 1129
    check-cast v23, Ljava/util/List;

    .line 1130
    .local v23, resTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1133
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_30

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_34

    .line 1134
    :cond_30
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\n\u83b7\u53d6\u8f6f\u4ef6\u4e0b\u8f7d\u4fe1\u606f\u7ed3\u679c\uff1a\u6210\u529f\uff0c\u8017\u65f6"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\u79d2\u3002\n\u83b7\u53d6\u516c\u5171\u8f6f\u4ef6\u4fe1\u606f:\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1141
    .local v16, logTemp:Ljava/lang/String;
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->publicSoftList:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->publicSoftList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_36

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->publicSoftList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_18
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_35

    .line 1168
    :goto_19
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_31

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3d

    .line 1169
    :cond_31
    const-string/jumbo v31, "\n\u83b7\u53d6\u8bca\u65ad\u8f6f\u4ef6\u4fe1\u606f:\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1174
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->diagSoftList:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->diagSoftList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_3f

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->diagSoftList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_1b
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_3e

    .line 1206
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_48

    .line 1207
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_32

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_46

    .line 1208
    :cond_32
    const-string/jumbo v31, "\n\u83b7\u53d6\u8bca\u65ad\u56fa\u4ef6\u5305\u548cDemo\u8f6f\u4ef6\u5305\u4fe1\u606f:\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1213
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_1e
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_47

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const/16 v31, 0x4b6

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->request(I)V

    goto/16 :goto_0

    .line 1122
    .end local v16           #logTemp:Ljava/lang/String;
    .end local v23           #resTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    :cond_33
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;

    .line 1123
    .restart local v27       #temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    invoke-virtual/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->getName()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "REQ_QUERYLATESTPUBLICSOFTS_CODE"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2f

    .line 1124
    new-instance v32, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    invoke-direct/range {v32 .. v34}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->setFinishDate(Ljava/util/Date;)V

    .line 1125
    invoke-virtual/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->timeConsuming()D

    move-result-wide v7

    goto/16 :goto_16

    .line 1136
    .end local v27           #temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    .restart local v23       #resTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    :cond_34
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "\nThe software download information results:Success,Time of "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1137
    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1138
    const-string/jumbo v32, "seconds.\nThe public software information:\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1136
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #logTemp:Ljava/lang/String;
    goto/16 :goto_17

    .line 1142
    :cond_35
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 1143
    .local v4, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "SoftName\uff1a"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "  ,FileSize\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileSize()J

    move-result-wide v33

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " \n"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_18

    .line 1147
    .end local v4           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_36
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_37

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3b

    .line 1148
    :cond_37
    const-string/jumbo v18, "\u83b7\u53d6\u516c\u5171\u8f6f\u4ef6\u4fe1\u606f:\n"

    .line 1149
    .restart local v18       #logtemp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_38
    :goto_1f
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_3a

    .line 1165
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 1149
    :cond_3a
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;

    .line 1150
    .local v27, temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    invoke-virtual/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->getName()I

    move-result v32

    const/16 v33, 0x835

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_38

    .line 1151
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "\u83b7\u53d6\u516c\u5171\u8f6f\u4ef6\u4fe1\u606f\u7ed3\u679c:\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorCode:I
    invoke-static/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->access$0(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ",\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorMsg:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->access$1(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "\n"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_1f

    .line 1155
    .end local v18           #logtemp:Ljava/lang/String;
    .end local v27           #temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    :cond_3b
    const-string/jumbo v18, "The public software information:\n"

    .line 1156
    .restart local v18       #logtemp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_3c
    :goto_20
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_39

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;

    .line 1157
    .restart local v27       #temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    invoke-virtual/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->getName()I

    move-result v32

    const/16 v33, 0x835

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3c

    .line 1158
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "The public software information results:Failed,Error code:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1159
    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorCode:I
    invoke-static/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->access$0(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1160
    const-string/jumbo v33, ",Error message:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1161
    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorMsg:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->access$1(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "\n"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1158
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_20

    .line 1171
    .end local v18           #logtemp:Ljava/lang/String;
    .end local v27           #temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    :cond_3d
    const-string/jumbo v31, "\nThe diag software information:\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1a

    .line 1175
    :cond_3e
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 1176
    .restart local v4       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "SoftName\uff1a"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "  ,SoftPackageID\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1178
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "  ,FileSize\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1179
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileSize()J

    move-result-wide v33

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " \n"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1176
    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1b

    .line 1183
    .end local v4           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_3f
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_40

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_44

    .line 1184
    :cond_40
    const-string/jumbo v18, "\u83b7\u53d6\u8bca\u65ad\u8f6f\u4ef6\u4fe1\u606f:\n"

    .line 1185
    .restart local v18       #logtemp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_41
    :goto_21
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_43

    .line 1203
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1185
    :cond_43
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;

    .line 1186
    .restart local v27       #temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    invoke-virtual/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->getName()I

    move-result v32

    const/16 v33, 0x836

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_41

    .line 1187
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "\u83b7\u53d6\u8bca\u65ad\u8f6f\u4ef6\u4fe1\u606f\u7ed3\u679c:\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1188
    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorCode:I
    invoke-static/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->access$0(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ",\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1189
    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorMsg:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->access$1(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "\n"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1187
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_21

    .line 1193
    .end local v18           #logtemp:Ljava/lang/String;
    .end local v27           #temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    :cond_44
    const-string/jumbo v18, "The diag software information:\n"

    .line 1194
    .restart local v18       #logtemp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_45
    :goto_22
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_42

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;

    .line 1195
    .restart local v27       #temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    invoke-virtual/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->getName()I

    move-result v32

    const/16 v33, 0x836

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_45

    .line 1196
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "The diag software information results:Failed,Error code:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1197
    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorCode:I
    invoke-static/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->access$0(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1198
    const-string/jumbo v33, ",Error message:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1199
    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorMsg:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->access$1(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "\n"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1196
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_22

    .line 1210
    .end local v18           #logtemp:Ljava/lang/String;
    .end local v27           #temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    :cond_46
    const-string/jumbo v31, "\nThe diag firmware package and Demo package information:\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1d

    .line 1213
    :cond_47
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 1214
    .restart local v4       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "SoftName\uff1a"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "  ,FileSize\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileSize()J

    move-result-wide v33

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " \n"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1e

    .line 1219
    .end local v4           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_48
    const-string/jumbo v31, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_49

    const-string/jumbo v31, "TW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4a

    .line 1220
    :cond_49
    const-string/jumbo v31, "\n\u83b7\u53d6\u8bca\u65ad\u56fa\u4ef6\u5305\u548cDemo\u8f6f\u4ef6\u5305\u4fe1\u606f:null\n\n\u68c0\u6d4b\u5b8c\u6bd5\u3002\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1224
    :goto_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_end_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_upload_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1222
    :cond_4a
    const-string/jumbo v31, "\nThe diag firmware package and Demo package information:null\n\nServer test is done.\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_23

    .line 1235
    .end local v7           #checkTime:D
    .end local v16           #logTemp:Ljava/lang/String;
    .end local v23           #resTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    :sswitch_5
    invoke-static {}, Lcom/cnlaunch/framework/network/download/DownloadManager;->getInstance()Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-object/from16 v31, v0

    new-instance v32, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V

    invoke-virtual/range {v31 .. v32}, Lcom/cnlaunch/framework/network/download/DownloadManager;->setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_4b

    .line 1350
    const/16 v19, 0x0

    .line 1351
    .local v19, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const/4 v9, 0x0

    .line 1352
    .local v9, download:Lcom/cnlaunch/framework/network/download/DownloadParam;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_24
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_4c

    .line 1382
    .end local v9           #download:Lcom/cnlaunch/framework/network/download/DownloadParam;
    .end local v19           #params:Lcom/cnlaunch/framework/network/http/RequestParams;
    :cond_4b
    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_file_download_str:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1352
    .restart local v9       #download:Lcom/cnlaunch/framework/network/download/DownloadParam;
    .restart local v19       #params:Lcom/cnlaunch/framework/network/http/RequestParams;
    :cond_4c
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 1353
    .restart local v4       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    new-instance v19, Lcom/cnlaunch/framework/network/http/RequestParams;

    .end local v19           #params:Lcom/cnlaunch/framework/network/http/RequestParams;
    invoke-direct/range {v19 .. v19}, Lcom/cnlaunch/framework/network/http/RequestParams;-><init>()V

    .line 1354
    .restart local v19       #params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v32, "serialNo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_serialNo:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const-string/jumbo v32, "versionDetailId"

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionDetailId()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->getDownloadFileName(Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setFileName(Ljava/lang/String;)V

    .line 1357
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 1360
    new-instance v9, Lcom/cnlaunch/framework/network/download/DownloadParam;

    .end local v9           #download:Lcom/cnlaunch/framework/network/download/DownloadParam;
    invoke-direct {v9}, Lcom/cnlaunch/framework/network/download/DownloadParam;-><init>()V

    .line 1361
    .restart local v9       #download:Lcom/cnlaunch/framework/network/download/DownloadParam;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setContext(Landroid/content/Context;)V

    .line 1362
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setParams(Lcom/cnlaunch/framework/network/http/RequestParams;)V

    .line 1363
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileSize()J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setFileSize(J)V

    .line 1364
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getUrl()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setUrl(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setFileName(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setVersionNo(Ljava/lang/String;)V

    .line 1367
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getCheckServerPath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setDownPath(Ljava/lang/String;)V

    .line 1368
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getCheckServerPath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1369
    .local v12, file_Path:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1370
    .local v11, f:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_4d

    .line 1371
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 1374
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Lcom/cnlaunch/framework/network/download/DownloadManager;->addHandler(Lcom/cnlaunch/framework/network/download/DownloadParam;)V

    .line 1376
    new-instance v27, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;-><init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V

    .line 1377
    .local v27, temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->setName(Ljava/lang/String;)V

    .line 1378
    new-instance v32, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    invoke-direct/range {v32 .. v34}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->setStarDate(Ljava/util/Date;)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 1387
    .end local v4           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    .end local v9           #download:Lcom/cnlaunch/framework/network/download/DownloadParam;
    .end local v11           #f:Ljava/io/File;
    .end local v12           #file_Path:Ljava/lang/String;
    .end local v19           #params:Lcom/cnlaunch/framework/network/http/RequestParams;
    .end local v27           #temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 1388
    if-eqz p2, :cond_4f

    move-object/from16 v24, p2

    .line 1389
    check-cast v24, Lcom/cnlaunch/x431pro/module/setting/model/UploadServerCheckLogResponse;

    .line 1390
    .local v24, response:Lcom/cnlaunch/x431pro/module/setting/model/UploadServerCheckLogResponse;
    sget-object v31, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->tag:Ljava/lang/String;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/cnlaunch/x431pro/module/setting/model/UploadServerCheckLogResponse;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1391
    invoke-virtual/range {v24 .. v24}, Lcom/cnlaunch/x431pro/module/setting/model/UploadServerCheckLogResponse;->getCode()I

    move-result v31

    if-nez v31, :cond_4e

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    .line 1393
    const v32, 0x7f0705f3

    .line 1392
    invoke-static/range {v31 .. v32}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_submit_success_str:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1396
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    .line 1397
    const v32, 0x7f0705f4

    .line 1396
    invoke-static/range {v31 .. v32}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_submit_failure_str:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1401
    .end local v24           #response:Lcom/cnlaunch/x431pro/module/setting/model/UploadServerCheckLogResponse;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f0705f4

    invoke-static/range {v31 .. v32}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_submit_failure_str:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 834
    :sswitch_data_0
    .sparse-switch
        0x4b3 -> :sswitch_1
        0x4b4 -> :sswitch_2
        0x4b5 -> :sswitch_0
        0x4b6 -> :sswitch_5
        0x4b7 -> :sswitch_3
        0x4b8 -> :sswitch_6
        0x835 -> :sswitch_4
    .end sparse-switch
.end method

.method public pingUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "ipAddress"

    .prologue
    .line 360
    const-string/jumbo v0, ""

    .line 362
    .local v0, back:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ping -c 1 -w 500 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 363
    .local v4, p:Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v5

    .line 364
    .local v5, status:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 366
    .local v2, buf:Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 369
    .local v6, str:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v1, v0

    .line 376
    .end local v0           #back:Ljava/lang/String;
    .end local v2           #buf:Ljava/io/BufferedReader;
    .end local v4           #p:Ljava/lang/Process;
    .end local v5           #status:I
    .end local v6           #str:Ljava/lang/String;
    .local v1, back:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 370
    .end local v1           #back:Ljava/lang/String;
    .restart local v0       #back:Ljava/lang/String;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    .restart local v4       #p:Ljava/lang/Process;
    .restart local v5       #status:I
    .restart local v6       #str:Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 373
    .end local v2           #buf:Ljava/io/BufferedReader;
    .end local v4           #p:Ljava/lang/Process;
    .end local v5           #status:I
    .end local v6           #str:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 374
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    .line 376
    .end local v0           #back:Ljava/lang/String;
    .restart local v1       #back:Ljava/lang/String;
    goto :goto_1
.end method

.method public textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "head"
    .parameter "result"

    .prologue
    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, cStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outLeft:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outLeft:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    .line 469
    .local v1, outLineL:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outRight:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    .line 470
    .local v2, outLineR:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 475
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 476
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outRight:Landroid/widget/TextView;

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outRight:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<font color=#E61A6B>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outRight:Landroid/widget/TextView;

    const-string/jumbo v4, "]\n"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 482
    :goto_1
    return-void

    .line 471
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outRight:Landroid/widget/TextView;

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textview_outRight:Landroid/widget/TextView;

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public zip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "fileStr"
    .parameter "zipFile"

    .prologue
    .line 543
    const/4 v6, 0x0

    .line 545
    .local v6, origin:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 546
    .local v2, dest:Ljava/io/FileOutputStream;
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 547
    .local v8, out:Ljava/util/zip/ZipOutputStream;
    const/16 v9, 0x800

    new-array v1, v9, [B

    .line 549
    .local v1, data:[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 550
    .local v5, fi:Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/BufferedInputStream;

    const/16 v9, 0x800

    invoke-direct {v7, v5, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 551
    .end local v6           #origin:Ljava/io/BufferedInputStream;
    .local v7, origin:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string/jumbo v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 552
    .local v4, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v8, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 554
    :goto_0
    const/4 v9, 0x0

    const/16 v10, 0x800

    invoke-virtual {v7, v1, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .local v0, count:I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_0

    .line 557
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 558
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 563
    .end local v0           #count:I
    .end local v1           #data:[B
    .end local v2           #dest:Ljava/io/FileOutputStream;
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .end local v7           #origin:Ljava/io/BufferedInputStream;
    .end local v8           #out:Ljava/util/zip/ZipOutputStream;
    :goto_1
    return-void

    .line 555
    .restart local v0       #count:I
    .restart local v1       #data:[B
    .restart local v2       #dest:Ljava/io/FileOutputStream;
    .restart local v4       #entry:Ljava/util/zip/ZipEntry;
    .restart local v5       #fi:Ljava/io/FileInputStream;
    .restart local v7       #origin:Ljava/io/BufferedInputStream;
    .restart local v8       #out:Ljava/util/zip/ZipOutputStream;
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 559
    .end local v0           #count:I
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 560
    .end local v1           #data:[B
    .end local v2           #dest:Ljava/io/FileOutputStream;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .end local v7           #origin:Ljava/io/BufferedInputStream;
    .end local v8           #out:Ljava/util/zip/ZipOutputStream;
    .local v3, e:Ljava/lang/Exception;
    .restart local v6       #origin:Ljava/io/BufferedInputStream;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 559
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2
.end method
