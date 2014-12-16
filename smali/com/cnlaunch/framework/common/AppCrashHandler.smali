.class public Lcom/cnlaunch/framework/common/AppCrashHandler;
.super Ljava/lang/Object;
.source "AppCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/framework/common/AppCrashHandler$AppCrashCallback;
    }
.end annotation


# static fields
.field private static instance:Lcom/cnlaunch/framework/common/AppCrashHandler;


# instance fields
.field private final EXCEPTION:Ljava/lang/String;

.field private final PATTERN:Ljava/lang/String;

.field private final PREFIX:Ljava/lang/String;

.field private final SUFFIX:Ljava/lang/String;

.field private final TRACE:Ljava/lang/String;

.field private final VERSIONCODE:Ljava/lang/String;

.field private final VERSIONNAME:Ljava/lang/String;

.field private crashReport:Ljava/util/Properties;

.field private mCallback:Lcom/cnlaunch/framework/common/AppCrashHandler$AppCrashCallback;

.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Lcom/cnlaunch/framework/common/AppCrashHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->tag:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->crashReport:Ljava/util/Properties;

    .line 56
    const-string/jumbo v0, "trace"

    iput-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->TRACE:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "exception"

    iput-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->EXCEPTION:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "versionName"

    iput-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->VERSIONNAME:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "versionCode"

    iput-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->VERSIONCODE:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "crash_"

    iput-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->PREFIX:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "yyyy-MM-dd hh:mm:ss"

    iput-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->PATTERN:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, ".cr"

    iput-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->SUFFIX:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/framework/common/AppCrashHandler;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/framework/common/AppCrashHandler;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/framework/common/AppCrashHandler;->saveCrashInfo(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method private conllectCrashDeviceInfo(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 164
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 165
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 166
    .local v3, pi:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 167
    iget-object v5, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->crashReport:Ljava/util/Properties;

    const-string/jumbo v6, "versionName"

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v5, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->crashReport:Ljava/util/Properties;

    const-string/jumbo v6, "versionCode"

    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    const-class v5, Landroid/os/Build;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 172
    .local v2, fieldList:[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    .line 173
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_2

    .line 185
    .end local v2           #fieldList:[Ljava/lang/reflect/Field;
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    return-void

    .line 173
    .restart local v2       #fieldList:[Ljava/lang/reflect/Field;
    .restart local v3       #pi:Landroid/content/pm/PackageInfo;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    aget-object v0, v2, v5

    .line 174
    .local v0, device:Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 175
    iget-object v7, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->crashReport:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 178
    .end local v0           #device:Ljava/lang/reflect/Field;
    .end local v2           #fieldList:[Ljava/lang/reflect/Field;
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 179
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 180
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 181
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 182
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 183
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance()Lcom/cnlaunch/framework/common/AppCrashHandler;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/cnlaunch/framework/common/AppCrashHandler;->instance:Lcom/cnlaunch/framework/common/AppCrashHandler;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/cnlaunch/framework/common/AppCrashHandler;

    invoke-direct {v0}, Lcom/cnlaunch/framework/common/AppCrashHandler;-><init>()V

    sput-object v0, Lcom/cnlaunch/framework/common/AppCrashHandler;->instance:Lcom/cnlaunch/framework/common/AppCrashHandler;

    .line 74
    :cond_0
    sget-object v0, Lcom/cnlaunch/framework/common/AppCrashHandler;->instance:Lcom/cnlaunch/framework/common/AppCrashHandler;

    return-object v0
.end method

.method private handlerException(Ljava/lang/Throwable;)Z
    .locals 5
    .parameter "ex"

    .prologue
    const/4 v2, 0x1

    .line 123
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return v2

    .line 126
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, msg:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    const/4 v2, 0x0

    goto :goto_0

    .line 130
    :cond_1
    new-instance v3, Lcom/cnlaunch/framework/common/AppCrashHandler$1;

    invoke-direct {v3, p0, p1}, Lcom/cnlaunch/framework/common/AppCrashHandler$1;-><init>(Lcom/cnlaunch/framework/common/AppCrashHandler;Ljava/lang/Throwable;)V

    .line 147
    invoke-virtual {v3}, Lcom/cnlaunch/framework/common/AppCrashHandler$1;->start()V

    .line 150
    const-wide/16 v3, 0x1388

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private saveCrashInfo(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 16
    .parameter "context"
    .parameter "ex"

    .prologue
    .line 194
    :try_start_0
    new-instance v11, Ljava/io/StringWriter;

    invoke-direct {v11}, Ljava/io/StringWriter;-><init>()V

    .line 195
    .local v11, writer:Ljava/io/Writer;
    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 196
    .local v10, printWriter:Ljava/io/PrintWriter;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 199
    .local v2, cause:Ljava/lang/Throwable;
    :goto_0
    if-nez v2, :cond_1

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 204
    .local v9, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 205
    .local v8, pi:Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v1, builder:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 207
    .local v3, date:Ljava/util/Date;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd,HH-mm-ss"

    invoke-direct {v6, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 208
    .local v6, format:Ljava/text/SimpleDateFormat;
    const-string/jumbo v12, "Devices Model: %s\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string/jumbo v12, "Devices SDK Version: %s\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    if-eqz v8, :cond_0

    .line 211
    const-string/jumbo v12, "Software Version Name: %s\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string/jumbo v12, "Software Version Code: %s\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_0
    const-string/jumbo v12, "Software Type: %s\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "X431PADII"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string/jumbo v12, "Crash Time: %s\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/framework/common/AppCrashHandler;->getCrashFileName()Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/framework/common/AppCrashHandler;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 220
    .local v7, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 221
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 222
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 226
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #cause:Ljava/lang/Throwable;
    .end local v3           #date:Ljava/util/Date;
    .end local v5           #fileName:Ljava/lang/String;
    .end local v6           #format:Ljava/text/SimpleDateFormat;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v8           #pi:Landroid/content/pm/PackageInfo;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #printWriter:Ljava/io/PrintWriter;
    .end local v11           #writer:Ljava/io/Writer;
    :goto_1
    return-void

    .line 200
    .restart local v2       #cause:Ljava/lang/Throwable;
    .restart local v10       #printWriter:Ljava/io/PrintWriter;
    .restart local v11       #writer:Ljava/io/Writer;
    :cond_1
    invoke-virtual {v2, v10}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 201
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 223
    .end local v2           #cause:Ljava/lang/Throwable;
    .end local v10           #printWriter:Ljava/io/PrintWriter;
    .end local v11           #writer:Ljava/io/Writer;
    :catch_0
    move-exception v4

    .line 224
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getCrashFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "crash_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, fileName:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 236
    .local v0, date:Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 237
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string/jumbo v3, ".cr"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 84
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 85
    return-void
.end method

.method public sendCrashReport()V
    .locals 8

    .prologue
    .line 247
    iget-object v5, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 248
    .local v2, filesDir:Ljava/io/File;
    new-instance v3, Lcom/cnlaunch/framework/common/AppCrashHandler$2;

    invoke-direct {v3, p0}, Lcom/cnlaunch/framework/common/AppCrashHandler$2;-><init>(Lcom/cnlaunch/framework/common/AppCrashHandler;)V

    .line 255
    .local v3, filter:Ljava/io/FilenameFilter;
    invoke-virtual {v2, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, list:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 257
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_1

    .line 270
    :cond_0
    return-void

    .line 257
    :cond_1
    aget-object v1, v4, v5

    .line 258
    .local v1, fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 261
    iget-object v7, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->mCallback:Lcom/cnlaunch/framework/common/AppCrashHandler$AppCrashCallback;

    if-eqz v7, :cond_2

    .line 262
    iget-object v7, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->mCallback:Lcom/cnlaunch/framework/common/AppCrashHandler$AppCrashCallback;

    invoke-interface {v7, v0}, Lcom/cnlaunch/framework/common/AppCrashHandler$AppCrashCallback;->upload(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 257
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public setCallback(Lcom/cnlaunch/framework/common/AppCrashHandler$AppCrashCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->mCallback:Lcom/cnlaunch/framework/common/AppCrashHandler$AppCrashCallback;

    .line 99
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 103
    invoke-direct {p0, p2}, Lcom/cnlaunch/framework/common/AppCrashHandler;->handlerException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 110
    invoke-static {}, Lcom/cnlaunch/framework/common/ActivityPageManager;->getInstance()Lcom/cnlaunch/framework/common/ActivityPageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/framework/common/AppCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/ActivityPageManager;->exit(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
