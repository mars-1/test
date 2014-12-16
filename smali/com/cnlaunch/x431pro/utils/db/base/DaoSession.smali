.class public Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;
.super Lde/greenrobot/dao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

.field private final carIconDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

.field private final carVersionDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

.field private final serialNumberDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;


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
    .line 38
    .local p3, daoConfigMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Class<+Lde/greenrobot/dao/AbstractDao<**>;>;Lde/greenrobot/dao/internal/DaoConfig;>;"
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    const-class v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->serialNumberDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->serialNumberDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 43
    const-class v0, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carIconDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carIconDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 46
    const-class v0, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carVersionDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carVersionDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 49
    new-instance v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->serialNumberDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    .line 50
    new-instance v0, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carIconDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    .line 51
    new-instance v0, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carVersionDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    .line 53
    const-class v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 54
    const-class v0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 55
    const-class v0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 56
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->serialNumberDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carIconDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 61
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carVersionDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 62
    return-void
.end method

.method public getCarIconDao()Lcom/cnlaunch/x431pro/utils/db/CarIconDao;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    return-object v0
.end method

.method public getCarVersionDao()Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    return-object v0
.end method

.method public getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    return-object v0
.end method
