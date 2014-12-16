.class public Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
.super Ljava/lang/Object;
.source "LSX_BASEINFO.java"


# instance fields
.field public codepage:I

.field public creationtime:Ljava/lang/String;

.field public diagversion:Ljava/lang/String;

.field public langcode:Ljava/lang/String;

.field public langcode_en:Ljava/lang/String;

.field public langname:Ljava/lang/String;

.field public productid:S

.field public serialno:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->serialno:Ljava/lang/String;

    .line 40
    iput-short v1, p0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->productid:S

    .line 41
    iput v1, p0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->codepage:I

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langname:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode_en:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->diagversion:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->creationtime:Ljava/lang/String;

    .line 38
    return-void
.end method
