.class public Lorg/jivesoftware/smack/LogReader;
.super Ljava/io/BufferedReader;
.source "LogReader.java"


# instance fields
.field private builder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/LogReader;->builder:Ljava/lang/StringBuilder;

    .line 18
    return-void
.end method


# virtual methods
.method public read([CII)I
    .locals 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v0

    .line 24
    .local v0, content:I
    iget-object v2, p0, Lorg/jivesoftware/smack/LogReader;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 25
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 27
    iget-object v2, p0, Lorg/jivesoftware/smack/LogReader;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, log:Ljava/lang/String;
    iget-object v2, p0, Lorg/jivesoftware/smack/LogReader;->builder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/jivesoftware/smack/LogReader;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 30
    .end local v1           #log:Ljava/lang/String;
    :cond_0
    return v0
.end method
