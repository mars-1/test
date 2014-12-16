.class public Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;
.super Ljava/lang/Object;
.source "LSX_AUTOINFO.java"


# instance fields
.field public chassis:Ljava/lang/String;

.field public displacement:Ljava/lang/String;

.field public enginemodel:Ljava/lang/String;

.field public madein:Ljava/lang/String;

.field public make:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public vin:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->vin:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->make:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->model:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->year:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->madein:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->chassis:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->enginemodel:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->displacement:Ljava/lang/String;

    .line 36
    return-void
.end method
