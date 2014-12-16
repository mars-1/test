.class public Lcom/cnlaunch/framework/utils/NLog;
.super Ljava/lang/Object;
.source "NLog.java"


# static fields
.field private static final LOG_FORMAT:Ljava/lang/String; = "%1$s\n%2$s"

.field public static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cnlaunch/framework/utils/NLog;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "args"

    .prologue
    .line 26
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/cnlaunch/framework/utils/NLog;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "args"

    .prologue
    .line 42
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/cnlaunch/framework/utils/NLog;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 38
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "ex"
    .parameter "tag"
    .parameter "args"

    .prologue
    .line 46
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/cnlaunch/framework/utils/NLog;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "args"

    .prologue
    .line 30
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/cnlaunch/framework/utils/NLog;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/cnlaunch/framework/utils/NLog;->isDebug:Z

    return v0
.end method

.method private static varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .parameter "priority"
    .parameter "ex"
    .parameter "tag"
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    .line 58
    sget-boolean v5, Lcom/cnlaunch/framework/utils/NLog;->isDebug:Z

    if-nez v5, :cond_0

    .line 74
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string/jumbo v0, ""

    .line 61
    .local v0, log:Ljava/lang/String;
    if-nez p1, :cond_3

    .line 62
    if-eqz p3, :cond_1

    array-length v5, p3

    if-lez v5, :cond_1

    .line 63
    array-length v5, p3

    :goto_1
    if-lt v4, v5, :cond_2

    .line 73
    :cond_1
    :goto_2
    invoke-static {p0, p2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_2
    aget-object v3, p3, v4

    .line 64
    .local v3, obj:Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 68
    .end local v3           #obj:Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, logMessage:Ljava/lang/String;
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, logBody:Ljava/lang/String;
    const-string/jumbo v5, "%1$s\n%2$s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    const/4 v4, 0x1

    aput-object v1, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static setDebug(Z)V
    .locals 0
    .parameter "isDebug"

    .prologue
    .line 81
    sput-boolean p0, Lcom/cnlaunch/framework/utils/NLog;->isDebug:Z

    .line 82
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "args"

    .prologue
    .line 34
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/cnlaunch/framework/utils/NLog;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method
