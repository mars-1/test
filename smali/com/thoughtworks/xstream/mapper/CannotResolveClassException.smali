.class public Lcom/thoughtworks/xstream/mapper/CannotResolveClassException;
.super Lcom/thoughtworks/xstream/XStreamException;
.source "CannotResolveClassException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/XStreamException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "className"
    .parameter "cause"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/XStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method
