.class public Lorg/jivesoftware/smack/AndroidConnectionConfiguration;
.super Lorg/jivesoftware/smack/ConnectionConfiguration;
.source "AndroidConnectionConfiguration.java"


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x3e8


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>()V

    .line 30
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->AndroidInit(Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "serviceName"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>()V

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->AndroidInit(Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "port"
    .parameter "name"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->AndroidInit()V

    .line 47
    return-void
.end method

.method private AndroidInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 52
    const-string/jumbo v1, "AndroidCAStore"

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->setTruststoreType(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->setTruststorePassword(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->setTruststorePath(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string/jumbo v1, "BKS"

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->setTruststoreType(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "javax.net.ssl.trustStore"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "etc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "security"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    const-string/jumbo v2, "cacerts.bks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_1
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->setTruststorePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private AndroidInit(Ljava/lang/String;I)V
    .locals 10
    .parameter "serviceName"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->AndroidInit()V

    .line 93
    new-instance v1, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;

    invoke-direct {v1, p0, p1}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;-><init>(Lorg/jivesoftware/smack/AndroidConnectionConfiguration;Ljava/lang/String;)V

    .line 94
    .local v1, dnsSrv:Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;
    new-instance v6, Ljava/lang/Thread;

    const-string/jumbo v7, "dns-srv-lookup"

    invoke-direct {v6, v1, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 95
    .local v6, t:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 97
    int-to-long v7, p2

    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    invoke-virtual {v1}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;->getHostAddress()Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    move-result-object v0

    .line 103
    .local v0, address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    if-nez v0, :cond_0

    .line 104
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    const-string/jumbo v8, "DNS lookup failure"

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 98
    .end local v0           #address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    :catch_0
    move-exception v2

    .line 99
    .local v2, e:Ljava/lang/InterruptedException;
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "DNS lookup timeout after "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 107
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v0       #address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, host:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->getPort()I

    move-result v4

    .line 109
    .local v4, port:I
    invoke-static {}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->forDefaultProxy()Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-result-object v5

    .line 111
    .local v5, proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;
    invoke-virtual {p0, v3, v4, p1, v5}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->init(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    .line 112
    return-void
.end method
