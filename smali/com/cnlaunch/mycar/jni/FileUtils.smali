.class public Lcom/cnlaunch/mycar/jni/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# instance fields
.field private SDPATH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/mycar/jni/FileUtils;->SDPATH:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static DeleFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "strFilePath"

    .prologue
    .line 624
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public static GetFileSize(Ljava/lang/String;)J
    .locals 3
    .parameter "strFilePath"

    .prologue
    .line 632
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1
.end method

.method public static appendMethodA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"
    .parameter "content"

    .prologue
    .line 386
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .local v3, randomFile:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    .line 390
    .local v1, fileLength:J
    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 391
    invoke-virtual {v3, p1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v1           #fileLength:J
    .end local v3           #randomFile:Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static appendMethodB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"
    .parameter "content"

    .prologue
    .line 407
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 408
    .local v1, writer:Ljava/io/FileWriter;
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v1           #writer:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final byteArrayToInt([B)I
    .locals 2
    .parameter "b"

    .prologue
    .line 462
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 463
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 462
    add-int/2addr v0, v1

    return v0
.end method

.method public static final byteArrayToShort([B)I
    .locals 2
    .parameter "b"

    .prologue
    .line 437
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static intToByteArray(I)[B
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x4

    .line 447
    new-array v0, v4, [B

    .line 448
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 452
    return-object v0

    .line 449
    :cond_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    mul-int/lit8 v2, v3, 0x8

    .line 450
    .local v2, offset:I
    ushr-int v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "filaPath"

    .prologue
    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 168
    return-void
.end method

.method public static readFileByBytes(Ljava/lang/String;)V
    .locals 11
    .parameter "fileName"

    .prologue
    const/4 v10, -0x1

    .line 185
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v3, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 189
    .local v4, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 191
    .end local v4           #in:Ljava/io/InputStream;
    .local v5, in:Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v6

    .local v6, tempbyte:I
    if-ne v6, v10, :cond_1

    .line 194
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    const/16 v8, 0x64

    :try_start_2
    new-array v7, v8, [B

    .line 203
    .local v7, tempbytes:[B
    const/4 v0, 0x0

    .line 204
    .local v0, byteread:I
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 207
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-ne v0, v10, :cond_2

    .line 213
    if-eqz v4, :cond_0

    .line 215
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 220
    .end local v0           #byteread:I
    .end local v6           #tempbyte:I
    .end local v7           #tempbytes:[B
    :cond_0
    :goto_2
    return-void

    .line 192
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v6       #tempbyte:I
    :cond_1
    :try_start_5
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 195
    .end local v6           #tempbyte:I
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 196
    .end local v5           #in:Ljava/io/InputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v4       #in:Ljava/io/InputStream;
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 208
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #byteread:I
    .restart local v6       #tempbyte:I
    .restart local v7       #tempbytes:[B
    :cond_2
    :try_start_6
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9, v0}, Ljava/io/PrintStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 210
    :catch_1
    move-exception v2

    .line 211
    .end local v0           #byteread:I
    .end local v7           #tempbytes:[B
    .local v2, e1:Ljava/lang/Exception;
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 213
    if-eqz v4, :cond_0

    .line 215
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 216
    :catch_2
    move-exception v8

    goto :goto_2

    .line 212
    .end local v2           #e1:Ljava/lang/Exception;
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v8

    move-object v4, v5

    .line 213
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :goto_5
    if-eqz v4, :cond_3

    .line 215
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 219
    :cond_3
    :goto_6
    throw v8

    .line 216
    :catch_3
    move-exception v9

    goto :goto_6

    .restart local v0       #byteread:I
    .restart local v7       #tempbytes:[B
    :catch_4
    move-exception v8

    goto :goto_2

    .line 212
    .end local v0           #byteread:I
    .end local v7           #tempbytes:[B
    :catchall_1
    move-exception v8

    goto :goto_5

    .line 210
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_4

    .line 195
    .end local v6           #tempbyte:I
    :catch_6
    move-exception v1

    goto :goto_3
.end method

.method public static readFileByChars(Ljava/lang/String;)V
    .locals 13
    .parameter "fileName"

    .prologue
    const/4 v12, -0x1

    const/16 v11, 0x72

    .line 229
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 233
    .local v5, reader:Ljava/io/Reader;
    :try_start_0
    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 235
    .end local v5           #reader:Ljava/io/Reader;
    .local v6, reader:Ljava/io/Reader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/Reader;->read()I

    move-result v7

    .local v7, tempchar:I
    if-ne v7, v12, :cond_3

    .line 243
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    .end local v7           #tempchar:I
    :goto_1
    const/16 v9, 0x1e

    :try_start_2
    new-array v8, v9, [C

    .line 250
    .local v8, tempchars:[C
    const/4 v0, 0x0

    .line 251
    .local v0, charread:I
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 253
    .end local v6           #reader:Ljava/io/Reader;
    .restart local v5       #reader:Ljava/io/Reader;
    :cond_1
    :goto_2
    :try_start_3
    invoke-virtual {v5, v8}, Ljava/io/Reader;->read([C)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-ne v0, v12, :cond_4

    .line 271
    if-eqz v5, :cond_2

    .line 273
    :try_start_4
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 278
    .end local v0           #charread:I
    .end local v8           #tempchars:[C
    :cond_2
    :goto_3
    return-void

    .line 239
    .end local v5           #reader:Ljava/io/Reader;
    .restart local v6       #reader:Ljava/io/Reader;
    .restart local v7       #tempchar:I
    :cond_3
    int-to-char v9, v7

    if-eq v9, v11, :cond_0

    .line 240
    :try_start_5
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    int-to-char v10, v7

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(C)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 244
    .end local v7           #tempchar:I
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 245
    .end local v6           #reader:Ljava/io/Reader;
    .local v1, e:Ljava/lang/Exception;
    .restart local v5       #reader:Ljava/io/Reader;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v5

    .end local v5           #reader:Ljava/io/Reader;
    .restart local v6       #reader:Ljava/io/Reader;
    goto :goto_1

    .line 255
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #reader:Ljava/io/Reader;
    .restart local v0       #charread:I
    .restart local v5       #reader:Ljava/io/Reader;
    .restart local v8       #tempchars:[C
    :cond_4
    :try_start_6
    array-length v9, v8

    if-ne v0, v9, :cond_5

    .line 256
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aget-char v9, v8, v9

    if-eq v9, v11, :cond_5

    .line 257
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->print([C)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 268
    :catch_1
    move-exception v2

    .line 269
    .end local v0           #charread:I
    .end local v8           #tempchars:[C
    .local v2, e1:Ljava/lang/Exception;
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 271
    if-eqz v5, :cond_2

    .line 273
    :try_start_8
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 274
    :catch_2
    move-exception v9

    goto :goto_3

    .line 259
    .end local v2           #e1:Ljava/lang/Exception;
    .restart local v0       #charread:I
    .restart local v8       #tempchars:[C
    :cond_5
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v0, :cond_1

    .line 260
    :try_start_9
    aget-char v9, v8, v4

    if-ne v9, v11, :cond_6

    .line 259
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 263
    :cond_6
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-char v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(C)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_7

    .line 270
    .end local v0           #charread:I
    .end local v4           #i:I
    .end local v8           #tempchars:[C
    :catchall_0
    move-exception v9

    .line 271
    :goto_8
    if-eqz v5, :cond_7

    .line 273
    :try_start_a
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 277
    :cond_7
    :goto_9
    throw v9

    .line 274
    :catch_3
    move-exception v10

    goto :goto_9

    .restart local v0       #charread:I
    .restart local v8       #tempchars:[C
    :catch_4
    move-exception v9

    goto :goto_3

    .line 270
    .end local v0           #charread:I
    .end local v5           #reader:Ljava/io/Reader;
    .end local v8           #tempchars:[C
    .restart local v6       #reader:Ljava/io/Reader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #reader:Ljava/io/Reader;
    .restart local v5       #reader:Ljava/io/Reader;
    goto :goto_8

    .line 268
    .end local v5           #reader:Ljava/io/Reader;
    .restart local v6       #reader:Ljava/io/Reader;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6           #reader:Ljava/io/Reader;
    .restart local v5       #reader:Ljava/io/Reader;
    goto :goto_5

    .line 244
    :catch_6
    move-exception v1

    goto :goto_4
.end method

.method public static readFileByLines(Ljava/lang/String;)V
    .locals 8
    .parameter "fileName"

    .prologue
    .line 287
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 290
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 292
    .local v5, tempString:Ljava/lang/String;
    const/4 v2, 0x1

    .line 294
    .local v2, line:I
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 298
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 302
    if-eqz v4, :cond_3

    .line 304
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 309
    .end local v2           #line:I
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #tempString:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-void

    .line 296
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #line:I
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #tempString:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    .end local v2           #line:I
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #tempString:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    if-eqz v3, :cond_0

    .line 304
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 305
    :catch_1
    move-exception v6

    goto :goto_1

    .line 301
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 302
    :goto_3
    if-eqz v3, :cond_2

    .line 304
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 308
    :cond_2
    :goto_4
    throw v6

    .line 305
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #line:I
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #tempString:Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_1

    .end local v2           #line:I
    .end local v5           #tempString:Ljava/lang/String;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 301
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #line:I
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #tempString:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 299
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_3
    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static readFileByRandomAccess(Ljava/lang/String;)V
    .locals 10
    .parameter "fileName"

    .prologue
    const/4 v0, 0x0

    .line 318
    const/4 v6, 0x0

    .line 321
    .local v6, randomFile:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "r"

    invoke-direct {v7, p0, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 323
    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .local v7, randomFile:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 325
    .local v4, fileLength:J
    const-wide/16 v8, 0x4

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    const/4 v0, 0x4

    .line 327
    .local v0, beginIndex:I
    :cond_0
    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 328
    const/16 v8, 0xa

    new-array v2, v8, [B

    .line 329
    .local v2, bytes:[B
    const/4 v1, 0x0

    .line 332
    .local v1, byteread:I
    :goto_0
    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_2

    .line 338
    if-eqz v7, :cond_4

    .line 340
    :try_start_2
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v7

    .line 345
    .end local v0           #beginIndex:I
    .end local v1           #byteread:I
    .end local v2           #bytes:[B
    .end local v4           #fileLength:J
    .end local v7           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return-void

    .line 333
    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v0       #beginIndex:I
    .restart local v1       #byteread:I
    .restart local v2       #bytes:[B
    .restart local v4       #fileLength:J
    .restart local v7       #randomFile:Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_3
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9, v1}, Ljava/io/PrintStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 335
    .end local v0           #beginIndex:I
    .end local v1           #byteread:I
    .end local v2           #bytes:[B
    .end local v4           #fileLength:J
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 336
    .end local v7           #randomFile:Ljava/io/RandomAccessFile;
    .local v3, e:Ljava/io/IOException;
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 338
    if-eqz v6, :cond_1

    .line 340
    :try_start_5
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 341
    :catch_1
    move-exception v8

    goto :goto_1

    .line 337
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 338
    :goto_3
    if-eqz v6, :cond_3

    .line 340
    :try_start_6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 344
    :cond_3
    :goto_4
    throw v8

    .line 341
    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v0       #beginIndex:I
    .restart local v1       #byteread:I
    .restart local v2       #bytes:[B
    .restart local v4       #fileLength:J
    .restart local v7       #randomFile:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v0           #beginIndex:I
    .end local v1           #byteread:I
    .end local v2           #bytes:[B
    .end local v4           #fileLength:J
    :catch_3
    move-exception v9

    goto :goto_4

    .line 337
    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v7       #randomFile:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 335
    :catch_4
    move-exception v3

    goto :goto_2

    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v0       #beginIndex:I
    .restart local v1       #byteread:I
    .restart local v2       #bytes:[B
    .restart local v4       #fileLength:J
    .restart local v7       #randomFile:Ljava/io/RandomAccessFile;
    :cond_4
    move-object v6, v7

    .end local v7           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public static sdCardAvailableSizePercent()I
    .locals 3

    .prologue
    .line 606
    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardIsMount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    div-int/2addr v1, v2

    .line 612
    :goto_0
    return v1

    .end local v0           #stat:Landroid/os/StatFs;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static sdCardGetAvailableBlocks()I
    .locals 2

    .prologue
    .line 552
    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardIsMount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 555
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    .line 558
    :goto_0
    return v1

    .end local v0           #stat:Landroid/os/StatFs;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static sdCardGetBlockCount()I
    .locals 2

    .prologue
    .line 535
    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardIsMount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 539
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    .line 541
    :goto_0
    return v1

    .end local v0           #stat:Landroid/os/StatFs;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static sdCardGetBlockSize()I
    .locals 2

    .prologue
    .line 517
    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardIsMount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 524
    :goto_0
    return v1

    .end local v0           #stat:Landroid/os/StatFs;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static sdCardGetDirectoryFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 486
    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardIsMount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sdCardGetDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardIsMount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 506
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static sdCardGetFreeBlocks()I
    .locals 2

    .prologue
    .line 569
    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardIsMount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v1

    .line 575
    :goto_0
    return v1

    .end local v0           #stat:Landroid/os/StatFs;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static sdCardGetSizeAsMB()I
    .locals 4

    .prologue
    .line 586
    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardIsMount()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 587
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 588
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    .line 589
    .local v0, blockSize:I
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    .line 591
    .local v2, totalBlocks:I
    mul-int v3, v0, v2

    div-int/lit16 v3, v3, 0x400

    div-int/lit16 v3, v3, 0x400

    .line 594
    :goto_0
    return v3

    .end local v0           #blockSize:I
    .end local v1           #stat:Landroid/os/StatFs;
    .end local v2           #totalBlocks:I
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static sdCardIsMount()Z
    .locals 2

    .prologue
    .line 474
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 475
    const-string/jumbo v1, "mounted"

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createDirOnSD(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "dirName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/mycar/jni/FileUtils;->SDPATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 63
    return-object v0
.end method

.method public createFileOnSD(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "newFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/mycar/jni/FileUtils;->SDPATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 49
    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "path"

    .prologue
    .line 171
    invoke-static {p1}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/mycar/jni/FileUtils;->SDPATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public memoryInput(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/mycar/jni/FileUtils;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, stringReader:Ljava/io/StringReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v0

    .local v0, c:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 156
    return-void

    .line 154
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(C)V

    goto :goto_0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    .line 132
    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 134
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v2, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 136
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public writeToSDFromInput(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    .locals 9
    .parameter "path"
    .parameter "fileName"
    .parameter "input"

    .prologue
    .line 88
    const/4 v3, 0x0

    .line 90
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 94
    .local v5, output:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cnlaunch/mycar/jni/FileUtils;->createDirOnSD(Ljava/lang/String;)Ljava/io/File;

    .line 95
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/cnlaunch/mycar/jni/FileUtils;->SDPATH:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, dir:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/cnlaunch/mycar/jni/FileUtils;->createFileOnSD(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 99
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    .end local v5           #output:Ljava/io/OutputStream;
    .local v6, output:Ljava/io/OutputStream;
    const/16 v7, 0x1000

    :try_start_1
    new-array v0, v7, [B

    .line 102
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 104
    .local v4, len:I
    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    .line 107
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 116
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v5, v6

    .line 122
    .end local v0           #buffer:[B
    .end local v1           #dir:Ljava/io/File;
    .end local v4           #len:I
    .end local v6           #output:Ljava/io/OutputStream;
    .restart local v5       #output:Ljava/io/OutputStream;
    :goto_1
    return-object v3

    .line 105
    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #dir:Ljava/io/File;
    .restart local v4       #len:I
    .restart local v6       #output:Ljava/io/OutputStream;
    :cond_0
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v6, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 108
    .end local v0           #buffer:[B
    .end local v4           #len:I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 110
    .end local v1           #dir:Ljava/io/File;
    .end local v6           #output:Ljava/io/OutputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v5       #output:Ljava/io/OutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 117
    :catch_1
    move-exception v2

    .line 119
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 111
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 113
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 116
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 117
    :catch_3
    move-exception v2

    .line 119
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 116
    :goto_4
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 121
    :goto_5
    throw v7

    .line 117
    :catch_4
    move-exception v2

    .line 119
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 117
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #dir:Ljava/io/File;
    .restart local v4       #len:I
    .restart local v6       #output:Ljava/io/OutputStream;
    :catch_5
    move-exception v2

    .line 119
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6           #output:Ljava/io/OutputStream;
    .restart local v5       #output:Ljava/io/OutputStream;
    goto :goto_1

    .line 114
    .end local v0           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #len:I
    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v6       #output:Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #output:Ljava/io/OutputStream;
    .restart local v5       #output:Ljava/io/OutputStream;
    goto :goto_4

    .line 111
    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v6       #output:Ljava/io/OutputStream;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6           #output:Ljava/io/OutputStream;
    .restart local v5       #output:Ljava/io/OutputStream;
    goto :goto_3

    .line 108
    .end local v1           #dir:Ljava/io/File;
    :catch_7
    move-exception v2

    goto :goto_2
.end method
