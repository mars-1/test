.class public Lcom/cnlaunch/newgolo/data/DataBaseDDL;
.super Ljava/lang/Object;
.source "DataBaseDDL.java"


# instance fields
.field cursor:Landroid/database/Cursor;

.field db:Landroid/database/sqlite/SQLiteDatabase;

.field private helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    .line 20
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->close()V

    .line 105
    iput-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    .line 106
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    iput-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 112
    iput-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->cursor:Landroid/database/Cursor;

    .line 114
    :cond_1
    return-void
.end method

.method public closeDb()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "tableName"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, rt:I
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 83
    return v0
.end method

.method public deleteBySQL(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 88
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    return-void
.end method

.method public deleteBySQL(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "sql"
    .parameter "bindArgs"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 96
    return-void
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/Long;
    .locals 3
    .parameter "tableName"
    .parameter "values"

    .prologue
    .line 23
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 25
    .local v0, rt:Ljava/lang/Long;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 26
    return-object v0
.end method

.method public insertBySQL(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 33
    return-void
.end method

.method public insertBySQL(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "sql"
    .parameter "values"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 39
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "tableName"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->cursor:Landroid/database/Cursor;

    .line 64
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/database/Cursor;
    .locals 10
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "orderBy"
    .parameter "having"
    .parameter "limit"
    .parameter "pageNo"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, p9, -0x1

    mul-int v3, v3, p8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->cursor:Landroid/database/Cursor;

    .line 76
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->cursor:Landroid/database/Cursor;

    return-object v1
.end method

.method public queryBySQL(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->cursor:Landroid/database/Cursor;

    .line 70
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "tableName"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, row:I
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 45
    return v0
.end method

.method public updateBySQL(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 52
    return-void
.end method

.method public updateBySQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "sql"
    .parameter "bindArgs"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/DataBaseDDL;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 58
    return-void
.end method
