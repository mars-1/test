.class public Lde/greenrobot/dao/DaoLog;
.super Ljava/lang/Object;
.source "DaoLog.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "greenDAO"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 58
    const-string/jumbo v0, "greenDAO"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "msg"
    .parameter "th"

    .prologue
    .line 62
    const-string/jumbo v0, "greenDAO"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 86
    const-string/jumbo v0, "greenDAO"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "msg"
    .parameter "th"

    .prologue
    .line 90
    const-string/jumbo v0, "greenDAO"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .parameter "th"

    .prologue
    .line 42
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 66
    const-string/jumbo v0, "greenDAO"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "msg"
    .parameter "th"

    .prologue
    .line 70
    const-string/jumbo v0, "greenDAO"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static isLoggable(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 38
    const-string/jumbo v0, "greenDAO"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static println(ILjava/lang/String;)I
    .locals 1
    .parameter "level"
    .parameter "msg"

    .prologue
    .line 46
    const-string/jumbo v0, "greenDAO"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 50
    const-string/jumbo v0, "greenDAO"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "msg"
    .parameter "th"

    .prologue
    .line 54
    const-string/jumbo v0, "greenDAO"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 74
    const-string/jumbo v0, "greenDAO"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "msg"
    .parameter "th"

    .prologue
    .line 78
    const-string/jumbo v0, "greenDAO"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/Throwable;)I
    .locals 1
    .parameter "th"

    .prologue
    .line 82
    const-string/jumbo v0, "greenDAO"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
