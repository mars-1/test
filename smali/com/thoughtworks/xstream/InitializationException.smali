.class public Lcom/thoughtworks/xstream/InitializationException;
.super Lcom/thoughtworks/xstream/XStream$InitializationException;
.source "InitializationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/XStream$InitializationException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream$InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method
