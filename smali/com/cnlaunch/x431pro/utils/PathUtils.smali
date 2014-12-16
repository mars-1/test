.class public Lcom/cnlaunch/x431pro/utils/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# static fields
.field private static ASSETS_PATH:Ljava/lang/String;

.field private static CHECK_SERVER_PATH:Ljava/lang/String;

.field private static DIAGNOSTIC:Ljava/lang/String;

.field private static DOWNLOADZIP_PATH:Ljava/lang/String;

.field private static FILEZIP_PATH:Ljava/lang/String;

.field private static IMAGES_PATH:Ljava/lang/String;

.field private static LOGS_PATH:Ljava/lang/String;

.field private static LOGZIP:Ljava/lang/String;

.field public static PACKAGE_PATH:Ljava/lang/String;

.field private static REMOTE_REPORT_PATH:Ljava/lang/String;

.field private static REPAIRINFO_PATH:Ljava/lang/String;

.field private static ROOT_PATH:Ljava/lang/String;

.field private static UNZIP_PATH:Ljava/lang/String;

.field private static UPGRADE_PATH:Ljava/lang/String;

.field private static VEHICLES_PATH:Ljava/lang/String;

.field private static final tag:Ljava/lang/String;


# instance fields
.field private carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/cnlaunch/x431pro/utils/PathUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->tag:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "cnlaunch"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->ROOT_PATH:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "X-431 PAD II"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->PACKAGE_PATH:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "zipFile"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->FILEZIP_PATH:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "unZip"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->UNZIP_PATH:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "images"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->IMAGES_PATH:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "downloadZip"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->DOWNLOADZIP_PATH:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "DIAGNOSTIC"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->DIAGNOSTIC:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "upgrade"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->UPGRADE_PATH:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "VEHICLES"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->VEHICLES_PATH:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "assets"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->ASSETS_PATH:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "repairinfo"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->REPAIRINFO_PATH:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "remotediag"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->REMOTE_REPORT_PATH:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "Log/DiagnoseLog"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->LOGS_PATH:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "checkServer"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->CHECK_SERVER_PATH:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "LogZip"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->LOGZIP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    invoke-direct {v0, p1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/utils/PathUtils;->carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    .line 68
    return-void
.end method

.method public static getAssetsPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 280
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->ASSETS_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAssetsPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "comtext"

    .prologue
    .line 289
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->ASSETS_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCheckServerPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 307
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->CHECK_SERVER_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultExternalStoragePath()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, bcanBeRemoved:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, externPath:Ljava/lang/String;
    move-object v6, v2

    .line 92
    .local v6, phonePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 94
    if-nez v0, :cond_0

    .line 125
    .end local v2           #externPath:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 99
    .restart local v2       #externPath:Ljava/lang/String;
    :cond_0
    sget-object v7, Lcom/cnlaunch/x431pro/activity/GDApplication;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_2

    .line 102
    sget-object v7, Lcom/cnlaunch/x431pro/activity/GDApplication;->mContext:Landroid/content/Context;

    .line 103
    const-string/jumbo v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 102
    check-cast v4, Landroid/os/storage/StorageManager;

    .line 105
    .local v4, mStorageManager:Landroid/os/storage/StorageManager;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 106
    const-string/jumbo v8, "getVolumePaths"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    .line 105
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 107
    .local v3, mMethodGetPaths:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 108
    .local v5, paths:[Ljava/lang/String;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #paths:[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 109
    .restart local v5       #paths:[Ljava/lang/String;
    array-length v7, v5

    if-le v7, v10, :cond_1

    .line 110
    const/4 v7, 0x1

    aget-object v6, v5, v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    move-object v2, v6

    .line 111
    goto :goto_0

    .line 112
    .end local v3           #mMethodGetPaths:Ljava/lang/reflect/Method;
    .end local v5           #paths:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 125
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v4           #mStorageManager:Landroid/os/storage/StorageManager;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 114
    .restart local v4       #mStorageManager:Landroid/os/storage/StorageManager;
    :catch_1
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 117
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 119
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDownloadZipPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->DOWNLOADZIP_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileZipPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->FILEZIP_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImagesPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->IMAGES_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLaunchPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getSDCardPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->ROOT_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogZipPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLaunchPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->LOGZIP:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogsPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->LOGS_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackagePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    sget-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->PACKAGE_PATH:Ljava/lang/String;

    const-string/jumbo v1, "Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->PACKAGE_PATH:Ljava/lang/String;

    const-string/jumbo v1, "ScanPad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLaunchPath()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLaunchPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->PACKAGE_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPackagePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 168
    const-string/jumbo v0, ""

    .line 169
    .local v0, apptitle:Ljava/lang/String;
    const-string/jumbo v2, "package_path"

    invoke-static {p0, v2}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, package_path:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->tag:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "package_path: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    move-object v0, v1

    .line 185
    :goto_0
    const-string/jumbo v2, "Pro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLaunchPath()Ljava/lang/String;

    move-result-object v2

    .line 188
    :goto_1
    return-object v2

    .line 174
    :cond_0
    sget-object v0, Lcom/cnlaunch/x431pro/utils/PathUtils;->PACKAGE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 188
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLaunchPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static varargs getPath([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "pathlist"

    .prologue
    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v3, pathBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 328
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    array-length v4, p0

    if-lt v2, v4, :cond_1

    .line 337
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 339
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i:I
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 329
    .restart local v2       #i:I
    :cond_1
    :try_start_1
    aget-object v4, p0, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 330
    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2

    .line 332
    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getRemoteReportPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->REMOTE_REPORT_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRepairInfoPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->REPAIRINFO_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, path:Ljava/lang/String;
    sget-object v1, Lcom/cnlaunch/x431pro/utils/PathUtils;->PACKAGE_PATH:Ljava/lang/String;

    const-string/jumbo v2, "X431Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getDefaultExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    return-object v0
.end method

.method public static getSerialNoPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "SerialNo"

    .prologue
    .line 144
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTempImagesPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLaunchPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "temp"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUnZipPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->UNZIP_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpgradePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->DIAGNOSTIC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->UPGRADE_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVehiclesPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "serialNo"

    .prologue
    .line 253
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->DIAGNOSTIC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->VEHICLES_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVehiclesZipPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "serialNo"

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v0, pathBuilder:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getSerialNoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getLicensePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "softPackageID"
    .parameter "versionNo"
    .parameter "serialNo"

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .local v0, versionsPaths:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    invoke-virtual {p0, p3, p1, p2}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVersionPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "LICENSE.DAT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSoftLibPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "serialNo"
    .parameter "carName"
    .parameter "ver"

    .prologue
    .line 387
    const-string/jumbo v1, ""

    .line 388
    .local v1, softLibPath:Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVersionPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, versionPath:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, sdcardPath:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 393
    :cond_0
    sget-object v3, Lcom/cnlaunch/x431pro/utils/PathUtils;->tag:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "softLibPath="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    return-object v1
.end method

.method public getVersionPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "serialNo"
    .parameter "softPackageId"
    .parameter "versionNo"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 398
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/PathUtils;->carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    invoke-virtual {v2, p1, p2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getVehiclePathBySoftId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, vehiclePath:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v6

    aput-object p3, v2, v3

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, theVersionPath:Ljava/lang/String;
    sget-object v2, Lcom/cnlaunch/x431pro/utils/PathUtils;->tag:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "theVersionPath="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    return-object v0
.end method
