.class public Lcom/cnlaunch/x431pro/utils/network/NetWorkUtils;
.super Ljava/lang/Object;
.source "NetWorkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static domainNameResolution(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "mdomain"

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, domainIP:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 47
    .local v2, inetHost:Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    .end local v2           #inetHost:Ljava/net/InetAddress;
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, ex:Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isNetConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "mContext"

    .prologue
    .line 30
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 31
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 32
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static ping(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "url"

    .prologue
    .line 55
    const-string/jumbo v6, ""

    .line 57
    .local v6, str:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "/system/bin/ping -c 10 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 58
    .local v4, process:Ljava/lang/Process;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 60
    .local v5, reader:Ljava/io/BufferedReader;
    const/16 v7, 0x1000

    new-array v0, v7, [C

    .line 61
    .local v0, buffer:[C
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v3, output:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    .local v2, i:I
    if-gtz v2, :cond_0

    .line 64
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    .end local v0           #buffer:[C
    .end local v2           #i:I
    .end local v3           #output:Ljava/lang/StringBuffer;
    .end local v4           #process:Ljava/lang/Process;
    .end local v5           #reader:Ljava/io/BufferedReader;
    :goto_1
    return-object v6

    .line 63
    .restart local v0       #buffer:[C
    .restart local v2       #i:I
    .restart local v3       #output:Ljava/lang/StringBuffer;
    .restart local v4       #process:Ljava/lang/Process;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v0           #buffer:[C
    .end local v2           #i:I
    .end local v3           #output:Ljava/lang/StringBuffer;
    .end local v4           #process:Ljava/lang/Process;
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
