.class public Lcom/ifoer/pro/expeditionphone/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;
    }
.end annotation


# instance fields
.field private final REQ_CHECK_FIRST_RUN_WITH_CACHE:I

.field private final REQ_CREATE_SHORTCUT:I

.field private final REQ_INIT_CODE:I

.field private isRequest:Z

.field private isTimeOut:Z

.field private mCommandHandler:Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;

.field private mCommandHandlerThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const-class v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->tag:Ljava/lang/String;

    .line 55
    const/16 v0, 0x3f1

    iput v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->REQ_INIT_CODE:I

    .line 56
    const/16 v0, 0x3f0

    iput v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->REQ_CREATE_SHORTCUT:I

    .line 57
    const/16 v0, 0x3f2

    iput v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->REQ_CHECK_FIRST_RUN_WITH_CACHE:I

    .line 59
    iput-boolean v1, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->isTimeOut:Z

    .line 60
    iput-boolean v1, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->isRequest:Z

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    return-void
.end method

.method static synthetic access$2(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->isRequest:Z

    return-void
.end method

.method static synthetic access$4(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->isTimeOut:Z

    return v0
.end method

.method static synthetic access$5(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->createShortCut()V

    return-void
.end method

.method static synthetic access$6(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mCommandHandler:Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->isTimeOut:Z

    return-void
.end method

.method static synthetic access$8(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->isRequest:Z

    return v0
.end method

.method private addShortcut()V
    .locals 5

    .prologue
    .line 165
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v1, intent:Landroid/content/Intent;
    const-class v3, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v2, shortcut:Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.shortcut.NAME"

    const/high16 v4, 0x7f07

    invoke-virtual {p0, v4}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string/jumbo v3, "duplicate"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string/jumbo v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    const v3, 0x7f02023b

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 174
    .local v0, iconRes:Landroid/content/Intent$ShortcutIconResource;
    const-string/jumbo v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v2}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method private createShortCut()V
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v0, "com.huawei.android.launcher"

    invoke-virtual {p0, p0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->getLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->hasShortcut(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->addShortcut()V

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->copyAssetsFileToLocal(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method private hasShortcut(Landroid/content/Context;)Z
    .locals 11
    .parameter "cx"

    .prologue
    const/4 v2, 0x0

    .line 122
    const/4 v8, 0x0

    .line 124
    .local v8, result:Z
    const/4 v9, 0x0

    .line 126
    .local v9, title:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 127
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v7, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 131
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 132
    const-string/jumbo v10, "content://com.android.launcher.settings/favorites?notify=true"

    .line 136
    .local v10, uriStr:Ljava/lang/String;
    :goto_1
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 137
    .local v1, CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "title=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    const/4 v8, 0x1

    .line 141
    :cond_0
    return v8

    .line 134
    .end local v1           #CONTENT_URI:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v10           #uriStr:Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, "content://com.android.launcher2.settings/favorites?notify=true"

    .restart local v10       #uriStr:Ljava/lang/String;
    goto :goto_1

    .line 128
    .end local v10           #uriStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public compatibleOldUserInfo()V
    .locals 24

    .prologue
    .line 478
    const/4 v6, 0x1

    .line 479
    .local v6, isFirstRun:Z
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v19

    const-string/jumbo v20, "serialNo_Prefix"

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 480
    .local v15, serialNo_Prefix:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v19

    const-string/jumbo v20, "serialNo"

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 481
    .local v13, serialNo:Ljava/lang/String;
    const-string/jumbo v19, "WelcomeActivity"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "serialNo="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 484
    const-string/jumbo v19, "expedition"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 485
    .local v17, sharedPreferences:Landroid/content/SharedPreferences;
    const-string/jumbo v18, ""

    .line 486
    .local v18, username:Ljava/lang/String;
    const-string/jumbo v12, ""

    .line 487
    .local v12, password:Ljava/lang/String;
    const-string/jumbo v14, ""

    .line 488
    .local v14, serialNoKey:Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 489
    const-string/jumbo v19, "username"

    const-string/jumbo v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 490
    const-string/jumbo v19, "password"

    const-string/jumbo v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 491
    const-string/jumbo v19, "serialNoKey"

    const-string/jumbo v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 492
    const-string/jumbo v19, "WelcomeActivity"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "PADII 1.03.007 username="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "password="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "serialNoKey="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    :cond_0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_3

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "login_username"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "login_password"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 500
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v16

    .line 503
    .local v16, serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;
    const/4 v5, 0x0

    .line 504
    .local v5, entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual/range {v16 .. v16}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->deleteAll()V

    .line 505
    new-instance v5, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .end local v5           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-direct {v5}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;-><init>()V

    .line 506
    .restart local v5       #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setCc(Ljava/lang/String;)V

    .line 507
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 508
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 509
    invoke-virtual {v5, v14}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setSerialNo(Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->insert(Ljava/lang/Object;)J

    .line 511
    move-object v13, v14

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v19

    const-string/jumbo v20, "serialNo"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v19

    const-string/jumbo v20, "need_refresh"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 516
    .end local v5           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    .end local v16           #serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;
    :cond_1
    if-eqz v17, :cond_2

    .line 517
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 518
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v19, "username"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 519
    const-string/jumbo v19, "password"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 520
    const-string/jumbo v19, "serialNoKey"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 521
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 524
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const/4 v6, 0x0

    .line 527
    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 528
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getLocalSerialList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 529
    .local v8, localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v9, localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_5

    .line 532
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_7

    .line 540
    .end local v8           #localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    if-eqz v6, :cond_8

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v19

    const-string/jumbo v20, "login_state"

    const-string/jumbo v21, "0"

    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_6
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v19

    const-string/jumbo v20, "isFirstRun"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 557
    return-void

    .line 532
    .restart local v8       #localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9       #localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 533
    .local v3, bean:Ljava/lang/String;
    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 534
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 543
    .end local v3           #bean:Ljava/lang/String;
    .end local v8           #localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v19

    const-string/jumbo v20, "login_username"

    const-string/jumbo v21, ""

    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 544
    .local v11, logUserName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v19

    const-string/jumbo v20, "login_password"

    const-string/jumbo v21, ""

    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 545
    .local v10, logPassword:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_6

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v19

    sget-object v20, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Lde/greenrobot/dao/query/WhereCondition;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v7

    .line 548
    .local v7, listTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_6

    .line 549
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 550
    .restart local v5       #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getIsMine()Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-nez v19, :cond_6

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v19

    const-string/jumbo v20, "login_state"

    const-string/jumbo v21, "0"

    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 153
    .local v1, res:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_0

    .line 154
    const-string/jumbo v2, ""

    .line 160
    :goto_0
    return-object v2

    .line 157
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    const-string/jumbo v2, ""

    goto :goto_0

    .line 160
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/high16 v3, 0x40

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->finish()V

    .line 104
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "is_screen_switch"

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "Orientation"

    invoke-virtual {v2, v3, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 77
    invoke-virtual {p0, v4}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->setRequestedOrientation(I)V

    .line 86
    :goto_1
    invoke-virtual {p0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    .line 87
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "command"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mCommandHandlerThread:Landroid/os/HandlerThread;

    .line 88
    iget-object v2, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mCommandHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v2, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;

    iget-object v3, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mCommandHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;-><init>(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mCommandHandler:Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;

    .line 90
    iget-object v2, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mCommandHandler:Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 91
    .local v0, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mCommandHandler:Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;

    invoke-virtual {v2, v0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$CommandHandler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v2, 0x7f0300f9

    invoke-virtual {p0, v2}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->setContentView(I)V

    .line 94
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1, v5}, Ljava/util/Timer;-><init>(Z)V

    .line 95
    .local v1, timer:Ljava/util/Timer;
    new-instance v2, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$1;

    invoke-direct {v2, p0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$1;-><init>(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)V

    .line 103
    const-wide/16 v3, 0x3e8

    .line 95
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 78
    .end local v0           #message:Landroid/os/Message;
    .end local v1           #timer:Ljava/util/Timer;
    :cond_1
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "Orientation"

    invoke-virtual {v2, v3, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 79
    invoke-virtual {p0, v5}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 81
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p0, v4}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mCommandHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mCommandHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 469
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 470
    return-void
.end method

.method public startHome()V
    .locals 33

    .prologue
    .line 183
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "serialNo"

    invoke-virtual/range {v28 .. v29}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, currentSerialNo:Ljava/lang/String;
    new-instance v4, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    .line 185
    .local v4, carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->isNeedInit()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 186
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->initCarIcon()Z

    .line 187
    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->update(Ljava/lang/String;)V

    .line 190
    :cond_0
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v28

    if-eqz v28, :cond_12

    .line 191
    const/4 v9, 0x1

    .line 192
    .local v9, isFirstRun:Z
    const/16 v19, 0x0

    .line 193
    .local v19, productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    const/16 v21, 0x0

    .line 194
    .local v21, registerAndLoadInfomation:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "serialNo_Prefix"

    invoke-virtual/range {v28 .. v29}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 195
    .local v24, serialNo_Prefix:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "serialNo"

    invoke-virtual/range {v28 .. v29}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 196
    .local v22, serialNo:Ljava/lang/String;
    const-string/jumbo v28, "WelcomeActivity"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "serialNo="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 204
    const-string/jumbo v28, "expedition"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 205
    .local v26, sharedPreferences:Landroid/content/SharedPreferences;
    const-string/jumbo v27, ""

    .line 206
    .local v27, username:Ljava/lang/String;
    const-string/jumbo v18, ""

    .line 207
    .local v18, password:Ljava/lang/String;
    const-string/jumbo v23, ""

    .line 208
    .local v23, serialNoKey:Ljava/lang/String;
    if-eqz v26, :cond_1

    .line 209
    const-string/jumbo v28, "username"

    const-string/jumbo v29, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 210
    const-string/jumbo v28, "password"

    const-string/jumbo v29, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 211
    const-string/jumbo v28, "serialNoKey"

    const-string/jumbo v29, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 212
    const-string/jumbo v28, "WelcomeActivity"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "PADII 1.03.007 username="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "password="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "serialNoKey="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_1
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_6

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    move-object/from16 v28, v0

    const-string/jumbo v29, "login_username"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    move-object/from16 v28, v0

    const-string/jumbo v29, "login_password"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getLocalSerialList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 220
    .local v14, localSerialListOld:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_3

    .line 221
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_2
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-nez v29, :cond_d

    .line 231
    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_5

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 232
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v25

    .line 235
    .local v25, serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;
    const/4 v7, 0x0

    .line 236
    .local v7, entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual/range {v25 .. v25}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->deleteAll()V

    .line 237
    new-instance v7, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .end local v7           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-direct {v7}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;-><init>()V

    .line 238
    .restart local v7       #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    const-string/jumbo v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setCc(Ljava/lang/String;)V

    .line 239
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsMine(Ljava/lang/Boolean;)V

    .line 240
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    .line 241
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setSerialNo(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->insert(Ljava/lang/Object;)J

    .line 243
    move-object/from16 v22, v23

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "serialNo"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "need_refresh"

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 248
    .end local v7           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    .end local v25           #serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;
    :cond_4
    new-instance v20, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    .local v20, productInformationOld:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setFirstRunFlag(Z)V

    .line 250
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setTryFlag(Z)V

    .line 251
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setSerialNo(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->save(Ljava/lang/String;)V

    .line 255
    .end local v20           #productInformationOld:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    :cond_5
    if-eqz v26, :cond_6

    .line 256
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 257
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v28, "username"

    const-string/jumbo v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string/jumbo v28, "password"

    const-string/jumbo v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    const-string/jumbo v28, "serialNoKey"

    const-string/jumbo v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v14           #localSerialListOld:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 264
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getLocalSerialList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 265
    .local v13, localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v15, localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_8

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_8

    .line 268
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_7
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-nez v29, :cond_e

    .line 274
    :cond_8
    if-eqz v15, :cond_9

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_9

    .line 275
    new-instance v19, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;

    .end local v19           #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    .restart local v19       #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    new-instance v21, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;

    .end local v21           #registerAndLoadInfomation:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    .end local v13           #localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21       #registerAndLoadInfomation:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    :cond_9
    :goto_2
    if-eqz v21, :cond_a

    if-eqz v19, :cond_a

    .line 284
    invoke-virtual/range {v21 .. v21}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->isRegisted()Z

    move-result v28

    if-nez v28, :cond_10

    invoke-virtual/range {v21 .. v21}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->getUserName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_10

    .line 285
    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->isFirstRun()Z

    move-result v9

    .line 289
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "NoDeviceWithIsFirstRun"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 291
    :cond_a
    if-nez v21, :cond_b

    if-nez v19, :cond_b

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "NoDeviceWithIsFirstRun"

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 293
    const/4 v9, 0x1

    .line 296
    :cond_b
    if-eqz v9, :cond_11

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "login_state"

    const-string/jumbo v30, "0"

    invoke-virtual/range {v28 .. v30}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_c
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "isFirstRun"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 318
    .end local v9           #isFirstRun:Z
    .end local v18           #password:Ljava/lang/String;
    .end local v19           #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    .end local v21           #registerAndLoadInfomation:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    .end local v22           #serialNo:Ljava/lang/String;
    .end local v23           #serialNoKey:Ljava/lang/String;
    .end local v24           #serialNo_Prefix:Ljava/lang/String;
    .end local v26           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v27           #username:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "is_guide"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v11

    .line 319
    .local v11, isGuide:Z
    const/4 v10, 0x1

    .line 320
    .local v10, isFirstRunWithCache:Z
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "isFirstRunWithCache"

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 321
    const/4 v10, 0x1

    .line 322
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "isFirstRunWithCache"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 326
    :goto_6
    if-eqz v11, :cond_14

    if-eqz v10, :cond_14

    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "guide_pages"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v28

    if-lez v28, :cond_14

    .line 327
    new-instance v8, Landroid/content/Intent;

    const-class v28, Lcom/cnlaunch/x431pro/activity/GuideActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->finish()V

    .line 335
    :goto_7
    return-void

    .line 221
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #isFirstRunWithCache:Z
    .end local v11           #isGuide:Z
    .restart local v9       #isFirstRun:Z
    .restart local v14       #localSerialListOld:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18       #password:Ljava/lang/String;
    .restart local v19       #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    .restart local v21       #registerAndLoadInfomation:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    .restart local v22       #serialNo:Ljava/lang/String;
    .restart local v23       #serialNoKey:Ljava/lang/String;
    .restart local v24       #serialNo_Prefix:Ljava/lang/String;
    .restart local v26       #sharedPreferences:Landroid/content/SharedPreferences;
    .restart local v27       #username:Ljava/lang/String;
    :cond_d
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    .local v3, bean:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 223
    new-instance v20, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v3}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    .restart local v20       #productInformationOld:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setFirstRunFlag(Z)V

    .line 225
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setTryFlag(Z)V

    .line 226
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setSerialNo(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->save(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    .end local v3           #bean:Ljava/lang/String;
    .end local v14           #localSerialListOld:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v20           #productInformationOld:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    .restart local v13       #localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15       #localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 269
    .restart local v3       #bean:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 270
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 279
    .end local v3           #bean:Ljava/lang/String;
    .end local v13           #localSerialList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #localSerialListTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    new-instance v19, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;

    .end local v19           #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    .restart local v19       #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    new-instance v21, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;

    .end local v21           #registerAndLoadInfomation:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v21       #registerAndLoadInfomation:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    goto/16 :goto_2

    .line 287
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 299
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "login_username"

    const-string/jumbo v30, ""

    invoke-virtual/range {v28 .. v30}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 300
    .local v17, logUserName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "login_password"

    const-string/jumbo v30, ""

    invoke-virtual/range {v28 .. v30}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 301
    .local v16, logPassword:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_c

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v28

    sget-object v29, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v29

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Lde/greenrobot/dao/query/WhereCondition;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v12

    .line 304
    .local v12, listTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_c

    .line 305
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 306
    .restart local v7       #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getIsMine()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_c

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "login_state"

    const-string/jumbo v30, "0"

    invoke-virtual/range {v28 .. v30}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 315
    .end local v7           #entity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    .end local v9           #isFirstRun:Z
    .end local v12           #listTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    .end local v16           #logPassword:Ljava/lang/String;
    .end local v17           #logUserName:Ljava/lang/String;
    .end local v18           #password:Ljava/lang/String;
    .end local v19           #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    .end local v21           #registerAndLoadInfomation:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    .end local v22           #serialNo:Ljava/lang/String;
    .end local v23           #serialNoKey:Ljava/lang/String;
    .end local v24           #serialNo_Prefix:Ljava/lang/String;
    .end local v26           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v27           #username:Ljava/lang/String;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->compatibleOldUserInfo()V

    .line 316
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v28

    const-string/jumbo v29, "isFirstRun"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 324
    .restart local v10       #isFirstRunWithCache:Z
    .restart local v11       #isGuide:Z
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 331
    :cond_14
    new-instance v8, Landroid/content/Intent;

    const-class v28, Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->finish()V

    goto/16 :goto_7
.end method
