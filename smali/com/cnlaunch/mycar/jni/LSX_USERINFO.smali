.class public Lcom/cnlaunch/mycar/jni/LSX_USERINFO;
.super Ljava/lang/Object;
.source "LSX_USERINFO.java"


# instance fields
.field public license:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->name:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->phone:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->license:Ljava/lang/String;

    .line 25
    return-void
.end method
