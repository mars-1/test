.class public Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;
.super Lde/greenrobot/dao/AbstractDaoSession;
.source "ConfigDaoSession.java"


# instance fields
.field private final configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

.field private final configInfoDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 2
    .parameter "db"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lde/greenrobot/dao/identityscope/IdentityScopeType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lde/greenrobot/dao/AbstractDao",
            "<**>;>;",
            "Lde/greenrobot/dao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, daoConfigMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Class<+Lde/greenrobot/dao/AbstractDao<**>;>;Lde/greenrobot/dao/internal/DaoConfig;>;"
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 27
    const-class v0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;->configInfoDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 28
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;->configInfoDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 30
    new-instance v0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;->configInfoDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;->configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    .line 32
    const-class v0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;->configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;->configInfoDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 37
    return-void
.end method

.method public getConfigInfoDao()Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;->configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    return-object v0
.end method
