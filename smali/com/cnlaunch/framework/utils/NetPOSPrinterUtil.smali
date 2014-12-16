.class public Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;
.super Ljava/lang/Object;
.source "NetPOSPrinterUtil.java"


# static fields
.field public static final ERROR_PRINT_ACTUATOR_FAULT:I = 0x8

.field public static final ERROR_PRINT_HEAD_OVERHEATING:I = 0x80

.field public static final ERROR_PRINT_JAM:I = 0x1

.field public static final ERROR_PRINT_NO_PAPER:I = 0x4

.field public static final ERROR_PRINT_WILL_NO_PAPER:I = 0x2

.field public static final PRINT_NOT_CONNECT:I = 0xfff

.field public static final PRINT_PORT:I = 0x1b59

.field public static final PRINT_WIDTH:I = 0x180

.field public static final SUCCESS_PRINT:I

.field private static dos:Ljava/io/DataOutputStream;

.field private static in:Ljava/io/DataInputStream;

.field private static nBitmapFirst:Landroid/graphics/Bitmap;

.field private static nBitmapSecond:Landroid/graphics/Bitmap;

.field private static result:I

.field private static serverAddress:I

.field private static textPaint:Landroid/text/TextPaint;

.field private static wifiSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->result:I

    .line 42
    sput-object v1, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    .line 43
    sput-object v1, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->in:Ljava/io/DataInputStream;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawBitFirst(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"

    .prologue
    const/high16 v3, 0x43c0

    const/high16 v9, 0x42a0

    const/high16 v2, 0x4220

    const/high16 v8, 0x41a0

    const/4 v1, 0x0

    .line 272
    const/16 v4, 0x180

    const/16 v6, 0x55

    .line 273
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 272
    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->nBitmapFirst:Landroid/graphics/Bitmap;

    .line 274
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v4, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->nBitmapFirst:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 275
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 276
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 277
    .local v5, p:Landroid/graphics/Paint;
    const/high16 v4, -0x100

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 280
    sget v6, Lcom/launch/core/R$string;->print_launch:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-virtual {v0, v4, v1, v8, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v4, v2

    .line 281
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 284
    sget v4, Lcom/launch/core/R$string;->print_automobile_fault_diagnosis_test_report:I

    .line 283
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    const/high16 v4, 0x428c

    .line 282
    invoke-virtual {v0, v2, v8, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v2, v9

    move v4, v9

    .line 286
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 287
    sget-object v1, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->nBitmapFirst:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public static drawBitSecond(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "s"

    .prologue
    const/16 v3, 0x180

    .line 297
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->textPaint:Landroid/text/TextPaint;

    .line 298
    sget-object v1, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->textPaint:Landroid/text/TextPaint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 299
    sget-object v1, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->textPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 300
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->textPaint:Landroid/text/TextPaint;

    .line 301
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    .line 300
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 302
    .local v0, layout:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    .line 303
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 302
    invoke-static {v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->nBitmapSecond:Landroid/graphics/Bitmap;

    .line 304
    new-instance v8, Landroid/graphics/Canvas;

    sget-object v1, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->nBitmapSecond:Landroid/graphics/Bitmap;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 305
    .local v8, canvas:Landroid/graphics/Canvas;
    const/4 v1, -0x1

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 306
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 307
    sget-object v1, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->nBitmapSecond:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public static mixtureBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 316
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v2

    .line 324
    :goto_0
    return-object v1

    .line 319
    :cond_1
    const/16 v3, 0x180

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 320
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 319
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 321
    .local v1, newBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    .local v0, cv:Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 323
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, p1, v6, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static printPic(Landroid/content/Context;Landroid/graphics/Bitmap;)I
    .locals 23
    .parameter "context"
    .parameter "bmp"

    .prologue
    .line 58
    .line 59
    const-string/jumbo v19, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 58
    check-cast v18, Landroid/net/wifi/WifiManager;

    .line 60
    .local v18, wifi_service:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 61
    .local v4, dhcpinfo:Landroid/net/DhcpInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v17

    .line 62
    .local v17, wifi_info:Landroid/net/wifi/WifiInfo;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 63
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "X-431PRINTER"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 64
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "\"X-431PRINTER"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 65
    const/16 v19, 0xfff

    .line 159
    :goto_0
    return v19

    .line 67
    :cond_0
    iget v0, v4, Landroid/net/DhcpInfo;->serverAddress:I

    move/from16 v19, v0

    sput v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->serverAddress:I

    .line 68
    sget v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->serverAddress:I

    invoke-static/range {v19 .. v19}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v13

    .line 70
    .local v13, ip:Ljava/lang/String;
    :try_start_0
    new-instance v19, Ljava/net/Socket;

    const/16 v20, 0x1b59

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    sput-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->wifiSocket:Ljava/net/Socket;

    .line 71
    new-instance v19, Ljava/io/DataOutputStream;

    sget-object v20, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->wifiSocket:Ljava/net/Socket;

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    .line 72
    new-instance v19, Ljava/io/DataInputStream;

    sget-object v20, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->wifiSocket:Ljava/net/Socket;

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->in:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    if-eqz v19, :cond_1

    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->in:Ljava/io/DataInputStream;

    if-nez v19, :cond_2

    .line 81
    :cond_1
    const/16 v19, 0xfff

    goto :goto_0

    .line 73
    :catch_0
    move-exception v6

    .line 74
    .local v6, e1:Ljava/net/UnknownHostException;
    invoke-virtual {v6}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 75
    const/16 v19, 0xfff

    goto :goto_0

    .line 76
    .end local v6           #e1:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v6

    .line 77
    .local v6, e1:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    const/16 v19, 0xfff

    goto :goto_0

    .line 84
    .end local v6           #e1:Ljava/io/IOException;
    :cond_2
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v3, v0, [B

    const/16 v19, 0x0

    const/16 v20, 0x1b

    aput-byte v20, v3, v19

    const/16 v19, 0x1

    const/16 v20, 0x33

    aput-byte v20, v3, v19

    .line 86
    .local v3, data:[B
    :try_start_1
    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    const/16 v20, 0x0

    array-length v0, v3

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 87
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-byte v20, v3, v19

    .line 88
    const/16 v19, 0x1

    const/16 v20, 0x0

    aput-byte v20, v3, v19

    .line 89
    const/16 v19, 0x2

    const/16 v20, 0x0

    aput-byte v20, v3, v19
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 93
    :goto_1
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v10, v0, [B

    const/16 v19, 0x0

    const/16 v20, 0x1b

    aput-byte v20, v10, v19

    const/16 v19, 0x1

    const/16 v20, 0x4a

    aput-byte v20, v10, v19

    .line 94
    .local v10, escj:[B
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v8, v0, [B

    fill-array-data v8, :array_0

    .line 97
    .local v8, esccheck:[B
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v7, v0, [B

    const/16 v19, 0x0

    const/16 v20, 0x1b

    aput-byte v20, v7, v19

    const/16 v19, 0x1

    const/16 v20, 0x2a

    aput-byte v20, v7, v19

    .line 98
    .local v7, escBmp:[B
    const/16 v19, 0x2

    const/16 v20, 0x21

    aput-byte v20, v7, v19

    .line 100
    const/16 v19, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    rem-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v7, v19

    .line 101
    const/16 v19, 0x4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v7, v19

    .line 103
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x18

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    if-lt v12, v0, :cond_3

    .line 142
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v9, v0, [B

    fill-array-data v9, :array_1

    .line 143
    .local v9, escf:[B
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v11, v0, [B

    fill-array-data v11, :array_2

    .line 145
    .local v11, esck:[B
    :try_start_2
    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 146
    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 147
    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->in:Ljava/io/DataInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v19

    sput v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->result:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 154
    :try_start_3
    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->close()V

    .line 155
    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->in:Ljava/io/DataInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 159
    :goto_3
    sget v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->result:I

    goto/16 :goto_0

    .line 90
    .end local v7           #escBmp:[B
    .end local v8           #esccheck:[B
    .end local v9           #escf:[B
    .end local v10           #escj:[B
    .end local v11           #esck:[B
    .end local v12           #i:I
    :catch_2
    move-exception v6

    .line 91
    .restart local v6       #e1:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 105
    .end local v6           #e1:Ljava/io/IOException;
    .restart local v7       #escBmp:[B
    .restart local v8       #esccheck:[B
    .restart local v10       #escj:[B
    .restart local v12       #i:I
    :cond_3
    :try_start_4
    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    const/16 v20, 0x0

    array-length v0, v7

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 109
    :goto_4
    const/4 v14, 0x0

    .local v14, j:I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    if-lt v14, v0, :cond_5

    .line 129
    :try_start_5
    rem-int/lit8 v19, v12, 0xa

    if-nez v19, :cond_8

    .line 130
    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 131
    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->in:Ljava/io/DataInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v19

    if-nez v19, :cond_4

    .line 132
    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    const/16 v20, 0x0

    array-length v0, v10

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 103
    :cond_4
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 106
    .end local v14           #j:I
    :catch_3
    move-exception v5

    .line 107
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 110
    .end local v5           #e:Ljava/io/IOException;
    .restart local v14       #j:I
    :cond_5
    const/4 v15, 0x0

    .local v15, k:I
    :goto_7
    const/16 v19, 0x18

    move/from16 v0, v19

    if-lt v15, v0, :cond_6

    .line 119
    :try_start_6
    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    const/16 v20, 0x0

    array-length v0, v3

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 121
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-byte v20, v3, v19

    .line 122
    const/16 v19, 0x1

    const/16 v20, 0x0

    aput-byte v20, v3, v19

    .line 123
    const/16 v19, 0x2

    const/16 v20, 0x0

    aput-byte v20, v3, v19
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 109
    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 111
    :cond_6
    mul-int/lit8 v19, v12, 0x18

    add-int v19, v19, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 112
    mul-int/lit8 v19, v12, 0x18

    add-int v19, v19, v15

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v16

    .line 113
    .local v16, pixelColor:I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v19

    if-nez v19, :cond_7

    .line 114
    div-int/lit8 v19, v15, 0x8

    aget-byte v20, v3, v19

    const/16 v21, 0x80

    rem-int/lit8 v22, v15, 0x8

    shr-int v21, v21, v22

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v3, v19

    .line 110
    .end local v16           #pixelColor:I
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 124
    :catch_4
    move-exception v5

    .line 125
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 135
    .end local v5           #e:Ljava/io/IOException;
    .end local v15           #k:I
    :cond_8
    :try_start_7
    sget-object v19, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    const/16 v20, 0x0

    array-length v0, v10

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_6

    .line 137
    :catch_5
    move-exception v5

    .line 138
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 149
    .end local v5           #e:Ljava/io/IOException;
    .end local v14           #j:I
    .restart local v9       #escf:[B
    .restart local v11       #esck:[B
    :catch_6
    move-exception v6

    .line 150
    .restart local v6       #e1:Ljava/io/IOException;
    const/16 v19, 0xfff

    goto/16 :goto_0

    .line 156
    .end local v6           #e1:Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 157
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 94
    :array_0
    .array-data 0x1
        0x1dt
        0x72t
        0x49t
    .end array-data

    .line 142
    :array_1
    .array-data 0x1
        0x1dt
        0x7at
        0x31t
    .end array-data

    .line 143
    :array_2
    .array-data 0x1
        0x1bt
        0x4at
        0x40t
    .end array-data
.end method

.method public static printPic(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)I
    .locals 17
    .parameter "context"
    .parameter "bmp"
    .parameter "ip"

    .prologue
    .line 170
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 171
    const/16 v13, 0xfff

    .line 263
    :goto_0
    return v13

    .line 174
    :cond_0
    :try_start_0
    new-instance v13, Ljava/net/Socket;

    const/16 v14, 0x1b59

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v14}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->wifiSocket:Ljava/net/Socket;

    .line 175
    new-instance v13, Ljava/io/DataOutputStream;

    sget-object v14, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->wifiSocket:Ljava/net/Socket;

    invoke-virtual {v14}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    .line 176
    new-instance v13, Ljava/io/DataInputStream;

    sget-object v14, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->wifiSocket:Ljava/net/Socket;

    invoke-virtual {v14}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->in:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    if-eqz v13, :cond_1

    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->in:Ljava/io/DataInputStream;

    if-nez v13, :cond_2

    .line 185
    :cond_1
    const/16 v13, 0xfff

    goto :goto_0

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, e:Ljava/net/UnknownHostException;
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 179
    const/16 v13, 0xfff

    goto :goto_0

    .line 180
    .end local v2           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v3

    .line 181
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    const/16 v13, 0xfff

    goto :goto_0

    .line 188
    .end local v3           #e1:Ljava/io/IOException;
    :cond_2
    const/4 v13, 0x3

    new-array v1, v13, [B

    const/4 v13, 0x0

    const/16 v14, 0x1b

    aput-byte v14, v1, v13

    const/4 v13, 0x1

    const/16 v14, 0x33

    aput-byte v14, v1, v13

    .line 190
    .local v1, data:[B
    :try_start_1
    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    const/4 v14, 0x0

    array-length v15, v1

    invoke-virtual {v13, v1, v14, v15}, Ljava/io/DataOutputStream;->write([BII)V

    .line 191
    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-byte v14, v1, v13

    .line 192
    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-byte v14, v1, v13

    .line 193
    const/4 v13, 0x2

    const/4 v14, 0x0

    aput-byte v14, v1, v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 197
    :goto_1
    const/4 v13, 0x3

    new-array v7, v13, [B

    const/4 v13, 0x0

    const/16 v14, 0x1b

    aput-byte v14, v7, v13

    const/4 v13, 0x1

    const/16 v14, 0x4a

    aput-byte v14, v7, v13

    .line 198
    .local v7, escj:[B
    const/4 v13, 0x3

    new-array v5, v13, [B

    fill-array-data v5, :array_0

    .line 201
    .local v5, esccheck:[B
    const/4 v13, 0x5

    new-array v4, v13, [B

    const/4 v13, 0x0

    const/16 v14, 0x1b

    aput-byte v14, v4, v13

    const/4 v13, 0x1

    const/16 v14, 0x2a

    aput-byte v14, v4, v13

    .line 202
    .local v4, escBmp:[B
    const/4 v13, 0x2

    const/16 v14, 0x21

    aput-byte v14, v4, v13

    .line 204
    const/4 v13, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    rem-int/lit16 v14, v14, 0x100

    int-to-byte v14, v14

    aput-byte v14, v4, v13

    .line 205
    const/4 v13, 0x4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    div-int/lit16 v14, v14, 0x100

    int-to-byte v14, v14

    aput-byte v14, v4, v13

    .line 207
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x18

    add-int/lit8 v13, v13, 0x1

    if-lt v9, v13, :cond_3

    .line 246
    const/4 v13, 0x3

    new-array v6, v13, [B

    fill-array-data v6, :array_1

    .line 247
    .local v6, escf:[B
    const/4 v13, 0x3

    new-array v8, v13, [B

    fill-array-data v8, :array_2

    .line 249
    .local v8, esck:[B
    :try_start_2
    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v13, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 250
    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v13, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 251
    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->in:Ljava/io/DataInputStream;

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readByte()B

    move-result v13

    sput v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->result:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 258
    :try_start_3
    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V

    .line 259
    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->in:Ljava/io/DataInputStream;

    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 263
    :goto_3
    sget v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->result:I

    goto/16 :goto_0

    .line 194
    .end local v4           #escBmp:[B
    .end local v5           #esccheck:[B
    .end local v6           #escf:[B
    .end local v7           #escj:[B
    .end local v8           #esck:[B
    .end local v9           #i:I
    :catch_2
    move-exception v3

    .line 195
    .restart local v3       #e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 209
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v4       #escBmp:[B
    .restart local v5       #esccheck:[B
    .restart local v7       #escj:[B
    .restart local v9       #i:I
    :cond_3
    :try_start_4
    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    const/4 v14, 0x0

    array-length v15, v4

    invoke-virtual {v13, v4, v14, v15}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 213
    :goto_4
    const/4 v10, 0x0

    .local v10, j:I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-lt v10, v13, :cond_5

    .line 233
    :try_start_5
    rem-int/lit8 v13, v9, 0xa

    if-nez v13, :cond_8

    .line 234
    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v13, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 235
    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->in:Ljava/io/DataInputStream;

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readByte()B

    move-result v13

    if-nez v13, :cond_4

    .line 236
    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    const/4 v14, 0x0

    array-length v15, v7

    invoke-virtual {v13, v7, v14, v15}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 207
    :cond_4
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 210
    .end local v10           #j:I
    :catch_3
    move-exception v2

    .line 211
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 214
    .end local v2           #e:Ljava/io/IOException;
    .restart local v10       #j:I
    :cond_5
    const/4 v11, 0x0

    .local v11, k:I
    :goto_7
    const/16 v13, 0x18

    if-lt v11, v13, :cond_6

    .line 223
    :try_start_6
    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    const/4 v14, 0x0

    array-length v15, v1

    invoke-virtual {v13, v1, v14, v15}, Ljava/io/DataOutputStream;->write([BII)V

    .line 225
    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-byte v14, v1, v13

    .line 226
    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-byte v14, v1, v13

    .line 227
    const/4 v13, 0x2

    const/4 v14, 0x0

    aput-byte v14, v1, v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 213
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 215
    :cond_6
    mul-int/lit8 v13, v9, 0x18

    add-int/2addr v13, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-ge v13, v14, :cond_7

    .line 216
    mul-int/lit8 v13, v9, 0x18

    add-int/2addr v13, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    .line 217
    .local v12, pixelColor:I
    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v13

    if-nez v13, :cond_7

    .line 218
    div-int/lit8 v13, v11, 0x8

    aget-byte v14, v1, v13

    const/16 v15, 0x80

    rem-int/lit8 v16, v11, 0x8

    shr-int v15, v15, v16

    int-to-byte v15, v15

    add-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v1, v13

    .line 214
    .end local v12           #pixelColor:I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 228
    :catch_4
    move-exception v2

    .line 229
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 239
    .end local v2           #e:Ljava/io/IOException;
    .end local v11           #k:I
    :cond_8
    :try_start_7
    sget-object v13, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->dos:Ljava/io/DataOutputStream;

    const/4 v14, 0x0

    array-length v15, v7

    invoke-virtual {v13, v7, v14, v15}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    .line 241
    :catch_5
    move-exception v2

    .line 242
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 253
    .end local v2           #e:Ljava/io/IOException;
    .end local v10           #j:I
    .restart local v6       #escf:[B
    .restart local v8       #esck:[B
    :catch_6
    move-exception v3

    .line 254
    .restart local v3       #e1:Ljava/io/IOException;
    const/16 v13, 0xfff

    goto/16 :goto_0

    .line 260
    .end local v3           #e1:Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 261
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 198
    :array_0
    .array-data 0x1
        0x1dt
        0x72t
        0x49t
    .end array-data

    .line 246
    :array_1
    .array-data 0x1
        0x1dt
        0x7at
        0x31t
    .end array-data

    .line 247
    :array_2
    .array-data 0x1
        0x1bt
        0x4at
        0x40t
    .end array-data
.end method

.method public static resultToast(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    .line 333
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 334
    .local v0, handler:Landroid/os/Handler;
    if-eqz p0, :cond_0

    .line 335
    new-instance v1, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil$1;

    invoke-direct {v1, p1, p0}, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil$1;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    :cond_0
    return-void
.end method
