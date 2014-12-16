.class public Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;
.super Lde/greenrobot/dao/AbstractDaoMaster;
.source "ConfigDaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster$DevOpenHelper;,
        Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 57
    const-class v0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 58
    return-void
.end method

.method public static createAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .parameter "db"
    .parameter "ifNotExists"

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 21
    return-void
.end method

.method public static dropAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .parameter "db"
    .parameter "ifExists"

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public newSession()Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lde/greenrobot/dao/identityscope/IdentityScopeType;->Session:Lde/greenrobot/dao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;
    .locals 3
    .parameter "type"

    .prologue
    .line 65
    new-instance v0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;->newSession()Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;->newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;

    move-result-object v0

    return-object v0
.end method
