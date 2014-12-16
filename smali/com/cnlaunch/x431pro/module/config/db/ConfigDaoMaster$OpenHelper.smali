.class public abstract Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ConfigDaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "factory"

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 36
    const-string/jumbo v0, "greenDAO"

    const-string/jumbo v1, "Creating tables for schema version 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cnlaunch/x431pro/module/config/db/ConfigDaoMaster;->createAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 38
    return-void
.end method
