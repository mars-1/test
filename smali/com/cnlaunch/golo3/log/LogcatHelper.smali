.class public Lcom/cnlaunch/golo3/log/LogcatHelper;
.super Ljava/lang/Object;
.source "LogcatHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/cnlaunch/golo3/log/LogcatHelper;

.field private static PATH_LOGCAT:Ljava/lang/String;


# instance fields
.field private mLogDumper:Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;

.field private mPId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/cnlaunch/golo3/log/LogcatHelper;->INSTANCE:Lcom/cnlaunch/golo3/log/LogcatHelper;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/golo3/log/LogcatHelper;->mLogDumper:Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;

    .line 60
    invoke-virtual {p0, p1}, Lcom/cnlaunch/golo3/log/LogcatHelper;->init(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/golo3/log/LogcatHelper;->mPId:I

    .line 62
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/golo3/log/LogcatHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    sget-object v0, Lcom/cnlaunch/golo3/log/LogcatHelper;->INSTANCE:Lcom/cnlaunch/golo3/log/LogcatHelper;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/cnlaunch/golo3/log/LogcatHelper;

    invoke-direct {v0, p0}, Lcom/cnlaunch/golo3/log/LogcatHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/golo3/log/LogcatHelper;->INSTANCE:Lcom/cnlaunch/golo3/log/LogcatHelper;

    .line 56
    :cond_0
    sget-object v0, Lcom/cnlaunch/golo3/log/LogcatHelper;->INSTANCE:Lcom/cnlaunch/golo3/log/LogcatHelper;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string/jumbo v2, "mounted"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "remote-golo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cnlaunch/golo3/log/LogcatHelper;->PATH_LOGCAT:Ljava/lang/String;

    .line 45
    :goto_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/cnlaunch/golo3/log/LogcatHelper;->PATH_LOGCAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, file:Ljava/io/File;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PATH_LOGCAT->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 50
    :cond_0
    return-void

    .line 42
    .end local v0           #file:Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Chap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cnlaunch/golo3/log/LogcatHelper;->PATH_LOGCAT:Ljava/lang/String;

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/golo3/log/LogcatHelper;->mLogDumper:Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;

    iget v1, p0, Lcom/cnlaunch/golo3/log/LogcatHelper;->mPId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cnlaunch/golo3/log/LogcatHelper;->PATH_LOGCAT:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;-><init>(Lcom/cnlaunch/golo3/log/LogcatHelper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/golo3/log/LogcatHelper;->mLogDumper:Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/golo3/log/LogcatHelper;->mLogDumper:Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->start()V

    .line 68
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cnlaunch/golo3/log/LogcatHelper;->mLogDumper:Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/cnlaunch/golo3/log/LogcatHelper;->mLogDumper:Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;->stopLogs()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/golo3/log/LogcatHelper;->mLogDumper:Lcom/cnlaunch/golo3/log/LogcatHelper$LogDumper;

    .line 75
    :cond_0
    return-void
.end method
