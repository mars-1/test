.class public Lcom/cnlaunch/golo3/database/InterfaceTable;
.super Ljava/lang/Object;
.source "InterfaceTable.java"


# instance fields
.field cursor:Landroid/database/Cursor;

.field db:Landroid/database/sqlite/SQLiteDatabase;

.field public helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    .line 20
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->close()V

    .line 88
    iput-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    iput-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 91
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 93
    iput-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->cursor:Landroid/database/Cursor;

    .line 95
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "tableName"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v1}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 73
    iget-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, rt:I
    return v0
.end method

.method public deleteBySQL(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 80
    return-void
.end method

.method public deleteBySQL(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "sql"
    .parameter "bindArgs"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 85
    return-void
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/Long;
    .locals 3
    .parameter "tableName"
    .parameter "values"

    .prologue
    .line 23
    iget-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v1}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    iget-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 25
    .local v0, rt:Ljava/lang/Long;
    iget-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 26
    return-object v0
.end method

.method public insertBySQL(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 32
    return-void
.end method

.method public insertBySQL(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "sql"
    .parameter "values"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 37
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
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->cursor:Landroid/database/Cursor;

    .line 58
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/database/Cursor;
    .locals 10
    .parameter "tableName"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "orderBy"
    .parameter "having"
    .parameter "limit"
    .parameter "pageNo"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v1}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    iget-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

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

    iput-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->cursor:Landroid/database/Cursor;

    .line 69
    iget-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->cursor:Landroid/database/Cursor;

    return-object v1
.end method

.method public queryBySQL(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->cursor:Landroid/database/Cursor;

    .line 63
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "tableName"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v1}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    iget-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 41
    .local v0, row:I
    iget-object v1, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 42
    return v0
.end method

.method public updateBySQL(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 48
    return-void
.end method

.method public updateBySQL(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "sql"
    .parameter "bindArgs"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->helper:Lcom/cnlaunch/golo3/database/InterfaceDBHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/cnlaunch/golo3/database/InterfaceTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 53
    return-void
.end method
