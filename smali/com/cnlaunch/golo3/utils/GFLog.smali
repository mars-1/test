.class public Lcom/cnlaunch/golo3/utils/GFLog;
.super Ljava/lang/Object;
.source "GFLog.java"


# static fields
.field private static isShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cnlaunch/golo3/utils/GFLog;->isShow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 9
    sget-boolean v0, Lcom/cnlaunch/golo3/utils/GFLog;->isShow:Z

    if-eqz v0, :cond_0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    const-string/jumbo v0, "gf"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    return-void
.end method
