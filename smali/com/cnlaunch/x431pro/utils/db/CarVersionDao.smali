.class public Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "CarVersionDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/cnlaunch/x431pro/utils/db/CarVersion;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "CAR_VERSION"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;)V
    .locals 0
    .parameter "config"
    .parameter "daoSession"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 41
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .parameter "db"
    .parameter "ifNotExists"

    .prologue
    .line 45
    if-eqz p1, :cond_0

    const-string/jumbo v0, "IF NOT EXISTS "

    .line 46
    .local v0, constraint:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CREATE TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'CAR_VERSION\' ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    const-string/jumbo v2, "\'_id\' INTEGER PRIMARY KEY AUTOINCREMENT ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    const-string/jumbo v2, "\'SERIAL_NO\' TEXT NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    const-string/jumbo v2, "\'SOFT_PACKAGE_ID\' TEXT NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    const-string/jumbo v2, "\'VERSIONNO\' TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    const-string/jumbo v2, "\'IS_EXIST\' INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    const-string/jumbo v2, "\'LANGUAGELIST\' TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void

    .line 45
    .end local v0           #constraint:Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .parameter "db"
    .parameter "ifExists"

    .prologue
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DROP TABLE "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "IF EXISTS "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'CAR_VERSION\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    return-void

    .line 57
    .end local v0           #sql:Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/cnlaunch/x431pro/utils/db/CarVersion;)V
    .locals 5
    .parameter "stmt"
    .parameter "entity"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 66
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 67
    .local v0, id:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 68
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 70
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getSerialNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 71
    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getSoftPackageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 72
    const/4 v2, 0x4

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getVersionNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 73
    const/4 v4, 0x5

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getIsExist()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1

    :goto_0
    invoke-virtual {p1, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 74
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getLanguageList()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, languageList:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 76
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 78
    :cond_1
    return-void

    .line 73
    .end local v1           #languageList:Ljava/lang/String;
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/cnlaunch/x431pro/utils/db/CarVersion;)V

    return-void
.end method

.method public getKey(Lcom/cnlaunch/x431pro/utils/db/CarVersion;)Ljava/lang/Long;
    .locals 1
    .parameter "entity"

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->getKey(Lcom/cnlaunch/x431pro/utils/db/CarVersion;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/cnlaunch/x431pro/utils/db/CarVersion;
    .locals 11
    .parameter "cursor"
    .parameter "offset"

    .prologue
    const/4 v6, 0x0

    .line 89
    new-instance v0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    .line 90
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v6

    .line 91
    :goto_0
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 93
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 95
    add-int/lit8 v7, p2, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 89
    :goto_2
    invoke-direct/range {v0 .. v6}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 97
    .local v0, entity:Lcom/cnlaunch/x431pro/utils/db/CarVersion;
    return-object v0

    .line 90
    .end local v0           #entity:Lcom/cnlaunch/x431pro/utils/db/CarVersion;
    :cond_0
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 94
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 95
    :cond_2
    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->readEntity(Landroid/database/Cursor;I)Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/cnlaunch/x431pro/utils/db/CarVersion;I)V
    .locals 6
    .parameter "cursor"
    .parameter "entity"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 103
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setId(Ljava/lang/Long;)V

    .line 104
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setSerialNo(Ljava/lang/String;)V

    .line 105
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setSoftPackageId(Ljava/lang/String;)V

    .line 106
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setVersionNo(Ljava/lang/String;)V

    .line 107
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setIsExist(Ljava/lang/Boolean;)V

    .line 108
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p2, v1}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setLanguageList(Ljava/lang/String;)V

    .line 109
    return-void

    .line 103
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 108
    :cond_2
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    invoke-virtual {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->readEntity(Landroid/database/Cursor;Lcom/cnlaunch/x431pro/utils/db/CarVersion;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .parameter "cursor"
    .parameter "offset"

    .prologue
    .line 83
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/cnlaunch/x431pro/utils/db/CarVersion;J)Ljava/lang/Long;
    .locals 1
    .parameter "entity"
    .parameter "rowId"

    .prologue
    .line 114
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setId(Ljava/lang/Long;)V

    .line 115
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    invoke-virtual {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->updateKeyAfterInsert(Lcom/cnlaunch/x431pro/utils/db/CarVersion;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
