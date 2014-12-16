.class public Lcom/cnlaunch/newgolo/db/DaoSession;
.super Lde/greenrobot/dao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final followedCustomerDao:Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

.field private final followedCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final registeredCustomerDao:Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

.field private final registeredCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final remoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

.field private final remoteCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final repairCustomerDao:Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

.field private final repairCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;


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
    .line 43
    .local p3, daoConfigMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Class<+Lde/greenrobot/dao/AbstractDao<**>;>;Lde/greenrobot/dao/internal/DaoConfig;>;"
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    const-class v0, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->followedCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 46
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->followedCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 48
    const-class v0, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->registeredCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 49
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->registeredCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 51
    const-class v0, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->remoteCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 52
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->remoteCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 54
    const-class v0, Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->repairCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 55
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->repairCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 57
    new-instance v0, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->followedCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/cnlaunch/newgolo/db/DaoSession;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->followedCustomerDao:Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    .line 58
    new-instance v0, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->registeredCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/cnlaunch/newgolo/db/DaoSession;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->registeredCustomerDao:Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    .line 59
    new-instance v0, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->remoteCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/cnlaunch/newgolo/db/DaoSession;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->remoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    .line 60
    new-instance v0, Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->repairCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/cnlaunch/newgolo/db/RepairCustomerDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/cnlaunch/newgolo/db/DaoSession;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->repairCustomerDao:Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

    .line 62
    const-class v0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->followedCustomerDao:Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/newgolo/db/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 63
    const-class v0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->registeredCustomerDao:Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/newgolo/db/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 64
    const-class v0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->remoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/newgolo/db/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 65
    const-class v0, Lcom/cnlaunch/newgolo/db/RepairCustomer;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->repairCustomerDao:Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/newgolo/db/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 66
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->followedCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 70
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->registeredCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 71
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->remoteCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 72
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->repairCustomerDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 73
    return-void
.end method

.method public getFollowedCustomerDao()Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->followedCustomerDao:Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    return-object v0
.end method

.method public getRegisteredCustomerDao()Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->registeredCustomerDao:Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    return-object v0
.end method

.method public getRemoteCustomerDao()Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->remoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    return-object v0
.end method

.method public getRepairCustomerDao()Lcom/cnlaunch/newgolo/db/RepairCustomerDao;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/DaoSession;->repairCustomerDao:Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

    return-object v0
.end method
