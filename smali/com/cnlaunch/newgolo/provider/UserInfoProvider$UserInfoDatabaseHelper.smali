.class Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UserInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/provider/UserInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserInfoDatabaseHelper"
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "userinfo"

.field private static final VERSION:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/provider/UserInfoProvider;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/provider/UserInfoProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;->this$0:Lcom/cnlaunch/newgolo/provider/UserInfoProvider;

    .line 132
    const-string/jumbo v0, "userinfo"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 133
    return-void
.end method

.method private creatTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 141
    const-string/jumbo v0, "create table if not exists users(_id integer primary key autoincrement, userid integer, loginid integer, name text, headuri text, time integer)"

    .line 149
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/provider/UserInfoProvider$UserInfoDatabaseHelper;->creatTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "old"
    .parameter "arg2"

    .prologue
    .line 154
    const-string/jumbo v1, "UserInfoProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "old :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", new :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 156
    const-string/jumbo v0, "alter table users add column time integer"

    .line 158
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    const/4 p2, 0x2

    .line 161
    .end local v0           #sql:Ljava/lang/String;
    :cond_0
    return-void
.end method
