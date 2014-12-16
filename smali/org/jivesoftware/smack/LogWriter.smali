.class public Lorg/jivesoftware/smack/LogWriter;
.super Ljava/io/BufferedWriter;
.source "LogWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 16
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;)V
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    const-string/jumbo v1, "&quot;"

    const-string/jumbo v2, " "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, log:Ljava/lang/String;
    invoke-super {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 23
    return-void
.end method
