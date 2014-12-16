.class public Lcom/cnlaunch/x431pro/utils/db/base/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field private static instance:Lcom/cnlaunch/x431pro/utils/db/base/DBManager;


# instance fields
.field private DB_NAME:Ljava/lang/String;

.field private daoMaster:Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;

.field private daoSession:Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v1, "prodb"

    iput-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->DB_NAME:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster$DevOpenHelper;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->DB_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 51
    .local v0, helper:Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster$OpenHelper;
    new-instance v1, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->daoMaster:Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;

    .line 52
    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->daoMaster:Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;->newSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->daoSession:Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    .line 53
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    sget-object v0, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->instance:Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->instance:Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->instance:Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->instance:Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->daoSession:Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    return-object v0
.end method

.method public setDaoSession(Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;)V
    .locals 0
    .parameter "daoSession"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->daoSession:Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    .line 61
    return-void
.end method
