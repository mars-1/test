.class public Lcom/cnlaunch/x431pro/utils/conversion/ObjectConversion;
.super Ljava/lang/Object;
.source "ObjectConversion.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, obj:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 73
    .local v0, bytes:[B
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/ObjectConversion;->writeObjectToBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/conversion/ObjectConversion;->readBytesToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 75
    .local v1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    return-object v1
.end method

.method public static readBytesToObject([B)Ljava/lang/Object;
    .locals 7
    .parameter "bytes"

    .prologue
    .line 29
    const/4 v3, 0x0

    .line 31
    .local v3, object:Ljava/lang/Object;
    :try_start_0
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->byteToWord([B)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 32
    .local v1, base64Bytes:[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 33
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    .local v4, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 38
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v1           #base64Bytes:[B
    .end local v3           #object:Ljava/lang/Object;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v3

    .line 35
    .restart local v3       #object:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 36
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeObjectToBytes(Ljava/lang/Object;)[B
    .locals 6
    .parameter "obj"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, bytes:[B
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    .local v3, toByte:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    .local v2, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encode([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .end local v3           #toByte:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
