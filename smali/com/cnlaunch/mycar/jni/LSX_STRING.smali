.class public Lcom/cnlaunch/mycar/jni/LSX_STRING;
.super Ljava/lang/Object;
.source "LSX_STRING.java"


# instance fields
.field public str:Ljava/lang/String;

.field public str_en:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 24
    return-void
.end method
