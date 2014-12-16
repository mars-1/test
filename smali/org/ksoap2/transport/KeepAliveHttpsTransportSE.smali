.class public Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;
.super Lorg/ksoap2/transport/HttpsTransportSE;
.source "KeepAliveHttpsTransportSE.java"


# instance fields
.field private serviceConnection:Lorg/ksoap2/transport/ServiceConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .parameter "timeout"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ksoap2/transport/HttpsTransportSE;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 31
    iput p4, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->timeout:I

    .line 32
    return-void
.end method


# virtual methods
.method public getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lorg/ksoap2/transport/HttpsServiceConnectionSEIgnoringConnectionClose;

    iget-object v1, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->host:Ljava/lang/String;

    iget v2, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->port:I

    iget-object v3, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->file:Ljava/lang/String;

    iget v4, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->timeout:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ksoap2/transport/HttpsServiceConnectionSEIgnoringConnectionClose;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    .line 45
    iget-object v0, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "keep-alive"

    invoke-interface {v0, v1, v2}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    return-object v0
.end method
