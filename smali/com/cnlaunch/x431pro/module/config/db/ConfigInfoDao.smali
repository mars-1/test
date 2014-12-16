.class public Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "ConfigInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "CONFIG_INFO"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoSession;)V
    .locals 0
    .parameter "config"
    .parameter "daoSession"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 35
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .parameter "db"
    .parameter "ifNotExists"

    .prologue
    .line 39
    if-eqz p1, :cond_0

    const-string/jumbo v0, "IF NOT EXISTS "

    .line 40
    .local v0, constraint:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CREATE TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'CONFIG_INFO\' ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    const-string/jumbo v2, "\'_id\' INTEGER PRIMARY KEY AUTOINCREMENT ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    const-string/jumbo v2, "\'KEY\' TEXT NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    const-string/jumbo v2, "\'VALUE\' TEXT NOT NULL );"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    return-void

    .line 39
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
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DROP TABLE "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "IF EXISTS "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'CONFIG_INFO\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    return-void

    .line 48
    .end local v0           #sql:Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;)V
    .locals 4
    .parameter "stmt"
    .parameter "entity"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 57
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 58
    .local v0, id:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 61
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 62
    const/4 v1, 0x3

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 63
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;

    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;)V

    return-void
.end method

.method public getKey(Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;)Ljava/lang/Long;
    .locals 1
    .parameter "entity"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 103
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
    check-cast p1, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;->getKey(Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;
    .locals 4
    .parameter "cursor"
    .parameter "offset"

    .prologue
    .line 74
    new-instance v0, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;

    .line 75
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 76
    :goto_0
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v0, entity:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;
    return-object v0

    .line 75
    .end local v0           #entity:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;
    :cond_0
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;I)V
    .locals 2
    .parameter "cursor"
    .parameter "entity"
    .parameter "offset"

    .prologue
    .line 85
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->setId(Ljava/lang/Long;)V

    .line 86
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->setKey(Ljava/lang/String;)V

    .line 87
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->setValue(Ljava/lang/String;)V

    .line 88
    return-void

    .line 85
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;->readEntity(Landroid/database/Cursor;Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .parameter "cursor"
    .parameter "offset"

    .prologue
    .line 68
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
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;J)Ljava/lang/Long;
    .locals 1
    .parameter "entity"
    .parameter "rowId"

    .prologue
    .line 93
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->setId(Ljava/lang/Long;)V

    .line 94
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
    check-cast p1, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;->updateKeyAfterInsert(Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
