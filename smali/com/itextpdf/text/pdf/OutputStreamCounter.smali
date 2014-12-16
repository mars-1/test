.class public Lcom/itextpdf/text/pdf/OutputStreamCounter;
.super Ljava/io/OutputStream;
.source "OutputStreamCounter.java"


# instance fields
.field protected counter:I

.field protected out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:I

    .line 59
    iput-object p1, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->out:Ljava/io/OutputStream;

    .line 60
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 74
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 90
    return-void
.end method

.method public getCounter()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:I

    return v0
.end method

.method public resetCounter()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:I

    .line 166
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:I

    .line 124
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 125
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:I

    .line 104
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 105
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:I

    .line 157
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 158
    return-void
.end method
