.class public Lcom/cnlaunch/golo3/dao/InterfaceDao;
.super Ljava/lang/Object;
.source "InterfaceDao.java"


# static fields
.field private static instance:Lcom/cnlaunch/golo3/dao/InterfaceDao;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mHelper:Lcom/cnlaunch/golo3/database/InterfaceTable;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/cnlaunch/golo3/database/InterfaceTable;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/database/InterfaceTable;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->mHelper:Lcom/cnlaunch/golo3/database/InterfaceTable;

    .line 30
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->sp:Landroid/content/SharedPreferences;

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/golo3/dao/InterfaceDao;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->instance:Lcom/cnlaunch/golo3/dao/InterfaceDao;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/cnlaunch/golo3/dao/InterfaceDao;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/dao/InterfaceDao;-><init>()V

    sput-object v0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->instance:Lcom/cnlaunch/golo3/dao/InterfaceDao;

    .line 37
    :cond_0
    sget-object v0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->instance:Lcom/cnlaunch/golo3/dao/InterfaceDao;

    return-object v0
.end method


# virtual methods
.method public insertSql(Ljava/lang/String;)V
    .locals 17
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .line 60
    const-string/jumbo v13, "config_no"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, config_no:Ljava/lang/String;
    const-string/jumbo v13, "config_area"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, config_area:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 63
    const-string/jumbo v4, "0.0.0"

    .line 65
    :cond_0
    if-nez v3, :cond_1

    .line 66
    const-string/jumbo v3, "1"

    .line 68
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "stamptime"

    const-wide/16 v15, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 69
    .local v10, stamptime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 70
    .local v5, current:J
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->searchAll()I

    move-result v9

    .line 71
    .local v9, result:I
    sub-long v13, v5, v10

    const-wide/32 v15, 0x5265c00

    cmp-long v13, v13, v15

    if-gtz v13, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3

    .line 72
    :cond_2
    invoke-static {}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getInstance()Lcom/cnlaunch/golo3/http/HttpInfoProvider;

    move-result-object v13

    .line 73
    sget-object v14, Lcom/cnlaunch/newgolo/GoloConfig;->APP_ID:Ljava/lang/String;

    invoke-virtual {v13, v14, v4, v3}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getConfigUrls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/golo3/dto/InterfaceConfig;

    move-result-object v2

    .line 74
    .local v2, configUrls:Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    const-string/jumbo v13, "0"

    invoke-virtual {v2}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->getCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 75
    invoke-virtual {v2}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->getUrlList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 76
    invoke-virtual {v2}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->getUrlList()Ljava/util/List;

    move-result-object v8

    .line 77
    .local v8, mList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    new-instance v1, Lcom/cnlaunch/golo3/dto/InterfaceUrl;

    invoke-direct {v1}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;-><init>()V

    .line 78
    .local v1, areaUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    new-instance v12, Lcom/cnlaunch/golo3/dto/InterfaceUrl;

    invoke-direct {v12}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;-><init>()V

    .line 79
    .local v12, verUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    const-string/jumbo v13, "config_area"

    invoke-virtual {v1, v13}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setKey(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->getArea()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setValue(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v13, "config_no"

    invoke-virtual {v12, v13}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setKey(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->getVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setValue(Ljava/lang/String;)V

    .line 83
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->getInstance()Lcom/cnlaunch/golo3/dao/InterfaceDao;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->update(Ljava/util/List;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 87
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v13, "stamptime"

    invoke-interface {v7, v13, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    .end local v1           #areaUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    .end local v2           #configUrls:Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v8           #mList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    .end local v12           #verUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    :cond_3
    :goto_0
    return-void

    .line 90
    .restart local v2       #configUrls:Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 91
    .restart local v7       #editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v13, "stamptime"

    invoke-interface {v7, v13, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 95
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_5
    new-instance v13, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/4 v14, -0x1

    invoke-direct {v13, v14}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v13
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 100
    const-string/jumbo v2, "SELECT * FROM interface_TB WHERE key=?"

    .line 101
    .local v2, sql:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    .line 102
    .local v0, args:[Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->mHelper:Lcom/cnlaunch/golo3/database/InterfaceTable;

    invoke-virtual {v5, v2, v0}, Lcom/cnlaunch/golo3/database/InterfaceTable;->queryBySQL(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 103
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 104
    .local v3, url:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 105
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v4, v3

    .line 114
    :cond_0
    :goto_0
    return-object v4

    .line 110
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public search(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .line 48
    const-string/jumbo v2, "SELECT * FROM interface_TB WHERE key=?"

    .line 49
    .local v2, sql:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    .line 50
    .local v0, args:[Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->mHelper:Lcom/cnlaunch/golo3/database/InterfaceTable;

    invoke-virtual {v4, v2, v0}, Lcom/cnlaunch/golo3/database/InterfaceTable;->queryBySQL(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 51
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 52
    .local v3, url:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    :cond_0
    const-string/jumbo v4, "yb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cnlaunch/golo3/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 57
    return-object v3
.end method

.method public searchAll()I
    .locals 5

    .prologue
    .line 124
    const-string/jumbo v2, "SELECT * FROM interface_TB"

    .line 125
    .local v2, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->mHelper:Lcom/cnlaunch/golo3/database/InterfaceTable;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/cnlaunch/golo3/database/InterfaceTable;->queryBySQL(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 126
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 127
    .local v1, result:I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    return v1
.end method

.method public declared-synchronized update(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/golo3/dto/InterfaceUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->searchAll()I

    move-result v1

    .line 138
    .local v1, searchAll:I
    iget-object v4, p0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->mHelper:Lcom/cnlaunch/golo3/database/InterfaceTable;

    iget-object v4, v4, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v4}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 139
    const-string/jumbo v5, "interface_TB"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 138
    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, delete:I
    if-ne v1, v0, :cond_0

    .line 141
    iget-object v4, p0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->mHelper:Lcom/cnlaunch/golo3/database/InterfaceTable;

    iget-object v4, v4, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v4}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 150
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/golo3/dto/InterfaceUrl;

    .line 143
    .local v2, url:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v3, values:Landroid/content/ContentValues;
    const-string/jumbo v5, "key"

    invoke-virtual {v2}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v5, "value"

    invoke-virtual {v2}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v5, p0, Lcom/cnlaunch/golo3/dao/InterfaceDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "interface_TB"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    .end local v0           #delete:I
    .end local v1           #searchAll:I
    .end local v2           #url:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
