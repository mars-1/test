.class public Lcom/cnlaunch/golo3/utils/md5/NullOutputStream;
.super Ljava/io/OutputStream;
.source "NullOutputStream.java"


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/golo3/utils/md5/NullOutputStream;->closed:Z

    .line 33
    return-void
.end method

.method private _throwClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "This OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/golo3/utils/md5/NullOutputStream;->closed:Z

    .line 37
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
    .line 40
    iget-boolean v0, p0, Lcom/cnlaunch/golo3/utils/md5/NullOutputStream;->closed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cnlaunch/golo3/utils/md5/NullOutputStream;->_throwClosed()V

    .line 41
    :cond_0
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
    .line 56
    iget-boolean v0, p0, Lcom/cnlaunch/golo3/utils/md5/NullOutputStream;->closed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cnlaunch/golo3/utils/md5/NullOutputStream;->_throwClosed()V

    .line 57
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/cnlaunch/golo3/utils/md5/NullOutputStream;->closed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cnlaunch/golo3/utils/md5/NullOutputStream;->_throwClosed()V

    .line 49
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "b"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/cnlaunch/golo3/utils/md5/NullOutputStream;->closed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cnlaunch/golo3/utils/md5/NullOutputStream;->_throwClosed()V

    .line 53
    :cond_0
    return-void
.end method
