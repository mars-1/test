.class public Lcom/cnlaunch/physics/utils/MLog;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field private static flag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cnlaunch/physics/utils/MLog;->flag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "log"

    .prologue
    .line 15
    sget-boolean v0, Lcom/cnlaunch/physics/utils/MLog;->flag:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "log"

    .prologue
    .line 20
    sget-boolean v0, Lcom/cnlaunch/physics/utils/MLog;->flag:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "log"

    .prologue
    .line 35
    sget-boolean v0, Lcom/cnlaunch/physics/utils/MLog;->flag:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method

.method public static openDebug(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 45
    sput-boolean p0, Lcom/cnlaunch/physics/utils/MLog;->flag:Z

    .line 46
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "log"

    .prologue
    .line 30
    sget-boolean v0, Lcom/cnlaunch/physics/utils/MLog;->flag:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "log"

    .prologue
    .line 25
    sget-boolean v0, Lcom/cnlaunch/physics/utils/MLog;->flag:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    return-void
.end method
