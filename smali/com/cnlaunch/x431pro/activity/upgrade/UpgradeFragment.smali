.class public Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "UpgradeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$PinyinComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private final MSG_EXPIRED_PROMPT:I

.field private final MSG_NO_CONNECTOR:I

.field private final MSG_REFRESH_SN:I

.field private final MSG_REFRESH_UI:I

.field private final MSG_RELOGIN:I

.field private final MSG_RELOGINEX:I

.field private final MSG_WILL_EXPIRED_PROMPT:I

.field private final REQ_QUERYHISTORYDIAGSOFTS_CODE:I

.field private final REQ_QUERYLATESTDIAGSOFTS_CODE:I

.field private final REQ_QUERYLATESTPUBLICSOFTS_CODE:I

.field private SNChangedBroadcast:Landroid/content/BroadcastReceiver;

.field private adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

.field private cc:Ljava/lang/String;

.field private defaultLanId:Ljava/lang/String;

.field private diagsoftUrl:Ljava/lang/String;

.field private freeDay:I

.field private historylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;",
            ">;"
        }
    .end annotation
.end field

.field private itemClickView:Landroid/view/View;

.field private itemPosition:I

.field private lanId:Ljava/lang/String;

.field private mExpiredAdapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;

.field private mIsExpired:Z

.field private mIsNeedRefresh:Z

.field private mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

.field private mNormalAdapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

.field private mUIHandler:Landroid/os/Handler;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private publicsoftUrl:Ljava/lang/String;

.field private pull_refresh_listview:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

.field private radio_download:Landroid/widget/Button;

.field private radio_select_all:Landroid/widget/RadioButton;

.field private serialNo:Ljava/lang/String;

.field private serialNo_Prefix:Ljava/lang/String;

.field private serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

.field private softId:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private tv_remarks:Landroid/widget/TextView;

.field private tv_spinner_serialNo:Landroid/widget/TextView;

.field private tv_upgrade_num:Landroid/widget/TextView;

.field private upgradeAction:Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

.field private upgradeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;",
            ">;"
        }
    .end annotation
.end field

.field private upgradeNum:I

.field private upgradeTotal:I

.field private userSerialNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/SerialNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 104
    const-class v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tag:Ljava/lang/String;

    .line 106
    const/16 v0, 0x835

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->REQ_QUERYLATESTPUBLICSOFTS_CODE:I

    .line 107
    const/16 v0, 0x836

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->REQ_QUERYLATESTDIAGSOFTS_CODE:I

    .line 108
    const/16 v0, 0x837

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->REQ_QUERYHISTORYDIAGSOFTS_CODE:I

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->MSG_REFRESH_SN:I

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->MSG_REFRESH_UI:I

    .line 112
    const/4 v0, 0x3

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->MSG_WILL_EXPIRED_PROMPT:I

    .line 113
    const/4 v0, 0x4

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->MSG_EXPIRED_PROMPT:I

    .line 114
    const/4 v0, 0x5

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->MSG_RELOGIN:I

    .line 115
    const/4 v0, 0x6

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->MSG_RELOGINEX:I

    .line 116
    const/4 v0, 0x7

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->MSG_NO_CONNECTOR:I

    .line 119
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    .line 145
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mIsNeedRefresh:Z

    .line 156
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->freeDay:I

    .line 157
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mIsExpired:Z

    .line 158
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    .line 159
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->SNChangedBroadcast:Landroid/content/BroadcastReceiver;

    .line 102
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1351
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->updateSNList()V

    return-void
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_remarks:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 156
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->freeDay:I

    return v0
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/framework/common/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    return-object v0
.end method

.method static synthetic access$16(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->pull_refresh_listview:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I

    return-void
.end method

.method static synthetic access$18(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeTotal:I

    return-void
.end method

.method static synthetic access$19(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->userSerialNumberList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$20(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$21(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    return-object v0
.end method

.method static synthetic access$22(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;

    return-object v0
.end method

.method static synthetic access$23(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->historylist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$24(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$25(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 149
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I

    return v0
.end method

.method static synthetic access$26(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1388
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->setSN(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_upgrade_num:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 154
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I

    return v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 155
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeTotal:I

    return v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mIsExpired:Z

    return v0
.end method

.method private checkUserAndToken()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1323
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "user_id"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1324
    .local v3, user_id:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "token"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1325
    .local v2, token:Ljava/lang/String;
    const/4 v0, 0x1

    .line 1327
    .local v0, isValid:Z
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 1328
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1329
    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1330
    :cond_1
    const/4 v0, 0x0

    .line 1334
    :cond_2
    if-nez v0, :cond_3

    .line 1335
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "isconflict"

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1336
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v6, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1337
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1345
    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    :goto_0
    return v0

    .line 1340
    :cond_4
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v6, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1341
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private expiredRemind()V
    .locals 28
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 1228
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getCountry()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "CN"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v22

    const-string/jumbo v23, "expired_remind"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v20

    .line 1234
    .local v20, remind:Z
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v22, "yyyy-MM-dd"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1235
    .local v11, dateFormat:Ljava/text/SimpleDateFormat;
    const/16 v21, 0x0

    .line 1236
    .local v21, state:I
    const-wide v5, 0x9a7ec800L

    .line 1240
    .local v5, DAY30:J
    const-wide/32 v7, 0x240c8400

    .line 1241
    .local v7, DAY7:J
    const-wide/32 v3, 0x5265c00

    .line 1242
    .local v3, DAY1:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v22

    const-string/jumbo v23, "free_time"

    const-wide/16 v24, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1243
    .local v16, freeTime:J
    const/16 v19, 0x0

    .line 1244
    .local v19, overOneDay:Z
    const-wide/16 v14, 0x0

    .line 1246
    .local v14, freeNew:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_3

    .line 1275
    :goto_2
    const-wide/32 v22, 0x5265c00

    div-long v22, v14, v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->freeDay:I

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tag:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "freeTime: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", freeNew: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", state: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tag:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "DAY30: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", DAY7: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-wide/32 v26, 0x240c8400

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", DAY1: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-wide/32 v26, 0x5265c00

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tag:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "freeDay: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->freeDay:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", freeTime - freeNew: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sub-long v26, v16, v14

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1280
    sub-long v22, v16, v14

    const-wide/32 v24, 0x5265c00

    cmp-long v22, v22, v24

    if-gez v22, :cond_7

    sub-long v22, v16, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-ltz v22, :cond_7

    const/16 v19, 0x0

    .line 1281
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tag:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "overOneDay: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", remind: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1283
    packed-switch v21, :pswitch_data_0

    goto/16 :goto_0

    .line 1311
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v22

    const-string/jumbo v23, "free_time"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14, v15}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1246
    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 1247
    .local v9, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    const/16 v23, 0x3

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 1250
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getExpired()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1251
    const/16 v21, 0x3

    .line 1252
    goto/16 :goto_2

    .line 1255
    :cond_4
    :try_start_0
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFreeUseEndTime()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    .line 1256
    .local v13, end:Ljava/util/Date;
    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getServerCurrentTime()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 1257
    .local v10, current:Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v23

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v25

    sub-long v14, v23, v25

    .line 1258
    cmp-long v23, v14, v5

    if-gtz v23, :cond_5

    const-wide/32 v23, 0x240c8400

    cmp-long v23, v14, v23

    if-lez v23, :cond_5

    .line 1259
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1262
    :cond_5
    const-wide/32 v23, 0x240c8400

    cmp-long v23, v14, v23

    if-gtz v23, :cond_6

    const-wide/16 v23, 0x0

    cmp-long v23, v14, v23

    if-ltz v23, :cond_6

    .line 1263
    const/16 v21, 0x2

    goto/16 :goto_2

    .line 1266
    :cond_6
    const-wide/16 v23, 0x0

    cmp-long v23, v14, v23

    if-gez v23, :cond_2

    .line 1267
    const/16 v21, 0x3

    goto/16 :goto_2

    .line 1270
    .end local v10           #current:Ljava/util/Date;
    .end local v13           #end:Ljava/util/Date;
    :catch_0
    move-exception v12

    .line 1271
    .local v12, e:Ljava/text/ParseException;
    invoke-virtual {v12}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1

    .line 1280
    .end local v9           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    .end local v12           #e:Ljava/text/ParseException;
    :cond_7
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 1285
    :pswitch_1
    cmp-long v22, v16, v5

    if-lez v22, :cond_8

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v22

    const-string/jumbo v23, "free_time"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14, v15}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1288
    :cond_8
    if-eqz v19, :cond_0

    if-eqz v20, :cond_0

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    .line 1290
    .local v18, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v22

    const-string/jumbo v23, "free_time"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14, v15}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1295
    .end local v18           #msg:Landroid/os/Message;
    :pswitch_2
    if-eqz v19, :cond_9

    if-eqz v20, :cond_9

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    .line 1297
    .restart local v18       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v22

    const-string/jumbo v23, "free_time"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14, v15}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1300
    .end local v18           #msg:Landroid/os/Message;
    :cond_9
    const-wide/32 v22, 0x240c8400

    cmp-long v22, v14, v22

    if-gtz v22, :cond_0

    const-wide/32 v22, 0x240c8400

    cmp-long v22, v16, v22

    if-lez v22, :cond_0

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    .line 1302
    .restart local v18       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v22

    const-string/jumbo v23, "free_time"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14, v15}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1307
    .end local v18           #msg:Landroid/os/Message;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    .line 1308
    .restart local v18       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getAPPVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "pkgName"

    .prologue
    const/16 v7, 0x56

    .line 1147
    const/4 v3, 0x0

    .line 1148
    .local v3, version:Ljava/lang/StringBuffer;
    move-object v2, p1

    .line 1149
    .local v2, packageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1151
    .local v1, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1152
    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    .end local v3           #version:Ljava/lang/StringBuffer;
    .local v4, version:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_0

    .line 1154
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    const/16 v6, 0x76

    if-eq v5, v6, :cond_0

    .line 1155
    const/4 v5, 0x0

    const/16 v6, 0x56

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1160
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    move-object v3, v4

    .line 1165
    .end local v4           #version:Ljava/lang/StringBuffer;
    .restart local v3       #version:Ljava/lang/StringBuffer;
    :goto_0
    return-object v5

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1165
    const/4 v5, 0x0

    goto :goto_0

    .line 1161
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #version:Ljava/lang/StringBuffer;
    .restart local v4       #version:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #version:Ljava/lang/StringBuffer;
    .restart local v3       #version:Ljava/lang/StringBuffer;
    goto :goto_1
.end method

.method private getDiagSoftVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sodftId"
    .parameter "lanId"

    .prologue
    .line 1216
    new-instance v1, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getMaxVersionBySoftId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    .local v0, version:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1218
    const-string/jumbo v1, "V00.00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1219
    const-string/jumbo v0, ""

    .line 1222
    :cond_0
    return-object v0
.end method

.method private getFirmwareVersion()Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0x56

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 1173
    const/4 v6, 0x0

    .line 1175
    .local v6, version:Ljava/lang/StringBuffer;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;

    invoke-static {v8}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVehiclesZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1176
    .local v3, filePath:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "Diagnostic/Configure/Download/DOWNLOAD.ini"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1177
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1178
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1207
    :goto_0
    return-object v7

    .line 1181
    :cond_0
    const/4 v4, 0x0

    .line 1183
    .local v4, fileStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4           #fileStream:Ljava/io/FileInputStream;
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    .restart local v4       #fileStream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 1190
    .local v5, properties:Ljava/util/Properties;
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1196
    new-instance v6, Ljava/lang/StringBuffer;

    .end local v6           #version:Ljava/lang/StringBuffer;
    const-string/jumbo v7, "Version"

    invoke-virtual {v5, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1197
    .restart local v6       #version:Ljava/lang/StringBuffer;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1198
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-eq v7, v11, :cond_1

    .line 1199
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x76

    if-eq v7, v8, :cond_1

    .line 1200
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1207
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1184
    .end local v4           #fileStream:Ljava/io/FileInputStream;
    .end local v5           #properties:Ljava/util/Properties;
    :catch_0
    move-exception v1

    .line 1185
    .local v1, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1191
    .end local v1           #e1:Ljava/io/FileNotFoundException;
    .restart local v4       #fileStream:Ljava/io/FileInputStream;
    .restart local v5       #properties:Ljava/util/Properties;
    :catch_1
    move-exception v0

    .line 1192
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getPublicSoftVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ID"

    .prologue
    .line 1090
    const/4 v0, 0x0

    .line 1091
    .local v0, version:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1138
    .end local v0           #version:Ljava/lang/String;
    .local v1, version:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1095
    .end local v1           #version:Ljava/lang/String;
    .restart local v0       #version:Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "X-431 PAD II USA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1096
    const-string/jumbo v2, "X-431 PAD II"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1097
    const-string/jumbo v2, "X431 Pro APP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1098
    const-string/jumbo v2, "X431 Pro3 APP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1099
    const-string/jumbo v2, "X431 PRO3 HD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1100
    const-string/jumbo v2, "Maximus2.0APK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1101
    const-string/jumbo v2, "MaxGo Application"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1102
    const-string/jumbo v2, "ScanPad071"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1103
    const-string/jumbo v2, "ScanPad101"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1104
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getAPPVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    .line 1138
    .end local v0           #version:Ljava/lang/String;
    .restart local v1       #version:Ljava/lang/String;
    goto :goto_0

    .line 1106
    .end local v1           #version:Ljava/lang/String;
    .restart local v0       #version:Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "DOWNLOAD_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1107
    const-string/jumbo v2, "DOWNLOADBIN_X431 Pro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1108
    const-string/jumbo v2, "DOWNLOADBIN_X431 Pro3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1109
    const-string/jumbo v2, "DOWNLOAD_MAXIMUS2.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1110
    const-string/jumbo v2, "DOWNLOAD_MaxGo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1111
    const-string/jumbo v2, "ScanPad071 firmware"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1112
    const-string/jumbo v2, "ScanPad101 firmware"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1113
    const-string/jumbo v2, "DOWNLOADHEX_X431 HD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1114
    :cond_4
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 1115
    goto :goto_1

    .line 1116
    :cond_5
    const-string/jumbo v2, "BatteryTest_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1117
    const-string/jumbo v2, "BatteryTest_X431Pro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1118
    const-string/jumbo v2, "BatteryTest_MAXIMUS2.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1119
    :cond_6
    const-string/jumbo v2, "com.cnlaunch.batterytest"

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getAPPVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    goto :goto_1

    .line 1121
    :cond_7
    const-string/jumbo v2, "SensorApp_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1122
    const-string/jumbo v2, "SensorApp_X431Pro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1123
    const-string/jumbo v2, "Sensor_MAXIMUS2.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1124
    :cond_8
    const-string/jumbo v2, "com.cnlaunch.sensor"

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getAPPVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1125
    goto/16 :goto_1

    .line 1126
    :cond_9
    const-string/jumbo v2, "Oscilloscope_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1127
    const-string/jumbo v2, "Oscilloscope_X431Pro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1128
    const-string/jumbo v2, "Oscilloscope_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1129
    const-string/jumbo v2, "Oscilloscope_MAXIMUS2.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1130
    :cond_a
    const-string/jumbo v2, "com.cnlaunch.oscilloscope"

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getAPPVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    goto/16 :goto_1

    .line 1132
    :cond_b
    const-string/jumbo v2, "Ignition_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1133
    const-string/jumbo v2, "Ignition_X431Pro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1134
    const-string/jumbo v2, "Ignition_MAXIMUS2.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1135
    :cond_c
    const-string/jumbo v2, "com.cnlaunch.ignition"

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getAPPVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private initParameter()V
    .locals 2

    .prologue
    .line 884
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    sget-object v0, Lcom/cnlaunch/framework/utils/lang/Lang;->TW:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLangId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->lanId:Ljava/lang/String;

    .line 887
    sget-object v0, Lcom/cnlaunch/framework/utils/lang/Lang;->EN:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLangId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->defaultLanId:Ljava/lang/String;

    .line 902
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "serialNo"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;

    .line 903
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->cc:Ljava/lang/String;

    .line 905
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->refreshSN()V

    .line 906
    return-void

    .line 889
    :cond_0
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    sget-object v0, Lcom/cnlaunch/framework/utils/lang/Lang;->HK:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLangId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->lanId:Ljava/lang/String;

    .line 891
    sget-object v0, Lcom/cnlaunch/framework/utils/lang/Lang;->EN:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLangId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->defaultLanId:Ljava/lang/String;

    goto :goto_0

    .line 894
    :cond_1
    sget-object v0, Lcom/cnlaunch/framework/utils/lang/Lang;->CN:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLangId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->lanId:Ljava/lang/String;

    .line 895
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->lanId:Ljava/lang/String;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->defaultLanId:Ljava/lang/String;

    goto :goto_0

    .line 899
    :cond_2
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLangId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->lanId:Ljava/lang/String;

    .line 900
    sget-object v0, Lcom/cnlaunch/framework/utils/lang/Lang;->EN:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLangId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->defaultLanId:Ljava/lang/String;

    goto :goto_0
.end method

.method private initUIHandler()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    .line 456
    return-void
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 215
    const v3, 0x7f0704ea

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->setTitle(I)V

    .line 217
    new-instance v3, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mNormalAdapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    .line 218
    new-instance v3, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mExpiredAdapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;

    .line 219
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mNormalAdapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    .line 220
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContentView:Landroid/view/View;

    const v4, 0x7f0d01e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->pull_refresh_listview:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    .line 221
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->pull_refresh_listview:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->pull_refresh_listview:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v3, p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 223
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->pull_refresh_listview:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContentView:Landroid/view/View;

    const v4, 0x7f0d04ca

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_upgrade_num:Landroid/widget/TextView;

    .line 226
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_upgrade_num:Landroid/widget/TextView;

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "0"

    invoke-virtual {p0, v4, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getUpgradeNum(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContentView:Landroid/view/View;

    const v4, 0x7f0d04c3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    .line 228
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContentView:Landroid/view/View;

    const v4, 0x7f0d04cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;

    .line 229
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;

    invoke-virtual {v3, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContentView:Landroid/view/View;

    const v4, 0x7f0d04cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_download:Landroid/widget/Button;

    .line 231
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContentView:Landroid/view/View;

    const v4, 0x7f0d04cb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_remarks:Landroid/widget/TextView;

    .line 235
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 236
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    .line 237
    new-instance v3, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeAction:Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

    .line 238
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->initUIHandler()V

    .line 239
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->initParameter()V

    .line 241
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->updateSNList()V

    .line 242
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 243
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020170

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 244
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const/16 v3, 0x13

    const/16 v4, 0xb

    invoke-virtual {v0, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 245
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v0, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "login_change_serialno"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, filter:Landroid/content/IntentFilter;
    new-instance v3, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$2;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->SNChangedBroadcast:Landroid/content/BroadcastReceiver;

    .line 271
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->SNChangedBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->checkUserAndToken()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 274
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "iSGetSerialNumberFailed"

    invoke-virtual {v3, v4, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 276
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 249
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 280
    .restart local v1       #filter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f07058d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    const/16 v3, 0x835

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->request(I)V

    goto :goto_1
.end method

.method private refreshSN()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 909
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 910
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 911
    return-void
.end method

.method private refreshUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 914
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 915
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 916
    return-void
.end method

.method private setSN(Ljava/lang/String;)V
    .locals 3
    .parameter "sn"

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;

    .line 1390
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "serialNo"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "need_refresh"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 1392
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->refreshSN()V

    .line 1393
    return-void
.end method

.method private sortHistoryList()V
    .locals 2

    .prologue
    .line 1069
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->historylist:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1082
    :goto_0
    return-void

    .line 1073
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$9;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$9;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V

    .line 1081
    .local v0, comp:Ljava/util/Comparator;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->historylist:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private sortUpgradeList()V
    .locals 5

    .prologue
    .line 980
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 1062
    :goto_0
    return-void

    .line 994
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$PinyinComparator;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$PinyinComparator;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V

    .line 995
    .local v0, comp1:Ljava/util/Comparator;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 999
    new-instance v1, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$6;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$6;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V

    .line 1021
    .local v1, comp2:Ljava/util/Comparator;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1025
    new-instance v3, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$7;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$7;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V

    .line 1041
    .local v3, comp4:Ljava/util/Comparator;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1045
    new-instance v2, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$8;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$8;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V

    .line 1061
    .local v2, comp3:Ljava/util/Comparator;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private updateSNList()V
    .locals 8

    .prologue
    .line 1352
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    if-nez v5, :cond_0

    .line 1353
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    .line 1355
    :cond_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    if-nez v5, :cond_1

    .line 1356
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 1359
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v6, "serialNo"

    invoke-virtual {v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1360
    .local v3, currentSN:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v6, "user_id"

    invoke-virtual {v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1361
    .local v2, currentCC:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->cc:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1362
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mIsNeedRefresh:Z

    .line 1364
    :cond_3
    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;

    .line 1365
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->cc:Ljava/lang/String;

    .line 1366
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v6, "serialNo_Prefix"

    invoke-virtual {v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo_Prefix:Ljava/lang/String;

    .line 1368
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->loadAll()Ljava/util/List;

    move-result-object v1

    .line 1369
    .local v1, allSerialNumberListTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1370
    .local v0, allSerialNumberList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->userSerialNumberList:Ljava/util/List;

    .line 1372
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1377
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1382
    return-void

    .line 1372
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 1373
    .local v4, sn:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo_Prefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1374
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1377
    .end local v4           #sn:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 1378
    .restart local v4       #sn:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getIsMine()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1379
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 18
    .parameter "requestCode"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 461
    packed-switch p1, :pswitch_data_0

    .line 580
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v10

    :cond_1
    :goto_0
    return-object v10

    .line 464
    :pswitch_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mIsNeedRefresh:Z

    .line 465
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I

    .line 466
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeTotal:I

    .line 467
    new-instance v12, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->update(Ljava/lang/String;)V

    .line 468
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->checkUserAndToken()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 471
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->initParameter()V

    .line 473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    move-result-object v2

    .line 474
    .local v2, configDB:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v12

    const-string/jumbo v13, "enable_breakpointresume"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 477
    sget-object v12, Lcom/cnlaunch/framework/common/KeyConstant;->publicsoft_breakpoint_action:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->publicsoftUrl:Ljava/lang/String;

    .line 478
    sget-object v12, Lcom/cnlaunch/framework/common/KeyConstant;->diagsoft_breakpoit_action:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->diagsoftUrl:Ljava/lang/String;

    .line 485
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeAction:Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->lanId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->defaultLanId:Ljava/lang/String;

    invoke-virtual {v12, v13, v14, v15}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->queryLatestPublicSofts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;

    move-result-object v10

    .line 486
    .local v10, res:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;->getCode()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->isSuccess(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 487
    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;->getX431PadSoftList()Ljava/util/List;

    move-result-object v8

    .line 488
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_1

    .line 489
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_1

    .line 490
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 491
    .local v1, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    if-nez v1, :cond_3

    .line 489
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 481
    .end local v1           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    .end local v7           #i:I
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    .end local v10           #res:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    :cond_2
    sget-object v12, Lcom/cnlaunch/framework/common/KeyConstant;->publicsoft_download:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->publicsoftUrl:Ljava/lang/String;

    .line 482
    sget-object v12, Lcom/cnlaunch/framework/common/KeyConstant;->diagsoft_download_ex:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->diagsoftUrl:Ljava/lang/String;

    goto :goto_1

    .line 494
    .restart local v1       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    .restart local v7       #i:I
    .restart local v8       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    .restart local v10       #res:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    :cond_3
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getPublicSoftVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 495
    .local v9, maxOldVersion:Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setMaxOldVersion(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/cnlaunch/x431pro/utils/StringUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 497
    move-object/from16 v0, p0

    iget v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I

    .line 498
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setChecked(Z)V

    .line 503
    :goto_4
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "DOWNLOAD_X431PADII"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 504
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "DOWNLOAD_MaxGo"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 505
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "DOWNLOAD_MAXIMUS2.0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 506
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "ScanPad071 firmware"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 507
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "ScanPad101 firmware"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 508
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "DOWNLOADBIN_X431 Pro"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 509
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "DOWNLOADBIN_X431 Pro3"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 510
    :cond_4
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setMust(Z)V

    .line 514
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->publicsoftUrl:Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setUrl(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "DOWNLOAD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 516
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "firmware"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 517
    :cond_6
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setType(I)V

    goto/16 :goto_3

    .line 501
    :cond_7
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setMust(Z)V

    goto/16 :goto_4

    .line 519
    :cond_8
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setType(I)V

    goto/16 :goto_3

    .line 528
    .end local v1           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    .end local v2           #configDB:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;
    .end local v7           #i:I
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    .end local v9           #maxOldVersion:Ljava/lang/String;
    .end local v10           #res:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->initParameter()V

    .line 529
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeAction:Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->cc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->lanId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->defaultLanId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->queryLatestDiagSofts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;

    move-result-object v11

    .line 530
    .local v11, res1:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;->getCode()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->isSuccess(I)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 531
    invoke-virtual {v11}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;->getX431PadSoftList()Ljava/util/List;

    move-result-object v8

    .line 532
    .restart local v8       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    if-eqz v8, :cond_9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_9

    .line 533
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mIsExpired:Z

    .line 534
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_a

    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    :cond_9
    move-object v10, v11

    .line 569
    goto/16 :goto_0

    .line 534
    .restart local v8       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 535
    .restart local v1       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getLanId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLangCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getDiagSoftVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 536
    .restart local v9       #maxOldVersion:Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setMaxOldVersion(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v9}, Lcom/cnlaunch/x431pro/utils/StringUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 538
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeNum:I

    .line 539
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setChecked(Z)V

    .line 542
    :cond_b
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "yyyy-MM-dd"

    invoke-direct {v4, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 544
    .local v4, dateFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFreeUseEndTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 545
    .local v6, end:Ljava/util/Date;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getServerCurrentTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 546
    .local v3, current:Ljava/util/Date;
    invoke-virtual {v6, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 547
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mIsExpired:Z

    .line 548
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setExpired(Z)V

    .line 549
    const v13, 0x7f070597

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setRemarks(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    .end local v3           #current:Ljava/util/Date;
    .end local v6           #end:Ljava/util/Date;
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tag:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "FreeUseEndTime: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFreeUseEndTime()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 561
    const-string/jumbo v17, ", ServerCurrentTime: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getServerCurrentTime()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 560
    invoke-static {v13, v14}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    const/4 v13, 0x3

    invoke-virtual {v1, v13}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setType(I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->diagsoftUrl:Ljava/lang/String;

    invoke-virtual {v1, v13}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 556
    :catch_0
    move-exception v5

    .line 557
    .local v5, e:Ljava/text/ParseException;
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_6

    .line 573
    .end local v1           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    .end local v4           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v5           #e:Ljava/text/ParseException;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    .end local v9           #maxOldVersion:Ljava/lang/String;
    .end local v11           #res1:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->initParameter()V

    .line 574
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeAction:Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->serialNo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->softId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->lanId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->defaultLanId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->queryHistoryDiagSofts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;

    move-result-object v10

    goto/16 :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x835
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getUpgradeNum(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .parameter "min"
    .parameter "max"

    .prologue
    .line 872
    const v2, 0x7f070572

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, info:Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 877
    .local v1, style:Landroid/text/SpannableStringBuilder;
    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 164
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->initViews()V

    .line 165
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const v9, 0x7f0704e5

    const/4 v8, 0x1

    .line 744
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 747
    :sswitch_0
    const/4 v1, 0x0

    .line 748
    .local v1, checked:Z
    invoke-virtual {p0, v9}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 749
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;

    invoke-virtual {v7}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 748
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 749
    if-eqz v6, :cond_2

    .line 750
    const/4 v1, 0x0

    .line 751
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;

    const v7, 0x7f0704e4

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(I)V

    .line 752
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 759
    :goto_1
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 760
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 765
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->setList(Ljava/util/List;)V

    .line 766
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 754
    :cond_2
    const/4 v1, 0x1

    .line 755
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setText(I)V

    .line 756
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;

    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 760
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 761
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isMust()Z

    move-result v7

    if-nez v7, :cond_1

    .line 762
    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setChecked(Z)V

    goto :goto_2

    .line 772
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    .end local v1           #checked:Z
    :sswitch_1
    const/4 v3, 0x1

    .line 773
    .local v3, hasUpgrade:Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v2, downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 775
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 784
    :cond_5
    if-eqz v3, :cond_7

    .line 785
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0704e6

    invoke-static {v6, v7}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 775
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 776
    .restart local v0       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 777
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    const/4 v3, 0x0

    goto :goto_3

    .line 787
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_7
    invoke-static {}, Lcom/cnlaunch/framework/common/LruCacheManager;->getInstance()Lcom/cnlaunch/framework/common/LruCacheManager;

    move-result-object v6

    sget-object v7, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->DOWNLOADLIST_KEY:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/cnlaunch/framework/common/LruCacheManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 788
    const-class v6, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->replaceFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 793
    .end local v2           #downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    .end local v3           #hasUpgrade:Z
    :sswitch_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->updateSNList()V

    .line 794
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v8, :cond_0

    .line 797
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v5, spinnerlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_8

    .line 802
    new-instance v4, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;-><init>(Landroid/content/Context;)V

    .line 803
    .local v4, spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    new-instance v6, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$5;

    invoke-direct {v6, p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$5;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 820
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v5}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->show(Landroid/view/View;Ljava/util/List;)V

    goto/16 :goto_0

    .line 798
    .end local v4           #spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 799
    .local v0, bean:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 744
    :sswitch_data_0
    .sparse-switch
        0x7f0d04c3 -> :sswitch_2
        0x7f0d04cc -> :sswitch_0
        0x7f0d04cd -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 180
    const v0, 0x7f0301ad

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 1
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 708
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 709
    packed-switch p1, :pswitch_data_0

    .line 717
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 718
    return-void

    .line 713
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mIsNeedRefresh:Z

    .line 714
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->pull_refresh_listview:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x835
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 830
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tag:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "touch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 832
    add-int/lit8 p3, p3, -0x1

    .line 833
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 834
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isMust()Z

    move-result v1

    if-nez v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 838
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setChecked(Z)V

    .line 842
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->selectAllChanged()V

    .line 843
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->setList(Ljava/util/List;)V

    .line 844
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->notifyDataSetChanged()V

    .line 849
    :cond_1
    :goto_1
    return-void

    .line 840
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onRefresh(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, refreshView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<Landroid/widget/ListView;>;"
    const/4 v3, 0x0

    .line 722
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->checkUserAndToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->updateSNList()V

    .line 724
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 725
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "iSGetSerialNumberFailed"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 727
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 737
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->setList(Ljava/util/List;)V

    .line 738
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->notifyDataSetChanged()V

    .line 739
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->pull_refresh_listview:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 740
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f07058d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 732
    const/16 v1, 0x835

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->request(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 185
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 186
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->updateSNList()V

    .line 187
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 188
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020170

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 189
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const/16 v2, 0x13

    const/16 v3, 0xb

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 190
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mIsNeedRefresh:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->checkUserAndToken()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "iSGetSerialNumberFailed"

    invoke-virtual {v2, v3, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 201
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f07058d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    const/16 v2, 0x835

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->request(I)V

    goto :goto_1
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 10
    .parameter "requestCode"
    .parameter "result"

    .prologue
    const/4 v9, 0x5

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 585
    packed-switch p1, :pswitch_data_0

    .line 704
    :goto_0
    return-void

    .line 588
    :pswitch_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    .line 589
    if-eqz p2, :cond_1

    move-object v2, p2

    .line 590
    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;

    .line 591
    .local v2, res:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;->getCode()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->isSuccess(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 592
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;->getX431PadSoftList()Ljava/util/List;

    move-result-object v5

    .line 593
    .local v5, x431PadSoftList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    if-eqz v5, :cond_0

    .line 594
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 598
    .end local v5           #x431PadSoftList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    :cond_0
    const/16 v6, 0x836

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->request(I)V

    goto :goto_0

    .line 601
    .end local v2           #res:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    :cond_1
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->pull_refresh_listview:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 602
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 609
    :pswitch_1
    if-eqz p2, :cond_3

    move-object v2, p2

    .line 610
    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;

    .line 611
    .local v2, res:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;->getCode()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->isSuccess(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 612
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;->getX431PadSoftList()Ljava/util/List;

    move-result-object v5

    .line 613
    .restart local v5       #x431PadSoftList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 632
    .end local v2           #res:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    .end local v5           #x431PadSoftList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->sortUpgradeList()V

    .line 633
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeTotal:I

    .line 634
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "CN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 635
    iget-boolean v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mIsExpired:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mExpiredAdapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;

    :goto_3
    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    .line 636
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->pull_refresh_listview:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 638
    :cond_4
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->setList(Ljava/util/List;)V

    .line 639
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->notifyDataSetChanged()V

    .line 640
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->pull_refresh_listview:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 641
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->refreshUI()V

    .line 642
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 643
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->expiredRemind()V

    goto/16 :goto_0

    .line 613
    .restart local v2       #res:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    .restart local v5       #x431PadSoftList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 614
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "autosearch"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 616
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 622
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    .end local v5           #x431PadSoftList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    :cond_6
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;->getCode()I

    move-result v6

    if-ne v8, v6, :cond_7

    .line 623
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 624
    .local v1, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 627
    .end local v1           #msg:Landroid/os/Message;
    :cond_7
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;->getMsg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 635
    .end local v2           #res:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    :cond_8
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mNormalAdapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    goto :goto_3

    .line 648
    :pswitch_2
    if-eqz p2, :cond_a

    move-object v2, p2

    .line 649
    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;

    .line 650
    .local v2, res:Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;->getCode()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->isSuccess(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 651
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v4, spinnerlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;->getX431PadSoftList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->historylist:Ljava/util/List;

    .line 653
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->historylist:Ljava/util/List;

    if-eqz v6, :cond_9

    .line 654
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->sortHistoryList()V

    .line 655
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->historylist:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_b

    .line 660
    :cond_9
    new-instance v3, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;-><init>(Landroid/content/Context;)V

    .line 661
    .local v3, spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    new-instance v6, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;

    invoke-direct {v6, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$4;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V

    invoke-virtual {v3, v6}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 687
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemClickView:Landroid/view/View;

    invoke-virtual {v3, v6, v4}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->show(Landroid/view/View;Ljava/util/List;)V

    .line 698
    .end local v2           #res:Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;
    .end local v3           #spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    .end local v4           #spinnerlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    :goto_5
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 655
    .restart local v2       #res:Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;
    .restart local v4       #spinnerlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 656
    .restart local v0       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 689
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    .end local v4           #spinnerlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;->getCode()I

    move-result v6

    if-ne v8, v6, :cond_d

    .line 690
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 691
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 694
    .end local v1           #msg:Landroid/os/Message;
    :cond_d
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;->getMsg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x835
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 169
    new-instance v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method public queryHistoryDiagSofts(Landroid/view/View;Ljava/lang/String;I)V
    .locals 3
    .parameter "view"
    .parameter "softId"
    .parameter "position"

    .prologue
    .line 858
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->softId:Ljava/lang/String;

    .line 859
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemClickView:Landroid/view/View;

    .line 860
    iput p3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->itemPosition:I

    .line 861
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f07058d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 862
    const/16 v0, 0x837

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->request(I)V

    .line 863
    return-void
.end method

.method public selectAllChanged()V
    .locals 3

    .prologue
    .line 1399
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->upgradeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1406
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;

    const v2, 0x7f0704e4

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(I)V

    .line 1407
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1408
    :goto_0
    return-void

    .line 1399
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 1400
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1401
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;

    const v2, 0x7f0704e5

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(I)V

    .line 1402
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->radio_select_all:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
