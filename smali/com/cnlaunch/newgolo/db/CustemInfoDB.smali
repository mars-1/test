.class public Lcom/cnlaunch/newgolo/db/CustemInfoDB;
.super Ljava/lang/Object;
.source "CustemInfoDB.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustemInfoDB"

.field private static instance:Lcom/cnlaunch/newgolo/db/CustemInfoDB;


# instance fields
.field private mDaoSession:Lcom/cnlaunch/newgolo/db/DaoSession;

.field private mFollowedCustomerDao:Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

.field private mRegisteredCustomerDao:Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

.field private mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

.field private mRepairCustomerDao:Lcom/cnlaunch/newgolo/db/RepairCustomerDao;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/cnlaunch/newgolo/db/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/DBManager;->getDaoSession()Lcom/cnlaunch/newgolo/db/DaoSession;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mDaoSession:Lcom/cnlaunch/newgolo/db/DaoSession;

    .line 22
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mDaoSession:Lcom/cnlaunch/newgolo/db/DaoSession;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/DaoSession;->getFollowedCustomerDao()Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mFollowedCustomerDao:Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    .line 23
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mDaoSession:Lcom/cnlaunch/newgolo/db/DaoSession;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/DaoSession;->getRegisteredCustomerDao()Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRegisteredCustomerDao:Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    .line 24
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mDaoSession:Lcom/cnlaunch/newgolo/db/DaoSession;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/DaoSession;->getRepairCustomerDao()Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRepairCustomerDao:Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

    .line 25
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mDaoSession:Lcom/cnlaunch/newgolo/db/DaoSession;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/DaoSession;->getRemoteCustomerDao()Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    sget-object v0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->instance:Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->instance:Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    .line 32
    :cond_0
    sget-object v0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->instance:Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/cnlaunch/newgolo/db/FollowedCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mFollowedCustomerDao:Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;->delete(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public delete(Lcom/cnlaunch/newgolo/db/RegisteredCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRegisteredCustomerDao:Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;->delete(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public delete(Lcom/cnlaunch/newgolo/db/RemoteCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->delete(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public delete(Lcom/cnlaunch/newgolo/db/RepairCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRepairCustomerDao:Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/RepairCustomerDao;->delete(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public deleteAllFollowed()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mFollowedCustomerDao:Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;->deleteAll()V

    .line 72
    return-void
.end method

.method public deleteAllRegister()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRegisteredCustomerDao:Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;->deleteAll()V

    .line 66
    return-void
.end method

.method public deleteAllRemote()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->deleteAll()V

    .line 63
    return-void
.end method

.method public deleteAllRepair()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRepairCustomerDao:Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/RepairCustomerDao;->deleteAll()V

    .line 69
    return-void
.end method

.method public deleteRegisteredCustomer(Ljava/lang/String;)V
    .locals 4
    .parameter "serial_no"

    .prologue
    .line 218
    iget-object v2, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRegisteredCustomerDao:Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 219
    .local v1, qb:Lde/greenrobot/dao/query/QueryBuilder;
    sget-object v2, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao$Properties;->Serial_no:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->buildDelete()Lde/greenrobot/dao/query/DeleteQuery;

    move-result-object v0

    .line 220
    .local v0, bd:Lde/greenrobot/dao/query/DeleteQuery;,"Lde/greenrobot/dao/query/DeleteQuery<Lcom/cnlaunch/newgolo/db/RegisteredCustomer;>;"
    invoke-virtual {v0}, Lde/greenrobot/dao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 221
    return-void
.end method

.method public deleteRemoteCustomer(Ljava/lang/String;)V
    .locals 4
    .parameter "request_id"

    .prologue
    .line 191
    iget-object v2, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 192
    .local v1, qb:Lde/greenrobot/dao/query/QueryBuilder;
    sget-object v2, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao$Properties;->Request_id:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->buildDelete()Lde/greenrobot/dao/query/DeleteQuery;

    move-result-object v0

    .line 193
    .local v0, bd:Lde/greenrobot/dao/query/DeleteQuery;,"Lde/greenrobot/dao/query/DeleteQuery<Lcom/cnlaunch/newgolo/db/RegisteredCustomer;>;"
    invoke-virtual {v0}, Lde/greenrobot/dao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 194
    return-void
.end method

.method public deleteRemoteCustomer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "user_id"
    .parameter "car_id"

    .prologue
    .line 204
    iget-object v2, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 205
    .local v1, qb:Lde/greenrobot/dao/query/QueryBuilder;
    sget-object v2, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao$Properties;->User_id:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v4, 0x0

    .line 206
    sget-object v5, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao$Properties;->Car_id:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v3, v4

    .line 205
    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->buildDelete()Lde/greenrobot/dao/query/DeleteQuery;

    move-result-object v0

    .line 207
    .local v0, bd:Lde/greenrobot/dao/query/DeleteQuery;,"Lde/greenrobot/dao/query/DeleteQuery<Lcom/cnlaunch/newgolo/db/RegisteredCustomer;>;"
    invoke-virtual {v0}, Lde/greenrobot/dao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 208
    return-void
.end method

.method public getRemoteIsRead(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "user_id"
    .parameter "requestId"

    .prologue
    const/4 v5, 0x1

    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, result:Z
    iget-object v6, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {v6}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 168
    .local v2, qb:Lde/greenrobot/dao/query/QueryBuilder;
    sget-object v6, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao$Properties;->User_id:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v6

    new-array v7, v5, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v8, 0x0

    .line 169
    sget-object v9, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao$Properties;->Request_id:Lde/greenrobot/dao/Property;

    invoke-virtual {v9, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v7, v8

    .line 168
    invoke-virtual {v2, v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 170
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, list:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 173
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_1

    .line 180
    .end local v0           #i:I
    .end local v4           #result:Z
    :cond_0
    :goto_1
    return v4

    .line 174
    .restart local v0       #i:I
    .restart local v4       #result:Z
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/db/RemoteCustomer;

    .line 175
    .local v3, rc:Lcom/cnlaunch/newgolo/db/RemoteCustomer;
    const-string/jumbo v6, "true"

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getAuto_logos()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 176
    goto :goto_1

    .line 173
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRequestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "user_id"

    .prologue
    .line 120
    const/4 v4, 0x0

    .line 121
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {v5}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 122
    .local v2, qb:Lde/greenrobot/dao/query/QueryBuilder;
    sget-object v5, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao$Properties;->User_id:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 123
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, list:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 126
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 127
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/db/RemoteCustomer;

    .line 129
    .local v3, rc:Lcom/cnlaunch/newgolo/db/RemoteCustomer;
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getRequest_id()Ljava/lang/String;

    move-result-object v4

    .line 132
    .end local v0           #i:I
    .end local v3           #rc:Lcom/cnlaunch/newgolo/db/RemoteCustomer;
    .end local v4           #result:Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public insert(Lcom/cnlaunch/newgolo/db/FollowedCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mFollowedCustomerDao:Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;->insert(Ljava/lang/Object;)J

    .line 46
    return-void
.end method

.method public insert(Lcom/cnlaunch/newgolo/db/RegisteredCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRegisteredCustomerDao:Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;->insert(Ljava/lang/Object;)J

    .line 40
    return-void
.end method

.method public insert(Lcom/cnlaunch/newgolo/db/RemoteCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->insert(Ljava/lang/Object;)J

    .line 37
    return-void
.end method

.method public insert(Lcom/cnlaunch/newgolo/db/RepairCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRepairCustomerDao:Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/RepairCustomerDao;->insert(Ljava/lang/Object;)J

    .line 43
    return-void
.end method

.method public isFollowed(Ljava/lang/String;)Z
    .locals 4
    .parameter "user_id"

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, result:Z
    iget-object v2, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mFollowedCustomerDao:Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    .line 107
    .local v0, qb:Lde/greenrobot/dao/query/QueryBuilder;
    sget-object v2, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao$Properties;->User_id:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 108
    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 109
    const/4 v1, 0x1

    .line 111
    :cond_0
    return v1
.end method

.method public loadAllFollowed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/newgolo/db/FollowedCustomer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mFollowedCustomerDao:Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadAllRegister()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/newgolo/db/RegisteredCustomer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRegisteredCustomerDao:Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadAllRemote()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/newgolo/db/RemoteCustomer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadAllRepair()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/newgolo/db/RepairCustomer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRepairCustomerDao:Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/RepairCustomerDao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setRemoteIsRead(Lcom/cnlaunch/newgolo/db/RemoteCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->update(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public setRemoteIsRead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "user_id"
    .parameter "requestId"
    .parameter "isRead"

    .prologue
    .line 150
    const/4 v4, 0x0

    .line 151
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {v5}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 152
    .local v2, qb:Lde/greenrobot/dao/query/QueryBuilder;
    sget-object v5, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao$Properties;->User_id:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v7, 0x0

    .line 153
    sget-object v8, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao$Properties;->Request_id:Lde/greenrobot/dao/Property;

    invoke-virtual {v8, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v6, v7

    .line 152
    invoke-virtual {v2, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 154
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, list:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 163
    .end local v0           #i:I
    :cond_0
    return-void

    .line 158
    .restart local v0       #i:I
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/db/RemoteCustomer;

    .line 159
    .local v3, rc:Lcom/cnlaunch/newgolo/db/RemoteCustomer;
    invoke-virtual {v3, p3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setAuto_logos(Ljava/lang/String;)V

    .line 160
    iget-object v5, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {v5, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->update(Ljava/lang/Object;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public update(Lcom/cnlaunch/newgolo/db/FollowedCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mFollowedCustomerDao:Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/FollowedCustomerDao;->update(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public update(Lcom/cnlaunch/newgolo/db/RegisteredCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRegisteredCustomerDao:Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;->update(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public update(Lcom/cnlaunch/newgolo/db/RemoteCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRemoteCustomerDao:Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/RemoteCustomerDao;->update(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public update(Lcom/cnlaunch/newgolo/db/RepairCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRepairCustomerDao:Lcom/cnlaunch/newgolo/db/RepairCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/RepairCustomerDao;->update(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public updateRegisteredCustomer(Lcom/cnlaunch/newgolo/db/RegisteredCustomer;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->mRegisteredCustomerDao:Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/RegisteredCustomerDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 232
    return-void
.end method
