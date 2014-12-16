.class public Lcom/cnlaunch/mycar/jni/X431String;
.super Ljava/lang/Object;
.source "X431String.java"


# instance fields
.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "strValue"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    .line 13
    return-void
.end method
