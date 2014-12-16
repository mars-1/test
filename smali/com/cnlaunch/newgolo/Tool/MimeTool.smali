.class public Lcom/cnlaunch/newgolo/Tool/MimeTool;
.super Ljava/lang/Object;
.source "MimeTool.java"


# static fields
.field private static instance:Lcom/cnlaunch/newgolo/Tool/MimeTool;


# instance fields
.field private final NAME:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "mime.db"

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Tool/MimeTool;->NAME:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Tool/MimeTool;->context:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/newgolo/Tool/MimeTool;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/cnlaunch/newgolo/Tool/MimeTool;->instance:Lcom/cnlaunch/newgolo/Tool/MimeTool;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/cnlaunch/newgolo/Tool/MimeTool;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/Tool/MimeTool;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/Tool/MimeTool;->instance:Lcom/cnlaunch/newgolo/Tool/MimeTool;

    .line 32
    :cond_0
    sget-object v0, Lcom/cnlaunch/newgolo/Tool/MimeTool;->instance:Lcom/cnlaunch/newgolo/Tool/MimeTool;

    return-object v0
.end method


# virtual methods
.method public getMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "key"

    .prologue
    .line 36
    const/4 v5, 0x0

    .line 37
    .local v5, in:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 38
    .local v7, out:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 39
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 41
    .local v1, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v10, p0, Lcom/cnlaunch/newgolo/Tool/MimeTool;->context:Landroid/content/Context;

    const-string/jumbo v11, "mime.db"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 46
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 47
    iget-object v10, p0, Lcom/cnlaunch/newgolo/Tool/MimeTool;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/cnlaunch/golo3/message/R$raw;->mime:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 48
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .line 49
    .end local v7           #out:Ljava/io/FileOutputStream;
    .local v8, out:Ljava/io/FileOutputStream;
    const/16 v10, 0x400

    :try_start_1
    new-array v0, v10, [B

    .line 51
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .local v6, length:I
    const/4 v10, -0x1

    if-ne v6, v10, :cond_5

    move-object v7, v8

    .line 56
    .end local v0           #buffer:[B
    .end local v6           #length:I
    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 57
    const-string/jumbo v10, "select value from mime where key=\'%s\'"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, sql:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 60
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    move-result-object v10

    .line 65
    if-eqz v5, :cond_1

    .line 67
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 72
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 74
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 79
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 80
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 82
    :cond_3
    if-eqz v1, :cond_4

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 86
    .end local v4           #file:Ljava/io/File;
    .end local v9           #sql:Ljava/lang/String;
    :cond_4
    :goto_3
    return-object v10

    .line 52
    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v8       #out:Ljava/io/FileOutputStream;
    :cond_5
    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v8, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 62
    .end local v0           #buffer:[B
    .end local v6           #length:I
    :catch_0
    move-exception v3

    move-object v7, v8

    .line 63
    .end local v4           #file:Ljava/io/File;
    .end local v8           #out:Ljava/io/FileOutputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 65
    if-eqz v5, :cond_6

    .line 67
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 72
    :cond_6
    :goto_5
    if-eqz v7, :cond_7

    .line 74
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 79
    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    .line 80
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 82
    :cond_8
    if-eqz v1, :cond_9

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 86
    .end local v3           #e:Ljava/io/IOException;
    :cond_9
    :goto_7
    const-string/jumbo v10, "*/*"

    goto :goto_3

    .line 68
    .restart local v4       #file:Ljava/io/File;
    .restart local v9       #sql:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 69
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 75
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 76
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 68
    .end local v4           #file:Ljava/io/File;
    .end local v9           #sql:Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 69
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 75
    :catch_4
    move-exception v3

    .line 76
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 64
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 65
    :goto_8
    if-eqz v5, :cond_a

    .line 67
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 72
    :cond_a
    :goto_9
    if-eqz v7, :cond_b

    .line 74
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 79
    :cond_b
    :goto_a
    if-eqz v2, :cond_c

    .line 80
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 82
    :cond_c
    if-eqz v1, :cond_d

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_d
    throw v10

    .line 68
    :catch_5
    move-exception v3

    .line 69
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 75
    .end local v3           #e:Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 76
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 65
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #file:Ljava/io/File;
    .restart local v9       #sql:Ljava/lang/String;
    :cond_e
    if-eqz v5, :cond_f

    .line 67
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 72
    :cond_f
    :goto_b
    if-eqz v7, :cond_10

    .line 74
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 79
    :cond_10
    :goto_c
    if-eqz v2, :cond_11

    .line 80
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 82
    :cond_11
    if-eqz v1, :cond_9

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 68
    :catch_7
    move-exception v3

    .line 69
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 75
    .end local v3           #e:Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 76
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 64
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .end local v9           #sql:Ljava/lang/String;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 62
    .end local v4           #file:Ljava/io/File;
    :catch_9
    move-exception v3

    goto :goto_4
.end method
