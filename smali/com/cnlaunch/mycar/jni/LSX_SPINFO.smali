.class public Lcom/cnlaunch/mycar/jni/LSX_SPINFO;
.super Ljava/lang/Object;
.source "LSX_SPINFO.java"


# instance fields
.field public name:Ljava/lang/String;

.field public phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;->name:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;->phone:Ljava/lang/String;

    .line 24
    return-void
.end method
