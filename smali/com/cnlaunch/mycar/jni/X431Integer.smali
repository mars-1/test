.class public Lcom/cnlaunch/mycar/jni/X431Integer;
.super Ljava/lang/Object;
.source "X431Integer.java"


# instance fields
.field public mValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "iValue"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/cnlaunch/mycar/jni/X431Integer;->mValue:I

    .line 12
    return-void
.end method
