.class public Lcom/cnlaunch/golo3/database/InterfaceDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "InterfaceDBHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "golo_interface.db"

.field private static DATABASE_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x8

    sput v0, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->DATABASE_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 19
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    const-string/jumbo v1, "golo_interface.db"

    const/4 v2, 0x0

    sget v3, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->DATABASE_VERSION:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 25
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS interface_TB(_id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR(20), value VARCHAR(50))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 32
    const-string/jumbo v0, " drop table if exists interface_TB"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/cnlaunch/golo3/database/InterfaceDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 34
    return-void
.end method
