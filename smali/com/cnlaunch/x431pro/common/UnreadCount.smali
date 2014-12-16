.class public abstract Lcom/cnlaunch/x431pro/common/UnreadCount;
.super Ljava/lang/Object;
.source "UnreadCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearAllCount()V
.end method

.method public abstract getCount()V
.end method

.method public abstract register()V
.end method

.method public abstract setChangeCallback(Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;)V
.end method

.method public abstract unregister()V
.end method
