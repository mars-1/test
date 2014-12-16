.class public Lcom/cnlaunch/newgolo/db/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field private static instance:Lcom/cnlaunch/newgolo/db/DBManager;


# instance fields
.field private DB_NAME:Ljava/lang/String;

.field private daoMaster:Lcom/cnlaunch/newgolo/db/DaoMaster;

.field private daoSession:Lcom/cnlaunch/newgolo/db/DaoSession;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v1, "GoloModule"

    iput-object v1, p0, Lcom/cnlaunch/newgolo/db/DBManager;->DB_NAME:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/cnlaunch/newgolo/db/DaoMaster$DevOpenHelper;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/db/DBManager;->DB_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/cnlaunch/newgolo/db/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 52
    .local v0, helper:Lcom/cnlaunch/newgolo/db/DaoMaster$OpenHelper;
    new-instance v1, Lcom/cnlaunch/newgolo/db/DaoMaster;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/DaoMaster$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cnlaunch/newgolo/db/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/db/DBManager;->daoMaster:Lcom/cnlaunch/newgolo/db/DaoMaster;

    .line 53
    iget-object v1, p0, Lcom/cnlaunch/newgolo/db/DBManager;->daoMaster:Lcom/cnlaunch/newgolo/db/DaoMaster;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/db/DaoMaster;->newSession()Lcom/cnlaunch/newgolo/db/DaoSession;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/db/DBManager;->daoSession:Lcom/cnlaunch/newgolo/db/DaoSession;

    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/DBManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    sget-object v0, Lcom/cnlaunch/newgolo/db/DBManager;->instance:Lcom/cnlaunch/newgolo/db/DBManager;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/cnlaunch/newgolo/db/DBManager;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/cnlaunch/newgolo/db/DBManager;->instance:Lcom/cnlaunch/newgolo/db/DBManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/cnlaunch/newgolo/db/DBManager;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/db/DBManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/newgolo/db/DBManager;->instance:Lcom/cnlaunch/newgolo/db/DBManager;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/cnlaunch/newgolo/db/DBManager;->instance:Lcom/cnlaunch/newgolo/db/DBManager;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDaoSession()Lcom/cnlaunch/newgolo/db/DaoSession;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/DBManager;->daoSession:Lcom/cnlaunch/newgolo/db/DaoSession;

    return-object v0
.end method

.method public setDaoSession(Lcom/cnlaunch/newgolo/db/DaoSession;)V
    .locals 0
    .parameter "daoSession"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/DBManager;->daoSession:Lcom/cnlaunch/newgolo/db/DaoSession;

    .line 62
    return-void
.end method
