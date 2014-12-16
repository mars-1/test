.class public Lorg/ksoap2/transport/KeepAliveHttpTransportSE;
.super Lorg/ksoap2/transport/HttpTransportSE;
.source "KeepAliveHttpTransportSE.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "url"
    .parameter "timeout"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "url"
    .parameter "timeout"
    .parameter "contentLength"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 0
    .parameter "proxy"
    .parameter "url"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;I)V
    .locals 0
    .parameter "proxy"
    .parameter "url"
    .parameter "timeout"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;II)V
    .locals 0
    .parameter "proxy"
    .parameter "url"
    .parameter "timeout"
    .parameter "contentLength"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    .line 99
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter "soapAction"
    .parameter "envelope"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p3, :cond_0

    .line 119
    new-instance p3, Ljava/util/ArrayList;

    .end local p3
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .restart local p3
    :cond_0
    const-string/jumbo v1, "Connection"

    invoke-virtual {p0, p3, v1}, Lorg/ksoap2/transport/KeepAliveHttpTransportSE;->getHeader(Ljava/util/List;Ljava/lang/String;)Lorg/ksoap2/HeaderProperty;

    move-result-object v0

    .line 124
    .local v0, ref:Lorg/ksoap2/HeaderProperty;
    if-nez v0, :cond_1

    .line 125
    new-instance v0, Lorg/ksoap2/HeaderProperty;

    .end local v0           #ref:Lorg/ksoap2/HeaderProperty;
    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "keep-alive"

    invoke-direct {v0, v1, v2}, Lorg/ksoap2/HeaderProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .restart local v0       #ref:Lorg/ksoap2/HeaderProperty;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 128
    :cond_1
    const-string/jumbo v1, "keep-alive"

    invoke-virtual {v0, v1}, Lorg/ksoap2/HeaderProperty;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getHeader(Ljava/util/List;Ljava/lang/String;)Lorg/ksoap2/HeaderProperty;
    .locals 4
    .parameter "lista"
    .parameter "key"

    .prologue
    .line 136
    const/4 v2, 0x0

    .line 138
    .local v2, res:Lorg/ksoap2/HeaderProperty;
    if-eqz p1, :cond_0

    .line 139
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 148
    .end local v1           #i:I
    :cond_0
    :goto_1
    return-object v2

    .line 140
    .restart local v1       #i:I
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ksoap2/HeaderProperty;

    .line 141
    .local v0, hp:Lorg/ksoap2/HeaderProperty;
    invoke-virtual {v0}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    move-object v2, v0

    .line 143
    goto :goto_1

    .line 139
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
