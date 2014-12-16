.class public Lcom/cnlaunch/newgolo/provider/UserInfoProvider;
.super Landroid/content/ContentProvider;
.source "UserInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.cnlaunch.newgolo.userinfo"

.field private static final ID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UserInfoProvider"

.field private static final USER:I = 0x1

.field private static matcher:Landroid/content/UriMatcher;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->matcher:Landroid/content/UriMatcher;

    .line 29
    sget-object v0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->matcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.cnlaunch.newgolo.userinfo"

    const-string/jumbo v2, "users"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    sget-object v0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->matcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.cnlaunch.newgolo.userinfo"

    const-string/jumbo v2, "users/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "arg0"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 35
    sget-object v2, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 36
    .local v1, value:I
    const/4 v0, 0x0

    .line 37
    .local v0, result:I
    packed-switch v1, :pswitch_data_0

    .line 46
    :goto_0
    return v0

    .line 39
    :pswitch_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->dbHelper:Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    iget-object v2, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "users"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 41
    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "arg0"
    .parameter "values"

    .prologue
    .line 57
    sget-object v4, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 58
    .local v3, value:I
    const/4 v2, 0x0

    .line 59
    .local v2, result:Landroid/net/Uri;
    const-wide/16 v0, 0x0

    .line 60
    .local v0, id:J
    packed-switch v3, :pswitch_data_0

    .line 71
    :goto_0
    return-object v2

    .line 62
    :pswitch_0
    iget-object v4, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->dbHelper:Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    iget-object v4, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "users"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 64
    sget-object v4, Lcom/cnlaunch/newgolo/bean/UserInfo;->URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 65
    invoke-virtual {p0, v2}, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyChange(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 121
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;-><init>(Lcom/cnlaunch/newgolo/provider/UserInfoProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->dbHelper:Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "arg0"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 83
    sget-object v0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 84
    .local v11, value:I
    const/4 v8, 0x0

    .line 85
    .local v8, c:Landroid/database/Cursor;
    packed-switch v11, :pswitch_data_0

    .line 100
    :cond_0
    :goto_0
    return-object v8

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->dbHelper:Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 88
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 89
    .local v9, id:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "users"

    const-string/jumbo v3, "_id=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 92
    goto :goto_0

    .line 94
    .end local v9           #id:J
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->dbHelper:Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    iget-object v0, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "users"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 96
    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "arg0"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 105
    sget-object v2, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 106
    .local v1, value:I
    const/4 v0, 0x0

    .line 107
    .local v0, result:I
    packed-switch v1, :pswitch_data_0

    .line 116
    :goto_0
    return v0

    .line 109
    :pswitch_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->dbHelper:Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 110
    iget-object v2, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "users"

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 111
    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/provider/UserInfoProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
