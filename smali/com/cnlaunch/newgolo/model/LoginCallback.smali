.class public abstract Lcom/cnlaunch/newgolo/model/LoginCallback;
.super Ljava/lang/Object;
.source "LoginCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/model/LoginCallback$Status;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onStatusChange(Lcom/cnlaunch/newgolo/model/LoginCallback$Status;)V
.end method
