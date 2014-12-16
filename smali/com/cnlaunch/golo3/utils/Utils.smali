.class public Lcom/cnlaunch/golo3/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Logout(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 371
    invoke-static {p0}, Lcom/cnlaunch/newgolo/model/LoginMgr;->deleteLoginInfo(Landroid/content/Context;)V

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cnlaunch/newgolo/service/GoloProService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 374
    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "str"

    .prologue
    .line 50
    const/4 v5, 0x0

    .line 53
    .local v5, md5:Ljava/security/MessageDigest;
    :try_start_0
    const-string/jumbo v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 61
    .local v1, charArray:[C
    array-length v8, v1

    new-array v0, v8, [B

    .line 63
    .local v0, byteArray:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v1

    if-lt v4, v8, :cond_0

    .line 67
    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 69
    .local v6, md5Bytes:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v3, hexValue:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    :goto_1
    array-length v8, v6

    if-lt v4, v8, :cond_1

    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v0           #byteArray:[B
    .end local v1           #charArray:[C
    .end local v3           #hexValue:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    .end local v6           #md5Bytes:[B
    :goto_2
    return-object v8

    .line 54
    :catch_0
    move-exception v2

    .line 56
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    const-string/jumbo v8, ""

    goto :goto_2

    .line 65
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #byteArray:[B
    .restart local v1       #charArray:[C
    .restart local v4       #i:I
    :cond_0
    aget-char v8, v1, v4

    int-to-byte v8, v8

    aput-byte v8, v0, v4

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    .restart local v3       #hexValue:Ljava/lang/StringBuffer;
    .restart local v6       #md5Bytes:[B
    :cond_1
    aget-byte v8, v6, v4

    and-int/lit16 v7, v8, 0xff

    .line 73
    .local v7, val:I
    const/16 v8, 0x10

    if-ge v7, v8, :cond_2

    .line 75
    const-string/jumbo v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static checkEmail(Ljava/lang/String;)Z
    .locals 5
    .parameter "email"

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 133
    .local v2, flag:Z
    :try_start_0
    const-string/jumbo v0, "^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$"

    .line 134
    .local v0, check:Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 135
    .local v4, regex:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 136
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 140
    .end local v0           #check:Ljava/lang/String;
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #regex:Ljava/util/regex/Pattern;
    :goto_0
    return v2

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .parameter "sourceFile"
    .parameter "targetFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, inBuff:Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 225
    .local v4, outBuff:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 228
    .end local v1           #inBuff:Ljava/io/BufferedInputStream;
    .local v2, inBuff:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 231
    .end local v4           #outBuff:Ljava/io/BufferedOutputStream;
    .local v5, outBuff:Ljava/io/BufferedOutputStream;
    const/16 v6, 0x1400

    :try_start_2
    new-array v0, v6, [B

    .line 233
    .local v0, b:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .local v3, len:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    .line 237
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 242
    :cond_0
    if-eqz v5, :cond_1

    .line 243
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 245
    :cond_1
    return-void

    .line 234
    :cond_2
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v5, v0, v6, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 238
    .end local v0           #b:[B
    .end local v3           #len:I
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5           #outBuff:Ljava/io/BufferedOutputStream;
    .restart local v4       #outBuff:Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 240
    .end local v2           #inBuff:Ljava/io/BufferedInputStream;
    .restart local v1       #inBuff:Ljava/io/BufferedInputStream;
    :goto_1
    if-eqz v1, :cond_3

    .line 241
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 242
    :cond_3
    if-eqz v4, :cond_4

    .line 243
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 244
    :cond_4
    throw v6

    .line 238
    :catchall_1
    move-exception v6

    goto :goto_1

    .end local v1           #inBuff:Ljava/io/BufferedInputStream;
    .restart local v2       #inBuff:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2           #inBuff:Ljava/io/BufferedInputStream;
    .restart local v1       #inBuff:Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .locals 7
    .parameter "sPath"

    .prologue
    const/4 v4, 0x0

    .line 301
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 304
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, dirFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 331
    :cond_1
    :goto_0
    return v4

    .line 309
    :cond_2
    const/4 v2, 0x1

    .line 311
    .local v2, flag:Z
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 312
    .local v1, files:[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v1

    if-lt v3, v5, :cond_4

    .line 325
    :cond_3
    :goto_2
    if-eqz v2, :cond_1

    .line 328
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 329
    const/4 v4, 0x1

    goto :goto_0

    .line 314
    :cond_4
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 315
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/golo3/utils/Utils;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    .line 316
    if-eqz v2, :cond_3

    .line 312
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 320
    :cond_6
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/golo3/utils/Utils;->deleteDirectory(Ljava/lang/String;)Z

    move-result v2

    .line 321
    if-nez v2, :cond_5

    goto :goto_2
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 110
    :cond_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 106
    .local v0, childFiles:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 107
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/cnlaunch/golo3/utils/Utils;->deleteFile(Ljava/io/File;)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, flag:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 287
    const/4 v1, 0x1

    .line 289
    :cond_0
    return v1
.end method

.method public static deleteFolder(Ljava/lang/String;)V
    .locals 2
    .parameter "sPath"

    .prologue
    .line 262
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    invoke-static {p0}, Lcom/cnlaunch/golo3/utils/Utils;->deleteFile(Ljava/lang/String;)Z

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-static {p0}, Lcom/cnlaunch/golo3/utils/Utils;->deleteDirectory(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static existSDCard()Z
    .locals 2

    .prologue
    .line 340
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 341
    const-string/jumbo v1, "mounted"

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 341
    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 117
    .local v2, now:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, date:Ljava/lang/String;
    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, language:Ljava/lang/String;
    const-string/jumbo v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const-string/jumbo v1, "CN"

    .line 215
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "EN"

    goto :goto_0
.end method

.method public static getSDAvailableSize(Landroid/content/Context;)J
    .locals 10
    .parameter "context"

    .prologue
    const-wide/16 v8, 0x400

    .line 353
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 354
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 355
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 356
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 357
    .local v0, availableBlocks:J
    mul-long v6, v2, v0

    div-long/2addr v6, v8

    div-long/2addr v6, v8

    return-wide v6
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 248
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGoloNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "goloStr"

    .prologue
    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-le v2, v3, :cond_1

    .line 191
    :cond_0
    const/4 v2, 0x0

    .line 196
    :goto_0
    return v2

    .line 193
    :cond_1
    const-string/jumbo v2, "^[a-zA-Z]+[a-zA-Z0-9_]+[a-zA-Z0-9]+$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 195
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 196
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method public static isMobileNO(Ljava/lang/String;)Z
    .locals 4
    .parameter "mobiles"

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 153
    .local v1, flag:Z
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_0

    const/4 v1, 0x1

    .line 157
    :goto_0
    return v1

    .line 153
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobileNO2Contact(Ljava/lang/String;)Z
    .locals 4
    .parameter "mobiles"

    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    .line 176
    const/4 v2, 0x0

    .line 182
    :goto_0
    return v2

    .line 180
    :cond_0
    const-string/jumbo v2, "^((13[0-9])|(15[^4,\\D])|(18[0-9]))\\d{8}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 181
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 182
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method public static isMoblieOverSea(Ljava/lang/String;)Z
    .locals 5
    .parameter "mobiles"

    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_0

    .line 163
    const/4 v3, 0x0

    .line 168
    :goto_0
    return v3

    .line 165
    :cond_0
    const-string/jumbo v2, "^[0-9]{1,15}$"

    .line 166
    .local v2, regex:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 167
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 168
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    goto :goto_0
.end method

.method public static isNetworkAccessiable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 361
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 362
    .local v0, CM:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 363
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 367
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSerialNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "goloStr"

    .prologue
    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_1

    .line 200
    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static pwd2MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pwd"

    .prologue
    .line 34
    const-string/jumbo v1, ""

    .line 36
    .local v1, md5:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "utf-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/golo3/utils/Utils;->MD5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static toUpCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    const/4 v3, 0x1

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v0, newstr:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
