.class public Lcom/cnlaunch/newgolo/model/GoloProProvider;
.super Landroid/content/ContentProvider;
.source "GoloProProvider.java"


# static fields
.field public static final AUTHORITIES:Ljava/lang/String; = "com.cnlaunch.golopro.provider"

.field private static final MATCH_MESSAGE:I = 0x1

.field private static matcher:Landroid/content/UriMatcher;


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/GoloProProvider;->matcher:Landroid/content/UriMatcher;

    .line 27
    sget-object v0, Lcom/cnlaunch/newgolo/model/GoloProProvider;->matcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.cnlaunch.golopro.provider"

    const-string/jumbo v2, "message"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lcom/cnlaunch/newgolo/model/GoloProProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/model/GoloProProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/model/GoloProProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/newgolo/bean/User;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/model/GoloProProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/cnlaunch/newgolo/model/GoloProProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 38
    :cond_1
    new-instance v0, Lcom/cnlaunch/newgolo/data/DatabaseHelper;

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/model/GoloProProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, db_helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;
    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/data/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/model/GoloProProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    .end local v0           #db_helper:Lcom/cnlaunch/newgolo/data/DatabaseHelper;
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/newgolo/model/GoloProProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "s"
    .parameter "strings"

    .prologue
    .line 85
    sget-object v2, Lcom/cnlaunch/newgolo/model/GoloProProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 86
    .local v1, value:I
    const/4 v0, 0x0

    .line 87
    .local v0, count:I
    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_0
    return v0

    .line 89
    :pswitch_0
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/model/GoloProProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "message"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 90
    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/model/GoloProProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "contentValues"

    .prologue
    .line 71
    sget-object v4, Lcom/cnlaunch/newgolo/model/GoloProProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 72
    .local v3, value:I
    const/4 v2, 0x0

    .line 73
    .local v2, result:Landroid/net/Uri;
    packed-switch v3, :pswitch_data_0

    .line 80
    :goto_0
    return-object v2

    .line 75
    :pswitch_0
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/model/GoloProProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "message"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 76
    .local v0, id:J
    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 77
    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/newgolo/model/GoloProProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected notifyChange(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/model/GoloProProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 111
    return-void
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "strings"
    .parameter "s"
    .parameter "strings2"
    .parameter "s2"

    .prologue
    const/4 v5, 0x0

    .line 53
    sget-object v0, Lcom/cnlaunch/newgolo/model/GoloProProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 54
    .local v9, value:I
    const/4 v8, 0x0

    .line 55
    .local v8, c:Landroid/database/Cursor;
    packed-switch v9, :pswitch_data_0

    .line 60
    :goto_0
    return-object v8

    .line 57
    :pswitch_0
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/model/GoloProProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "message"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "contentValues"
    .parameter "s"
    .parameter "strings"

    .prologue
    .line 98
    sget-object v2, Lcom/cnlaunch/newgolo/model/GoloProProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 99
    .local v1, value:I
    const/4 v0, 0x0

    .line 100
    .local v0, count:I
    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_0
    return v0

    .line 102
    :pswitch_0
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/model/GoloProProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "message"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, p3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 103
    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/model/GoloProProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
