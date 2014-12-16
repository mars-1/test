.class public Lcom/cnlaunch/physics/utils/DeviceProperties;
.super Ljava/lang/Object;
.source "DeviceProperties.java"


# static fields
.field private static final ACTIVATE_TIME:Ljava/lang/String; = "activateTime"

.field private static BASE_PARH:Ljava/lang/String; = null

.field private static final FILE_NAME:Ljava/lang/String; = "deviceInfo"

.field private static PACKAGE_PATH:Ljava/lang/String;

.field private static dpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/physics/utils/DeviceProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPath:Ljava/lang/String;

.field private mProperties:Ljava/util/Properties;

.field private mSerialNo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, "X-431 PAD II"

    sput-object v0, Lcom/cnlaunch/physics/utils/DeviceProperties;->PACKAGE_PATH:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    const-string/jumbo v1, "cnlaunch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/physics/utils/DeviceProperties;->PACKAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/utils/DeviceProperties;->BASE_PARH:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cnlaunch/physics/utils/DeviceProperties;->dpMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serialNo"
    .parameter "baseDir"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mSerialNo:Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mPath:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    .line 63
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/cnlaunch/physics/utils/DeviceProperties;
    .locals 1
    .parameter "serialNo"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/utils/DeviceProperties;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/utils/DeviceProperties;
    .locals 2
    .parameter "serialNo"
    .parameter "baseDir"

    .prologue
    .line 44
    sget-object v1, Lcom/cnlaunch/physics/utils/DeviceProperties;->dpMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    new-instance v0, Lcom/cnlaunch/physics/utils/DeviceProperties;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/physics/utils/DeviceProperties;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v0, dp:Lcom/cnlaunch/physics/utils/DeviceProperties;
    sget-object v1, Lcom/cnlaunch/physics/utils/DeviceProperties;->dpMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v0           #dp:Lcom/cnlaunch/physics/utils/DeviceProperties;
    :cond_0
    sget-object v1, Lcom/cnlaunch/physics/utils/DeviceProperties;->dpMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/physics/utils/DeviceProperties;

    return-object v1
.end method

.method private getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "serialNo"
    .parameter "baseDir"

    .prologue
    .line 71
    const-string/jumbo v0, ""

    .line 72
    .local v0, path:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "cnlaunch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cnlaunch/physics/utils/DeviceProperties;->PACKAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cnlaunch/physics/utils/DeviceProperties;->BASE_PARH:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cnlaunch/physics/utils/DeviceProperties;->BASE_PARH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "deviceInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    const-string/jumbo v2, "deviceInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private load()V
    .locals 6

    .prologue
    .line 83
    const/4 v3, 0x0

    .line 85
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 87
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 93
    :cond_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 101
    if-eqz v4, :cond_4

    .line 102
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 109
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    if-eqz v3, :cond_2

    .line 102
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 101
    :goto_2
    if-eqz v3, :cond_3

    .line 102
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 108
    :cond_3
    :goto_3
    throw v5

    .line 104
    :catch_2
    move-exception v1

    .line 106
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 104
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 106
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 99
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 96
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static setetPACKAGE_PATH(Ljava/lang/String;)V
    .locals 0
    .parameter "package_path"

    .prologue
    .line 67
    sput-object p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->PACKAGE_PATH:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private store()V
    .locals 7

    .prologue
    .line 198
    const/4 v3, 0x0

    .line 200
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 202
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 205
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 206
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 208
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 209
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    const-string/jumbo v6, "utf-8"

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 218
    if-eqz v4, :cond_4

    .line 219
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v3, v4

    .line 226
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v1

    .line 212
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    if-eqz v3, :cond_2

    .line 219
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 221
    :catch_1
    move-exception v1

    .line 223
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 213
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 215
    .restart local v1       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 218
    if-eqz v3, :cond_2

    .line 219
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 221
    :catch_3
    move-exception v1

    .line 223
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 218
    :goto_3
    if-eqz v3, :cond_3

    .line 219
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 225
    :cond_3
    :goto_4
    throw v5

    .line 221
    :catch_4
    move-exception v1

    .line 223
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 221
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    .line 223
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 216
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 213
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 210
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public getActivateTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->load()V

    .line 235
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "activateTime"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDPUHardwareInfo()Lcom/cnlaunch/physics/entity/DPUHardwareInfo;
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, info:Lcom/cnlaunch/physics/entity/DPUHardwareInfo;
    invoke-direct {p0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->load()V

    .line 153
    new-instance v0, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;

    .end local v0           #info:Lcom/cnlaunch/physics/entity/DPUHardwareInfo;
    invoke-direct {v0}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;-><init>()V

    .line 154
    .restart local v0       #info:Lcom/cnlaunch/physics/entity/DPUHardwareInfo;
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v2, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->setId(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v2, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->SERIAL_NO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->setSerialNo(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v2, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->setVersion(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v2, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->DATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->setDate(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v2, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->setDeviceType(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    .end local v0           #info:Lcom/cnlaunch/physics/entity/DPUHardwareInfo;
    :cond_0
    return-object v0
.end method

.method public getDPUSoftInfo()Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    .locals 3

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, info:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    invoke-direct {p0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->load()V

    .line 183
    new-instance v0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;

    .end local v0           #info:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    invoke-direct {v0}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;-><init>()V

    .line 184
    .restart local v0       #info:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v2, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->BOOT_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->setBootVersion(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    .line 186
    sget-object v2, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->DOWNLOAD_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->setDownloadSersion(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    .line 188
    sget-object v2, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->DIAFNOSE_SOFT_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->setDiagnoseSoftVersion(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    .line 190
    sget-object v2, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->PRODUCT_FUNCTION_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->setProductFunctionVersion(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 194
    .end local v0           #info:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    :cond_0
    return-object v0
.end method

.method public hasHardwareInfo()Z
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getDPUHardwareInfo()Lcom/cnlaunch/physics/entity/DPUHardwareInfo;

    move-result-object v0

    .line 118
    .local v0, info:Lcom/cnlaunch/physics/entity/DPUHardwareInfo;
    if-nez v0, :cond_0

    .line 119
    const/4 v1, 0x0

    .line 121
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasSoftInfo()Z
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->getDPUSoftInfo()Lcom/cnlaunch/physics/entity/DPUSoftInfo;

    move-result-object v0

    .line 131
    .local v0, info:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    if-nez v0, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 134
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public saveActivateTime(Ljava/lang/String;)V
    .locals 2
    .parameter "activateTime"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "activateTime"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    invoke-direct {p0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->store()V

    .line 231
    return-void
.end method

.method public saveDPUHardwareInfo(Lcom/cnlaunch/physics/entity/DPUHardwareInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v1, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->ID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v1, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->SERIAL_NO:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v1, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->VERSION:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v1, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->DATE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v1, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->DEVICE_TYPE:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    invoke-direct {p0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->store()V

    goto :goto_0
.end method

.method public saveDPUSoftInfo(Lcom/cnlaunch/physics/entity/DPUSoftInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    .line 170
    sget-object v1, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->BOOT_VERSION:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->getBootVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v1, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->DOWNLOAD_VERSION:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->getDownloadSersion()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v1, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->DIAFNOSE_SOFT_VERSION:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->getDiagnoseSoftVersion()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DeviceProperties;->mProperties:Ljava/util/Properties;

    sget-object v1, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->PRODUCT_FUNCTION_VERSION:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->getProductFunctionVersion()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    invoke-direct {p0}, Lcom/cnlaunch/physics/utils/DeviceProperties;->store()V

    goto :goto_0
.end method
