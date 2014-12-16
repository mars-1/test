.class public Lcom/cnlaunch/x431pro/utils/file/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/cnlaunch/x431pro/utils/file/FileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Byte2InputStream([B)Ljava/io/InputStream;
    .locals 1
    .parameter "b"

    .prologue
    .line 358
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 359
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    return-object v0
.end method

.method public static CreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    .line 1021
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1023
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1025
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1029
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    .end local v2           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-object v2

    .line 1030
    .restart local v2       #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1031
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1032
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static IniReaderHasSection(Ljava/lang/String;)Ljava/util/Map;
    .locals 15
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    .prologue
    .line 724
    sget-object v10, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "IniReaderHasSection enter, fileName="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 726
    .local v8, sections:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    const/4 v5, 0x0

    .line 728
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 729
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 730
    .local v2, line:Ljava/lang/String;
    const/4 v4, 0x0

    .line 731
    .local v4, properties:Ljava/util/Properties;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v2

    if-nez v2, :cond_2

    .line 753
    if-eqz v6, :cond_5

    .line 755
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-object v5, v6

    .line 761
    .end local v2           #line:Ljava/lang/String;
    .end local v4           #properties:Ljava/util/Properties;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    sget-object v10, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "IniReaderHasSection exit, sections="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    return-object v8

    .line 732
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v4       #properties:Ljava/util/Properties;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 733
    const-string/jumbo v10, "\\[.*\\]"

    invoke-virtual {v2, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 734
    const-string/jumbo v10, "\\[(.*)\\]"

    const-string/jumbo v11, "$1"

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 735
    .local v7, section:Ljava/lang/String;
    new-instance v4, Ljava/util/Properties;

    .end local v4           #properties:Ljava/util/Properties;
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 736
    .restart local v4       #properties:Ljava/util/Properties;
    invoke-interface {v8, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_0

    .line 746
    .end local v4           #properties:Ljava/util/Properties;
    .end local v7           #section:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 747
    .end local v2           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 753
    if-eqz v5, :cond_1

    .line 755
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 756
    :catch_1
    move-exception v0

    .line 757
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 737
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v4       #properties:Ljava/util/Properties;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_6
    const-string/jumbo v10, ".*=.*"

    invoke-virtual {v2, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 738
    if-eqz v4, :cond_0

    .line 739
    const/16 v10, 0x3d

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 740
    .local v1, i:I
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, name:Ljava/lang/String;
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 742
    .local v9, value:Ljava/lang/String;
    invoke-virtual {v4, v3, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_0

    .line 748
    .end local v1           #i:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #properties:Ljava/util/Properties;
    .end local v9           #value:Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v5, v6

    .line 749
    .end local v2           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :goto_3
    :try_start_7
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 753
    if-eqz v5, :cond_1

    .line 755
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 756
    :catch_3
    move-exception v0

    .line 757
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 750
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 751
    .local v0, e:Ljava/lang/Exception;
    :goto_4
    :try_start_9
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 753
    if-eqz v5, :cond_1

    .line 755
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    .line 756
    :catch_5
    move-exception v0

    .line 757
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 752
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 753
    :goto_5
    if-eqz v5, :cond_4

    .line 755
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 760
    :cond_4
    :goto_6
    throw v10

    .line 756
    :catch_6
    move-exception v0

    .line 757
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 756
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v4       #properties:Ljava/util/Properties;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    .line 757
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V

    .end local v0           #e:Ljava/io/IOException;
    :cond_5
    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 752
    .end local v4           #properties:Ljava/util/Properties;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 750
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 748
    .end local v2           #line:Ljava/lang/String;
    :catch_9
    move-exception v0

    goto :goto_3

    .line 746
    :catch_a
    move-exception v0

    goto :goto_2
.end method

.method public static InputStream2Bytes(Ljava/io/InputStream;)[B
    .locals 6
    .parameter "instream"

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, bytes:[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 372
    .local v3, output:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v4, v5, [B

    .line 373
    .local v4, tmp:[B
    const/4 v2, 0x0

    .line 374
    .local v2, length:I
    :goto_0
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 377
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 382
    if-eqz p0, :cond_0

    .line 383
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 384
    :cond_0
    if-eqz v3, :cond_1

    .line 385
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 390
    .end local v2           #length:I
    .end local v4           #tmp:[B
    :cond_1
    :goto_1
    return-object v0

    .line 375
    .restart local v2       #length:I
    .restart local v4       #tmp:[B
    :cond_2
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v3, v4, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 378
    .end local v2           #length:I
    .end local v4           #tmp:[B
    :catch_0
    move-exception v1

    .line 379
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 382
    if-eqz p0, :cond_3

    .line 383
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 384
    :cond_3
    if-eqz v3, :cond_1

    .line 385
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 386
    :catch_1
    move-exception v1

    .line 387
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 380
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 382
    if-eqz p0, :cond_4

    .line 383
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 384
    :cond_4
    if-eqz v3, :cond_5

    .line 385
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 389
    :cond_5
    :goto_2
    throw v5

    .line 386
    :catch_2
    move-exception v1

    .line 387
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 386
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #length:I
    .restart local v4       #tmp:[B
    :catch_3
    move-exception v1

    .line 387
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static convertStreamToString(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 8
    .parameter "reader"

    .prologue
    .line 857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 858
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 860
    .local v1, line:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 867
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 861
    :cond_0
    :try_start_1
    sget-object v3, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u5904\u7406\u8fd4\u56de\u6570\u636e"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "/n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static copyAssetsFile(Landroid/content/Context;)V
    .locals 17
    .parameter "mContext"

    .prologue
    .line 610
    :try_start_0
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->checkSDCard()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 611
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 612
    .local v10, listArray:[Ljava/lang/String;
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 613
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, ""

    .line 614
    .local v4, filePath:Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 648
    .end local v4           #filePath:Ljava/lang/String;
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #listArray:[Ljava/lang/String;
    :goto_1
    return-void

    .line 614
    .restart local v4       #filePath:Ljava/lang/String;
    .restart local v9       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #listArray:[Ljava/lang/String;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 615
    .local v3, fileName:Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getFilPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 617
    const-string/jumbo v12, "."

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 618
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getAssetsStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 619
    .local v5, instream:Ljava/io/InputStream;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 620
    if-eqz v5, :cond_0

    .line 621
    invoke-static {v5, v4}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->saveFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 645
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #instream:Ljava/io/InputStream;
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #listArray:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 646
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 624
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v4       #filePath:Ljava/lang/String;
    .restart local v5       #instream:Ljava/io/InputStream;
    .restart local v9       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #listArray:[Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 626
    .local v2, file:Ljava/io/File;
    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 628
    .local v6, instreamfile:Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v7

    .line 629
    .local v7, instreamfilelen:I
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 630
    .local v8, instreamlen:I
    if-eq v7, v8, :cond_3

    .line 631
    invoke-static {v5, v4}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->saveFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 635
    :goto_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 636
    .end local v6           #instreamfile:Ljava/io/InputStream;
    .end local v7           #instreamfilelen:I
    .end local v8           #instreamlen:I
    :catch_1
    move-exception v1

    .line 637
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 633
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #instreamfile:Ljava/io/InputStream;
    .restart local v7       #instreamfilelen:I
    .restart local v8       #instreamlen:I
    :cond_3
    :try_start_4
    sget-object v12, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, " file is equal. "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 643
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #instream:Ljava/io/InputStream;
    .end local v6           #instreamfile:Ljava/io/InputStream;
    .end local v7           #instreamfilelen:I
    .end local v8           #instreamlen:I
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #listArray:[Ljava/lang/String;
    :cond_4
    :try_start_5
    sget-object v11, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "SD Card is Unavailable."

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public static copyAssetsFileToLocal(Landroid/content/Context;)V
    .locals 17
    .parameter "mContext"

    .prologue
    .line 659
    :try_start_0
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->checkSDCard()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 661
    .local v10, listArray:[Ljava/lang/String;
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 662
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, ""

    .line 663
    .local v4, filePath:Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 697
    .end local v4           #filePath:Ljava/lang/String;
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #listArray:[Ljava/lang/String;
    :goto_1
    return-void

    .line 663
    .restart local v4       #filePath:Ljava/lang/String;
    .restart local v9       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #listArray:[Ljava/lang/String;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 664
    .local v3, fileName:Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getFilPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 666
    const-string/jumbo v12, "."

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 667
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getAssetsStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 668
    .local v5, instream:Ljava/io/InputStream;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 669
    if-eqz v5, :cond_0

    .line 670
    invoke-static {v5, v4}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->saveFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 694
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #instream:Ljava/io/InputStream;
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #listArray:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 695
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 673
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v4       #filePath:Ljava/lang/String;
    .restart local v5       #instream:Ljava/io/InputStream;
    .restart local v9       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #listArray:[Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 675
    .local v2, file:Ljava/io/File;
    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 677
    .local v6, instreamfile:Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v7

    .line 678
    .local v7, instreamfilelen:I
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 679
    .local v8, instreamlen:I
    if-eq v7, v8, :cond_3

    .line 680
    invoke-static {v5, v4}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->saveFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 684
    :goto_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 685
    .end local v6           #instreamfile:Ljava/io/InputStream;
    .end local v7           #instreamfilelen:I
    .end local v8           #instreamlen:I
    :catch_1
    move-exception v1

    .line 686
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 682
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #instreamfile:Ljava/io/InputStream;
    .restart local v7       #instreamfilelen:I
    .restart local v8       #instreamlen:I
    :cond_3
    :try_start_4
    sget-object v12, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, " file is equal. "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 692
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #instream:Ljava/io/InputStream;
    .end local v6           #instreamfile:Ljava/io/InputStream;
    .end local v7           #instreamfilelen:I
    .end local v8           #instreamlen:I
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #listArray:[Ljava/lang/String;
    :cond_4
    :try_start_5
    sget-object v11, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "SD Card is Unavailable."

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 892
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 907
    :goto_0
    return-void

    .line 897
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 898
    .local v0, childFiles:[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_2

    .line 899
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 903
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_3

    .line 906
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 904
    :cond_3
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 903
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static deleteDirectory(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 910
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 911
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 912
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 569
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    const/4 v2, 0x1

    .line 577
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v2

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAssetsStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 344
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 348
    :goto_0
    return-object v1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getContent2(Ljava/lang/String;)[B
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    .line 974
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 975
    .local v1, in:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 976
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    new-array v4, v5, [B

    .line 977
    .local v4, temp:[B
    const/4 v3, 0x0

    .line 979
    .local v3, size:I
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 983
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 985
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 986
    .local v0, bytes:[B
    return-object v0

    .line 980
    .end local v0           #bytes:[B
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static varargs getFilPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "fileName"
    .parameter "filePath"

    .prologue
    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .local v1, filebuilder:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 590
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_2

    .line 593
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 595
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 597
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .end local v0           #file:Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 590
    :cond_2
    aget-object v2, p1, v3

    .line 591
    .local v2, path:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getLocalSerialList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "sdPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 709
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 711
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 712
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, listFile:[Ljava/lang/String;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 720
    .end local v3           #listFile:[Ljava/lang/String;
    :cond_0
    return-object v2

    .line 713
    .restart local v3       #listFile:[Ljava/lang/String;
    :cond_1
    aget-object v1, v3, v4

    .line 715
    .local v1, fileName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 716
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getRawStream(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 328
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 332
    :goto_0
    return-object v1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSDFreeSize()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x400

    .line 1000
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getSDCardPath()Ljava/lang/String;

    move-result-object v4

    .line 1001
    .local v4, path:Ljava/lang/String;
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v5, sf:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 1007
    .local v0, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v2, v6

    .line 1011
    .local v2, freeBlocks:J
    mul-long v6, v2, v0

    div-long/2addr v6, v8

    div-long/2addr v6, v8

    return-wide v6
.end method

.method public static getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter "section"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, sections:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 766
    sget-object v3, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getValue enter, section="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    const/4 v2, 0x0

    .line 768
    .local v2, value:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 769
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 771
    .local v0, properties:Ljava/util/Properties;
    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 775
    .end local v0           #properties:Ljava/util/Properties;
    :cond_0
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/StringUtils;->decodeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, result:Ljava/lang/String;
    sget-object v3, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getValue exit, result="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    return-object v1
.end method

.method public static inputSteamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "instream"

    .prologue
    .line 402
    const/4 v2, 0x0

    .line 404
    .local v2, result:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->InputStream2Bytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 405
    .local v0, bytes:[B
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    move-object v2, v3

    .line 409
    .end local v0           #bytes:[B
    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isFileExits(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x1

    .line 76
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "data"

    .prologue
    .line 937
    const/4 v1, 0x0

    .line 939
    .local v1, o:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Lorg/json/JSONObject;
    .local v2, o:Lorg/json/JSONObject;
    move-object v1, v2

    .line 943
    .end local v2           #o:Lorg/json/JSONObject;
    .restart local v1       #o:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;Lcom/cnlaunch/x431pro/module/setting/model/FormFile;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter
    .parameter "file"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cnlaunch/x431pro/module/setting/model/FormFile;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 882
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/cnlaunch/x431pro/module/setting/model/FormFile;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->post(Ljava/lang/String;Ljava/util/Map;[Lcom/cnlaunch/x431pro/module/setting/model/FormFile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;[Lcom/cnlaunch/x431pro/module/setting/model/FormFile;)Ljava/lang/String;
    .locals 22
    .parameter "path"
    .parameter
    .parameter "files"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/cnlaunch/x431pro/module/setting/model/FormFile;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 783
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "---------------------------7da2137580612"

    .line 784
    .local v3, BOUNDARY:Ljava/lang/String;
    const-string/jumbo v7, "-----------------------------7da2137580612--\r\n"

    .line 786
    .local v7, endline:Ljava/lang/String;
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 789
    .local v16, url:Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 791
    .local v5, conn:Ljava/net/HttpURLConnection;
    const/16 v17, 0x7530

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 792
    const-string/jumbo v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 793
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 794
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 795
    const-string/jumbo v17, "connection"

    const-string/jumbo v18, "Keep-Alive"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string/jumbo v17, "Charsert"

    const-string/jumbo v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string/jumbo v17, "Content-type"

    const-string/jumbo v18, "multipart/form-data;boundary=---------------------------7da2137580612\r\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 800
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 802
    .local v11, outStream:Ljava/io/OutputStream;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    .local v14, textEntity:Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_0

    .line 811
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    .line 813
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 834
    const-string/jumbo v17, "-----------------------------7da2137580612--\r\n"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    .line 835
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 836
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 838
    sget-object v17, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "\u5f00\u59cb\u63a5\u6536\u8fd4\u56de\u6570\u636e"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 840
    .local v12, reader:Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 841
    .local v13, res:Ljava/lang/String;
    sget-object v17, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "\u6570\u636e\u5df2\u7ecf\u8fd4\u56de"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    invoke-static {v12}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->convertStreamToString(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v13

    .line 843
    sget-object v17, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "\u622a\u53d6\u524d\u8fd4\u56de\u7684\u6570\u636e\u662f"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    const-string/jumbo v17, "hxm"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "\u63a5\u6536\u8fd4\u56de\u7684\u7684\u6570\u636e\u662f"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 846
    return-object v13

    .line 803
    .end local v12           #reader:Ljava/io/BufferedReader;
    .end local v13           #res:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 804
    .local v8, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v17, "--"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    const-string/jumbo v17, "---------------------------7da2137580612"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const-string/jumbo v17, "\r\n"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, "\"\r\n\r\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    const-string/jumbo v17, "\r\n"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 847
    .end local v8           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #outStream:Ljava/io/OutputStream;
    .end local v14           #textEntity:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    .line 848
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v17, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "\u4f20\u6587\u4ef6\u8fd4\u56de\u7ed3\u679c\u89e3\u6790\u5f02\u5e38"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    new-instance v17, Lorg/apache/http/HttpException;

    const-string/jumbo v18, "parse the return data exception"

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 850
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 851
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 852
    throw v17

    .line 813
    .restart local v11       #outStream:Ljava/io/OutputStream;
    .restart local v14       #textEntity:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    aget-object v15, p2, v17

    .line 814
    .local v15, uploadFile:Lcom/cnlaunch/x431pro/module/setting/model/FormFile;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    .local v9, fileEntity:Ljava/lang/StringBuilder;
    const-string/jumbo v19, "--"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    const-string/jumbo v19, "---------------------------7da2137580612"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    const-string/jumbo v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "Content-Disposition: form-data;name=\""

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->getParameterName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\";filename=\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->getFilname()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\"\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "Content-Type: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->getContentType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\r\n\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    .line 821
    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 822
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v4, v0, [B

    .line 823
    .local v4, buffer:[B
    const/4 v10, 0x0

    .line 824
    .local v10, len:I
    :goto_2
    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x400

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_2

    .line 827
    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 831
    .end local v4           #buffer:[B
    .end local v10           #len:I
    :goto_3
    const-string/jumbo v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    .line 813
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 825
    .restart local v4       #buffer:[B
    .restart local v10       #len:I
    :cond_2
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v4, v0, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 829
    .end local v4           #buffer:[B
    .end local v10           #len:I
    :cond_3
    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->getData()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->getData()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filePath"

    .prologue
    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v4, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 234
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 235
    .local v3, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 238
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 239
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 236
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v3       #line:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 240
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 243
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filePath"
    .parameter "charset"

    .prologue
    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v4, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 259
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 260
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 261
    .local v3, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 264
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 265
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 262
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v3       #line:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 266
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 267
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 268
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 269
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filePath"
    .parameter "charset"

    .prologue
    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v5, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 286
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 287
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 288
    .local v4, line:Ljava/lang/String;
    const-string/jumbo v2, "\n"

    .line 289
    .local v2, firstLine:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 294
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 300
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #firstLine:Ljava/lang/String;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 290
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #firstLine:Ljava/lang/String;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #line:Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string/jumbo v2, ""
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 295
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #firstLine:Ljava/lang/String;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 296
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 297
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 298
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static readFileSdcard(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "fileName"

    .prologue
    .line 305
    const-string/jumbo v4, ""

    .line 307
    .local v4, res:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 308
    .local v2, fin:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 309
    .local v3, length:I
    new-array v0, v3, [B

    .line 310
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 311
    const-string/jumbo v5, "UTF-8"

    invoke-static {v0, v5}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 312
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0           #buffer:[B
    .end local v2           #fin:Ljava/io/FileInputStream;
    .end local v3           #length:I
    :goto_0
    return-object v4

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static savaToByte(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .parameter "obj"
    .parameter "filePath"

    .prologue
    .line 947
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 948
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 949
    .local v2, out:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 951
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :cond_0
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 958
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string/jumbo v6, "cnlaunch"

    invoke-static {v5, v6}, Lcom/cnlaunch/x431pro/utils/DESUtils;->desCrypto([BLjava/lang/String;)[B

    move-result-object v4

    .line 959
    .local v4, result:[B
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 963
    if-eqz v3, :cond_3

    .line 965
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v2, v3

    .line 971
    .end local v3           #out:Ljava/io/FileOutputStream;
    .end local v4           #result:[B
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 960
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 961
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 963
    if-eqz v2, :cond_1

    .line 965
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 966
    :catch_2
    move-exception v0

    .line 967
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 962
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 963
    :goto_3
    if-eqz v2, :cond_2

    .line 965
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 970
    :cond_2
    :goto_4
    throw v5

    .line 966
    :catch_3
    move-exception v0

    .line 967
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 966
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    .restart local v4       #result:[B
    :catch_4
    move-exception v0

    .line 967
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 962
    .end local v2           #out:Ljava/io/FileOutputStream;
    .end local v4           #result:[B
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 960
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static savaToJson(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .parameter "o"
    .parameter "filePath"

    .prologue
    .line 915
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 916
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 918
    .local v2, out:Ljava/io/PrintStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 920
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 925
    :cond_0
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/PrintStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 926
    .end local v2           #out:Ljava/io/PrintStream;
    .local v3, out:Ljava/io/PrintStream;
    :try_start_3
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 930
    if-eqz v3, :cond_1

    .line 931
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    :cond_1
    move-object v2, v3

    .line 934
    .end local v3           #out:Ljava/io/PrintStream;
    .restart local v2       #out:Ljava/io/PrintStream;
    :cond_2
    :goto_1
    return-void

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 927
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 928
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 930
    if-eqz v2, :cond_2

    .line 931
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    goto :goto_1

    .line 929
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    .line 930
    :goto_3
    if-eqz v2, :cond_3

    .line 931
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    .line 933
    :cond_3
    throw v4

    .line 929
    .end local v2           #out:Ljava/io/PrintStream;
    .restart local v3       #out:Ljava/io/PrintStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/PrintStream;
    .restart local v2       #out:Ljava/io/PrintStream;
    goto :goto_3

    .line 927
    .end local v2           #out:Ljava/io/PrintStream;
    .restart local v3       #out:Ljava/io/PrintStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/PrintStream;
    .restart local v2       #out:Ljava/io/PrintStream;
    goto :goto_2
.end method

.method public static saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 13
    .parameter "bitmap"
    .parameter "filePath"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 90
    if-nez p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v6

    .line 92
    :cond_1
    const/4 v3, 0x0

    .line 95
    .local v3, output:Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 97
    sget-object v8, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, " file already exists."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .end local v3           #output:Ljava/io/OutputStream;
    .local v4, output:Ljava/io/OutputStream;
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 104
    .local v2, format:Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, tempFileName:Ljava/lang/String;
    const-string/jumbo v8, ".jpg"

    invoke-virtual {v8, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 106
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 111
    :cond_2
    :goto_1
    const/16 v8, 0x64

    invoke-virtual {p0, v2, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 112
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 120
    if-eqz v4, :cond_3

    .line 121
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_2
    move v6, v7

    .line 113
    goto :goto_0

    .line 107
    :cond_4
    :try_start_3
    const-string/jumbo v8, ".png"

    invoke-virtual {v8, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 108
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 116
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #format:Landroid/graphics/Bitmap$CompressFormat;
    .end local v4           #output:Ljava/io/OutputStream;
    .end local v5           #tempFileName:Ljava/lang/String;
    .restart local v3       #output:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 117
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    if-eqz v3, :cond_0

    .line 121
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 122
    :catch_2
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 120
    :goto_4
    if-eqz v3, :cond_5

    .line 121
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 125
    :cond_5
    :goto_5
    throw v6

    .line 122
    :catch_3
    move-exception v0

    .line 123
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 120
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    :cond_6
    if-eqz v3, :cond_0

    .line 121
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 122
    :catch_4
    move-exception v0

    .line 123
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 118
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #output:Ljava/io/OutputStream;
    .restart local v4       #output:Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #output:Ljava/io/OutputStream;
    .restart local v3       #output:Ljava/io/OutputStream;
    goto :goto_4

    .line 116
    .end local v3           #output:Ljava/io/OutputStream;
    .restart local v4       #output:Ljava/io/OutputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4           #output:Ljava/io/OutputStream;
    .restart local v3       #output:Ljava/io/OutputStream;
    goto :goto_3
.end method

.method public static saveFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 12
    .parameter "instream"
    .parameter "filePath"

    .prologue
    const/4 v11, 0x0

    .line 190
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v3, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 194
    .local v0, buffer:Ljava/io/FileOutputStream;
    if-eqz p0, :cond_0

    .line 195
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 196
    .end local v0           #buffer:Ljava/io/FileOutputStream;
    .local v1, buffer:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v5, v6, [B

    .line 197
    .local v5, tmp:[B
    const/4 v4, 0x0

    .line 198
    .local v4, length:I
    :goto_0
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    .line 201
    sget-object v6, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "saveFile file success. "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v0, v1

    .line 209
    .end local v1           #buffer:Ljava/io/FileOutputStream;
    .end local v4           #length:I
    .end local v5           #tmp:[B
    .restart local v0       #buffer:Ljava/io/FileOutputStream;
    :cond_0
    if-eqz p0, :cond_1

    .line 210
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 211
    :cond_1
    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 213
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 219
    :cond_2
    :goto_1
    return v11

    .line 199
    .end local v0           #buffer:Ljava/io/FileOutputStream;
    .restart local v1       #buffer:Ljava/io/FileOutputStream;
    .restart local v4       #length:I
    .restart local v5       #tmp:[B
    :cond_3
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v1, v5, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 203
    .end local v4           #length:I
    .end local v5           #tmp:[B
    :catch_0
    move-exception v6

    move-object v0, v1

    .line 209
    .end local v1           #buffer:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz p0, :cond_4

    .line 210
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 211
    :cond_4
    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 213
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 215
    :catch_1
    move-exception v2

    .line 216
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 205
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 209
    :goto_3
    if-eqz p0, :cond_5

    .line 210
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 211
    :cond_5
    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 213
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 215
    :catch_3
    move-exception v2

    .line 216
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 207
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 209
    :goto_4
    if-eqz p0, :cond_6

    .line 210
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 211
    :cond_6
    if-eqz v0, :cond_7

    .line 212
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 213
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 218
    :cond_7
    :goto_5
    throw v6

    .line 215
    :catch_4
    move-exception v2

    .line 216
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 215
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 216
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 207
    .end local v0           #buffer:Ljava/io/FileOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buffer:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #buffer:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 205
    .end local v0           #buffer:Ljava/io/FileOutputStream;
    .restart local v1       #buffer:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v6

    move-object v0, v1

    .end local v1           #buffer:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 203
    :catch_7
    move-exception v6

    goto :goto_2
.end method

.method public static saveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "content"
    .parameter "filePath"

    .prologue
    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->saveFile([BLjava/lang/String;)Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveFile([BLjava/lang/String;)Z
    .locals 5
    .parameter "bytes"
    .parameter "filePath"

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 157
    .local v2, output:Ljava/io/FileOutputStream;
    if-eqz p0, :cond_3

    .line 158
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 160
    .end local v2           #output:Ljava/io/FileOutputStream;
    .local v3, output:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 161
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 170
    if-eqz v3, :cond_0

    .line 171
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    :cond_0
    :goto_0
    const/4 v4, 0x1

    move-object v2, v3

    .line 176
    .end local v1           #file:Ljava/io/File;
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    :goto_1
    return v4

    .line 172
    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 165
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    if-eqz v2, :cond_1

    .line 171
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 176
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 172
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 166
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 167
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 170
    if-eqz v2, :cond_1

    .line 171
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 172
    :catch_4
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 168
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 170
    :goto_5
    if-eqz v2, :cond_2

    .line 171
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 175
    :cond_2
    :goto_6
    throw v4

    .line 172
    :catch_5
    move-exception v0

    .line 173
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 170
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    if-eqz v2, :cond_1

    .line 171
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    .line 172
    :catch_6
    move-exception v0

    .line 173
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 168
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 166
    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 164
    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static declared-synchronized unZip(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 18
    .parameter "srcFile"
    .parameter "dest"
    .parameter "deleteFile"

    .prologue
    .line 421
    const-class v16, Lcom/cnlaunch/x431pro/utils/file/FileUtils;

    monitor-enter v16

    :try_start_0
    const-string/jumbo v10, "success"

    .line 423
    .local v10, message:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 425
    const-string/jumbo v10, "File does not exist"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v10

    .line 470
    .end local v10           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    :goto_0
    monitor-exit v16

    return-object v11

    .line 430
    .end local v11           #message:Ljava/lang/String;
    .restart local v10       #message:Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v14, Ljava/util/zip/ZipFile;

    invoke-direct {v14, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 431
    .local v14, zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 432
    .local v3, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-nez v15, :cond_3

    .line 455
    if-eqz v14, :cond_1

    .line 456
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V

    .line 459
    :cond_1
    if-eqz p2, :cond_2

    .line 460
    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V

    .end local v3           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v14           #zipFile:Ljava/util/zip/ZipFile;
    :cond_2
    :goto_2
    move-object v11, v10

    .line 470
    .end local v10           #message:Ljava/lang/String;
    .restart local v11       #message:Ljava/lang/String;
    goto :goto_0

    .line 433
    .end local v11           #message:Ljava/lang/String;
    .restart local v3       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v10       #message:Ljava/lang/String;
    .restart local v14       #zipFile:Ljava/util/zip/ZipFile;
    :cond_3
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/zip/ZipEntry;

    .line 434
    .local v13, zipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 435
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    .line 436
    .local v12, name:Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v12, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 437
    new-instance v5, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .local v5, f:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 462
    .end local v3           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v5           #f:Ljava/io/File;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v14           #zipFile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v4

    .line 463
    .local v4, e1:Ljava/util/zip/ZipException;
    :try_start_2
    const-string/jumbo v10, "fail"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 440
    .end local v4           #e1:Ljava/util/zip/ZipException;
    .restart local v3       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v13       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v14       #zipFile:Ljava/util/zip/ZipFile;
    :cond_4
    :try_start_3
    new-instance v5, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .restart local v5       #f:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 442
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 443
    invoke-virtual {v14, v13}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 444
    .local v8, is:Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 445
    .local v7, fos:Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 446
    .local v9, length:I
    const/16 v15, 0x400

    new-array v1, v15, [B

    .line 447
    .local v1, b:[B
    :goto_3
    const/4 v15, 0x0

    const/16 v17, 0x400

    move/from16 v0, v17

    invoke-virtual {v8, v1, v15, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    const/4 v15, -0x1

    if-ne v9, v15, :cond_5

    .line 450
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 451
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 464
    .end local v1           #b:[B
    .end local v3           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v5           #f:Ljava/io/File;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #length:I
    .end local v13           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v14           #zipFile:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v4

    .line 465
    .local v4, e1:Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v10, "fail"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 448
    .end local v4           #e1:Ljava/io/IOException;
    .restart local v1       #b:[B
    .restart local v3       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v5       #f:Ljava/io/File;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #length:I
    .restart local v13       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v14       #zipFile:Ljava/util/zip/ZipFile;
    :cond_5
    const/4 v15, 0x0

    :try_start_5
    invoke-virtual {v7, v1, v15, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 466
    .end local v1           #b:[B
    .end local v3           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v5           #f:Ljava/io/File;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #length:I
    .end local v13           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v14           #zipFile:Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v2

    .line 467
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    const-string/jumbo v10, "fail"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 421
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #file:Ljava/io/File;
    .end local v10           #message:Ljava/lang/String;
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method public static declared-synchronized unZipEx(Ljava/lang/String;Ljava/lang/String;ZLcom/cnlaunch/x431pro/utils/file/UnZipListener;)Ljava/lang/String;
    .locals 24
    .parameter "srcFile"
    .parameter "dest"
    .parameter "deleteFile"
    .parameter "unZipCallBack"

    .prologue
    .line 482
    const-class v19, Lcom/cnlaunch/x431pro/utils/file/FileUtils;

    monitor-enter v19

    :try_start_0
    const-string/jumbo v11, "success"

    .line 484
    .local v11, message:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 485
    invoke-interface/range {p3 .. p3}, Lcom/cnlaunch/x431pro/utils/file/UnZipListener;->start()V

    .line 487
    :cond_0
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_2

    .line 489
    const-string/jumbo v11, "File does not exist"

    .line 490
    if-eqz p3, :cond_1

    .line 491
    const/16 v18, -0x1

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/cnlaunch/x431pro/utils/file/UnZipListener;->error(ILjava/lang/Throwable;)V

    .line 492
    invoke-interface/range {p3 .. p3}, Lcom/cnlaunch/x431pro/utils/file/UnZipListener;->finished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v12, v11

    .line 558
    .end local v11           #message:Ljava/lang/String;
    .local v12, message:Ljava/lang/String;
    :goto_0
    monitor-exit v19

    return-object v12

    .line 498
    .end local v12           #message:Ljava/lang/String;
    .restart local v11       #message:Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v17, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 499
    .local v17, zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 500
    .local v5, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    const/4 v14, 0x0

    .line 501
    .local v14, step:I
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->size()I

    move-result v15

    .line 502
    .local v15, total:I
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-nez v18, :cond_7

    .line 528
    if-eqz v17, :cond_4

    .line 529
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V

    .line 532
    :cond_4
    if-eqz p2, :cond_5

    .line 533
    invoke-virtual {v7}, Ljava/io/File;->deleteOnExit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 555
    .end local v5           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v14           #step:I
    .end local v15           #total:I
    .end local v17           #zipFile:Ljava/util/zip/ZipFile;
    :cond_5
    :goto_2
    if-eqz p3, :cond_6

    .line 556
    :try_start_2
    invoke-interface/range {p3 .. p3}, Lcom/cnlaunch/x431pro/utils/file/UnZipListener;->finished()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    move-object v12, v11

    .line 558
    .end local v11           #message:Ljava/lang/String;
    .restart local v12       #message:Ljava/lang/String;
    goto :goto_0

    .line 503
    .end local v12           #message:Ljava/lang/String;
    .restart local v5       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v11       #message:Ljava/lang/String;
    .restart local v14       #step:I
    .restart local v15       #total:I
    .restart local v17       #zipFile:Ljava/util/zip/ZipFile;
    :cond_7
    :try_start_3
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/zip/ZipEntry;

    .line 504
    .local v16, zipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 505
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 506
    .local v13, name:Ljava/lang/String;
    const/16 v18, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 507
    new-instance v6, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v6, f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 523
    .end local v13           #name:Ljava/lang/String;
    :goto_3
    if-eqz p3, :cond_3

    .line 524
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v14, v15}, Lcom/cnlaunch/x431pro/utils/file/UnZipListener;->progress(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 535
    .end local v5           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6           #f:Ljava/io/File;
    .end local v14           #step:I
    .end local v15           #total:I
    .end local v16           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v17           #zipFile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v4

    .line 536
    .local v4, e:Ljava/util/zip/ZipException;
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipException;->printStackTrace()V

    .line 537
    invoke-virtual {v4}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 538
    if-eqz p3, :cond_5

    .line 539
    const/16 v18, -0x2

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1, v4}, Lcom/cnlaunch/x431pro/utils/file/UnZipListener;->error(ILjava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 482
    .end local v4           #e:Ljava/util/zip/ZipException;
    .end local v7           #file:Ljava/io/File;
    .end local v11           #message:Ljava/lang/String;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 510
    .restart local v5       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v7       #file:Ljava/io/File;
    .restart local v11       #message:Ljava/lang/String;
    .restart local v14       #step:I
    .restart local v15       #total:I
    .restart local v16       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v17       #zipFile:Ljava/util/zip/ZipFile;
    :cond_8
    :try_start_5
    new-instance v6, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    .restart local v6       #f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 512
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 513
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 514
    .local v9, is:Ljava/io/InputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 515
    .local v8, fos:Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 516
    .local v10, length:I
    const/16 v18, 0x400

    move/from16 v0, v18

    new-array v3, v0, [B

    .line 517
    .local v3, b:[B
    :goto_4
    const/16 v18, 0x0

    const/16 v20, 0x400

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v9, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_9

    .line 520
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 521
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 541
    .end local v3           #b:[B
    .end local v5           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6           #f:Ljava/io/File;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v10           #length:I
    .end local v14           #step:I
    .end local v15           #total:I
    .end local v16           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v17           #zipFile:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v4

    .line 542
    .local v4, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 543
    sget-object v18, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->tag:Ljava/lang/String;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "unZipEx Error: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 545
    if-eqz p3, :cond_5

    .line 546
    const/16 v18, -0x3

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1, v4}, Lcom/cnlaunch/x431pro/utils/file/UnZipListener;->error(ILjava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 518
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #b:[B
    .restart local v5       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v6       #f:Ljava/io/File;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #length:I
    .restart local v14       #step:I
    .restart local v15       #total:I
    .restart local v16       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v17       #zipFile:Ljava/util/zip/ZipFile;
    :cond_9
    const/16 v18, 0x0

    :try_start_7
    move/from16 v0, v18

    invoke-virtual {v8, v3, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 548
    .end local v3           #b:[B
    .end local v5           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6           #f:Ljava/io/File;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v10           #length:I
    .end local v14           #step:I
    .end local v15           #total:I
    .end local v16           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v17           #zipFile:Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v4

    .line 549
    .local v4, e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 551
    if-eqz p3, :cond_5

    .line 552
    const/16 v18, -0x4

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1, v4}, Lcom/cnlaunch/x431pro/utils/file/UnZipListener;->error(ILjava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2
.end method
