.class public Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;
.super Lde/greenrobot/dao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster$DevOpenHelper;,
        Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x3


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 80
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 81
    const-class v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 82
    const-class v0, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 83
    const-class v0, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 84
    return-void
.end method

.method public static createAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .parameter "db"
    .parameter "ifNotExists"

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 28
    invoke-static {p0, p1}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 29
    invoke-static {p0, p1}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 30
    return-void
.end method

.method public static dropAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .parameter "db"
    .parameter "ifExists"

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 35
    invoke-static {p0, p1}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 36
    invoke-static {p0, p1}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public newSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lde/greenrobot/dao/identityscope/IdentityScopeType;->Session:Lde/greenrobot/dao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;
    .locals 3
    .parameter "type"

    .prologue
    .line 91
    new-instance v0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;->newSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/utils/db/base/DaoMaster;->newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v0

    return-object v0
.end method
