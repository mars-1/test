.class public Lcom/cnlaunch/newgolo/db/DaoMaster;
.super Lde/greenrobot/dao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/db/DaoMaster$DevOpenHelper;,
        Lcom/cnlaunch/newgolo/db/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x3


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 67
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 68
    const-class v0, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/db/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 69
    const-class v0, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/db/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 70
    const-class v0, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/db/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 71
    const-class v0, Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/db/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 72
    return-void
.end method

.method public static createAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .parameter "db"
    .parameter "ifNotExists"

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 26
    invoke-static {p0, p1}, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 27
    invoke-static {p0, p1}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 28
    invoke-static {p0, p1}, Lcom/cnlaunch/newgolo/db/RepairCustomerDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 29
    return-void
.end method

.method public static dropAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .parameter "db"
    .parameter "ifExists"

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 34
    invoke-static {p0, p1}, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 35
    invoke-static {p0, p1}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 36
    invoke-static {p0, p1}, Lcom/cnlaunch/newgolo/db/RepairCustomerDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public newSession()Lcom/cnlaunch/newgolo/db/DaoSession;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lcom/cnlaunch/newgolo/db/DaoSession;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/db/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lde/greenrobot/dao/identityscope/IdentityScopeType;->Session:Lde/greenrobot/dao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/cnlaunch/newgolo/db/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/newgolo/db/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/cnlaunch/newgolo/db/DaoSession;
    .locals 3
    .parameter "type"

    .prologue
    .line 79
    new-instance v0, Lcom/cnlaunch/newgolo/db/DaoSession;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/db/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/db/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/cnlaunch/newgolo/db/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/db/DaoMaster;->newSession()Lcom/cnlaunch/newgolo/db/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/db/DaoMaster;->newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/cnlaunch/newgolo/db/DaoSession;

    move-result-object v0

    return-object v0
.end method
