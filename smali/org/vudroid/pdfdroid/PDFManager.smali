.class public Lorg/vudroid/pdfdroid/PDFManager;
.super Ljava/lang/Object;
.source "PDFManager.java"


# static fields
.field private static final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/vudroid/pdfdroid/PDFManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/vudroid/pdfdroid/PDFManager;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAssetFileToFileDir(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .parameter "dir"
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 92
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, filePath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 95
    .local v5, is:Ljava/io/InputStream;
    if-eqz v5, :cond_1

    .line 96
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 98
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v6, v7, [B

    .line 100
    .local v6, temp:[B
    const/4 v4, 0x0

    .line 101
    .local v4, i:I
    :goto_0
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_0

    .line 104
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 105
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 111
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #i:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #temp:[B
    :goto_1
    return-object v1

    .line 102
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #filePath:Ljava/lang/String;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #i:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #temp:[B
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #i:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #temp:[B
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getFontPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 120
    new-instance v0, Lorg/vudroid/core/PDFPreferences;

    invoke-direct {v0, p0}, Lorg/vudroid/core/PDFPreferences;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, sharePref:Lorg/vudroid/core/PDFPreferences;
    invoke-virtual {v0}, Lorg/vudroid/core/PDFPreferences;->getFontPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initAssetsFontLib(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "ttfName"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 44
    new-instance v5, Lorg/vudroid/core/PDFPreferences;

    invoke-direct {v5, p0}, Lorg/vudroid/core/PDFPreferences;-><init>(Landroid/content/Context;)V

    .line 46
    .local v5, sharePref:Lorg/vudroid/core/PDFPreferences;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 47
    sget-object v8, Lorg/vudroid/pdfdroid/PDFManager;->tag:Ljava/lang/String;

    const-string/jumbo v9, "initFontLib ttfName is not null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    :goto_0
    return v7

    .line 52
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, flag:Ljava/lang/String;
    const-string/jumbo v9, "mounted"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 56
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 64
    invoke-static {v0, p0, p1}, Lorg/vudroid/pdfdroid/PDFManager;->getAssetFileToFileDir(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 65
    .local v6, targetFile:Ljava/io/File;
    if-eqz v6, :cond_0

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/vudroid/core/PDFPreferences;->setFontPath(Ljava/lang/String;)V

    move v7, v8

    .line 67
    goto :goto_0

    .line 70
    .end local v6           #targetFile:Ljava/io/File;
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/vudroid/core/PDFPreferences;->setFontPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v8

    .line 71
    goto :goto_0

    .line 73
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    sget-object v8, Lorg/vudroid/pdfdroid/PDFManager;->tag:Ljava/lang/String;

    const-string/jumbo v9, "initFontLib SD card Unavailable."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "pdfPath"

    .prologue
    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    sget-object v3, Lorg/vudroid/pdfdroid/PDFManager;->tag:Ljava/lang/String;

    const-string/jumbo v4, "open pdfPath is not null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 139
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    .local v1, intent:Landroid/content/Intent;
    const-class v3, Lorg/vudroid/pdfdroid/PdfViewerActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    sget-object v3, Lorg/vudroid/pdfdroid/PDFManager;->tag:Ljava/lang/String;

    const-string/jumbo v4, "open file is not exists."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
