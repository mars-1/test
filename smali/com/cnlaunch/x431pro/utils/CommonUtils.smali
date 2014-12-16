.class public Lcom/cnlaunch/x431pro/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field public static final NETTYPE_CMNET:I = 0x3

.field public static final NETTYPE_CMWAP:I = 0x2

.field public static final NETTYPE_WIFI:I = 0x1

.field private static final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/cnlaunch/x431pro/utils/CommonUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/utils/CommonUtils;->tag:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static archiveAPK(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 433
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 435
    return-void
.end method

.method public static archiveAPK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "storePath"
    .parameter "fileName"

    .prologue
    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 421
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 423
    return-void
.end method

.method public static checkSDCard()Z
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, flag:Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x1

    .line 129
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static create2DCode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "str"

    .prologue
    .line 188
    :try_start_0
    new-instance v2, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v2}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v5, 0x12c

    const/16 v6, 0x12c

    invoke-virtual {v2, p0, v4, v5, v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    .line 189
    .local v9, matrix:Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 190
    .local v3, width:I
    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 193
    .local v7, height:I
    mul-int v2, v3, v7

    new-array v1, v2, [I

    .line 194
    .local v1, pixels:[I
    const/4 v11, 0x0

    .local v11, y:I
    :goto_0
    if-lt v11, v7, :cond_0

    .line 202
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 209
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #pixels:[I
    .end local v3           #width:I
    .end local v7           #height:I
    .end local v9           #matrix:Lcom/google/zxing/common/BitMatrix;
    .end local v11           #y:I
    :goto_1
    return-object v0

    .line 195
    .restart local v1       #pixels:[I
    .restart local v3       #width:I
    .restart local v7       #height:I
    .restart local v9       #matrix:Lcom/google/zxing/common/BitMatrix;
    .restart local v11       #y:I
    :cond_0
    const/4 v10, 0x0

    .local v10, x:I
    :goto_2
    if-lt v10, v3, :cond_1

    .line 194
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    mul-int v2, v11, v3

    add-int/2addr v2, v10

    const/high16 v4, -0x100

    aput v4, v1, v2
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 206
    .end local v1           #pixels:[I
    .end local v3           #width:I
    .end local v7           #height:I
    .end local v9           #matrix:Lcom/google/zxing/common/BitMatrix;
    .end local v10           #x:I
    .end local v11           #y:I
    :catch_0
    move-exception v8

    .line 207
    .local v8, e:Lcom/google/zxing/WriterException;
    invoke-virtual {v8}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 209
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static dpToPixel(FLandroid/content/Context;)F
    .locals 4
    .parameter "dp"
    .parameter "context"

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 167
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 168
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x4320

    div-float/2addr v2, v3

    mul-float/2addr v2, p0

    return v2
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2
    .parameter "context"

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 159
    .local v0, dm:Landroid/util/DisplayMetrics;
    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, netType:I
    const-string/jumbo v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 98
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 99
    .local v5, networkInfo:Landroid/net/NetworkInfo;
    if-nez v5, :cond_0

    move v4, v3

    .line 115
    .end local v3           #netType:I
    .local v4, netType:I
    :goto_0
    return v4

    .line 102
    .end local v4           #netType:I
    .restart local v3       #netType:I
    :cond_0
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 103
    .local v2, nType:I
    if-nez v2, :cond_3

    .line 104
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, extraInfo:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "cmnet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    const/4 v3, 0x3

    .end local v1           #extraInfo:Ljava/lang/String;
    :cond_1
    :goto_1
    move v4, v3

    .line 115
    .end local v3           #netType:I
    .restart local v4       #netType:I
    goto :goto_0

    .line 109
    .end local v4           #netType:I
    .restart local v1       #extraInfo:Ljava/lang/String;
    .restart local v3       #netType:I
    :cond_2
    const/4 v3, 0x2

    .line 112
    goto :goto_1

    .end local v1           #extraInfo:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 113
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "key"

    .prologue
    .line 67
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 68
    .local v2, props:Ljava/util/Properties;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "config.properties"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 69
    .local v1, input:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 71
    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 76
    .end local v1           #input:Ljava/io/InputStream;
    .end local v2           #props:Ljava/util/Properties;
    :goto_0
    return-object v3

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 76
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 149
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 139
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static hideKeyboard(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 255
    if-eqz p0, :cond_0

    .line 256
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 257
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 261
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public static installAPKSilently(Landroid/content/Context;Ljava/lang/String;)I
    .locals 19
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 443
    const/4 v10, -0x1

    .line 444
    .local v10, result:I
    const/4 v9, 0x0

    .line 447
    .local v9, process:Ljava/lang/Process;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 448
    .local v8, pm:Landroid/content/pm/PackageManager;
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v14}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 449
    .local v6, info:Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_0

    move v11, v10

    .line 502
    .end local v6           #info:Landroid/content/pm/PackageInfo;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #result:I
    .local v11, result:I
    :goto_0
    return v11

    .line 452
    .end local v11           #result:I
    .restart local v6       #info:Landroid/content/pm/PackageInfo;
    .restart local v8       #pm:Landroid/content/pm/PackageManager;
    .restart local v10       #result:I
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/x431pro/utils/Tools;->getCurrentPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 454
    .local v7, packageName:Ljava/lang/String;
    const-string/jumbo v14, " "

    const-string/jumbo v15, "\\ "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 455
    sget-object v14, Lcom/cnlaunch/x431pro/utils/CommonUtils;->tag:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "installAPKSilently filePath: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    const-string/jumbo v15, "per-up"

    invoke-virtual {v14, v15}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 457
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 458
    .local v3, dataOutputStream:Ljava/io/DataOutputStream;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "chmod 777 "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 459
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm install -r "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 459
    invoke-virtual {v3, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 462
    iget-object v14, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 463
    const-string/jumbo v2, "am start -n "

    .line 464
    .local v2, activity:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 466
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 470
    .end local v2           #activity:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 471
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 472
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 473
    .local v13, successResult:Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 475
    .local v5, errorResult:Ljava/io/BufferedReader;
    sget-object v14, Lcom/cnlaunch/x431pro/utils/CommonUtils;->tag:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "installAPKSilently: end!"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    :cond_2
    :goto_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, s:Ljava/lang/String;
    if-nez v12, :cond_3

    .line 483
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_4

    .line 490
    sget-object v14, Lcom/cnlaunch/x431pro/utils/CommonUtils;->tag:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "installAPKSilently: end1!"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    .line 492
    sget-object v14, Lcom/cnlaunch/x431pro/utils/CommonUtils;->tag:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "installAPKSilently: end2!"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 501
    .end local v3           #dataOutputStream:Ljava/io/DataOutputStream;
    .end local v5           #errorResult:Ljava/io/BufferedReader;
    .end local v6           #info:Landroid/content/pm/PackageInfo;
    .end local v7           #packageName:Ljava/lang/String;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v12           #s:Ljava/lang/String;
    .end local v13           #successResult:Ljava/io/BufferedReader;
    :goto_3
    sget-object v14, Lcom/cnlaunch/x431pro/utils/CommonUtils;->tag:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "installAPKSilently: end3!"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v10

    .line 502
    .end local v10           #result:I
    .restart local v11       #result:I
    goto/16 :goto_0

    .line 477
    .end local v11           #result:I
    .restart local v3       #dataOutputStream:Ljava/io/DataOutputStream;
    .restart local v5       #errorResult:Ljava/io/BufferedReader;
    .restart local v6       #info:Landroid/content/pm/PackageInfo;
    .restart local v7       #packageName:Ljava/lang/String;
    .restart local v8       #pm:Landroid/content/pm/PackageManager;
    .restart local v10       #result:I
    .restart local v12       #s:Ljava/lang/String;
    .restart local v13       #successResult:Ljava/io/BufferedReader;
    :cond_3
    :try_start_1
    const-string/jumbo v14, "Result: "

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    const-string/jumbo v14, "Success"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 479
    const/4 v10, 0x0

    goto :goto_1

    .line 484
    :cond_4
    const-string/jumbo v14, "Failure"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 485
    const-string/jumbo v14, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 486
    const/4 v10, -0x2

    .line 488
    :cond_5
    const-string/jumbo v14, "Result Error: "

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 493
    .end local v3           #dataOutputStream:Ljava/io/DataOutputStream;
    .end local v5           #errorResult:Ljava/io/BufferedReader;
    .end local v6           #info:Landroid/content/pm/PackageInfo;
    .end local v7           #packageName:Ljava/lang/String;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v12           #s:Ljava/lang/String;
    .end local v13           #successResult:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 494
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 495
    sget-object v14, Lcom/cnlaunch/x431pro/utils/CommonUtils;->tag:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "installAPKSilently: IOException!"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 496
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 497
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 498
    sget-object v14, Lcom/cnlaunch/x431pro/utils/CommonUtils;->tag:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "installAPKSilently: IOException1!"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static isChangeLayout(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 307
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 85
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 86
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 87
    .local v1, ni:Landroid/net/NetworkInfo;
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

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 296
    const/4 v1, 0x3

    .line 295
    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pixelsToDp(FLandroid/content/Context;)F
    .locals 4
    .parameter "px"
    .parameter "context"

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 176
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 177
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x4320

    div-float/2addr v2, v3

    div-float v2, p0, v2

    return v2
.end method

.method public static sendMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "mContext"
    .parameter "title"
    .parameter "text"

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, emailIntent:Landroid/content/Intent;
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string/jumbo v1, "android.intent.extra.EMAIL"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string/jumbo v1, "Choose Email Client"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void
.end method

.method public static sendSms(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "mContext"
    .parameter "smstext"

    .prologue
    .line 221
    const-string/jumbo v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 222
    .local v1, smsToUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 223
    .local v0, mIntent:Landroid/content/Intent;
    const-string/jumbo v2, "sms_body"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 225
    const/4 v2, 0x0

    return-object v2
.end method

.method public static showKeyboard(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 268
    if-eqz p0, :cond_0

    .line 269
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 270
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 274
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public static showTitlePopupWindow(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .parameter "context"
    .parameter "view"

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    :try_start_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 357
    const/4 v3, 0x0

    .line 358
    .local v3, itemview:Landroid/view/View;
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 359
    .local v4, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 361
    .local v1, children:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 410
    .end local v1           #children:I
    .end local v2           #i:I
    .end local v3           #itemview:Landroid/view/View;
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    :goto_1
    return-void

    .line 362
    .restart local v1       #children:I
    .restart local v2       #i:I
    .restart local v3       #itemview:Landroid/view/View;
    .restart local v4       #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 363
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 364
    new-instance v5, Lcom/cnlaunch/x431pro/utils/CommonUtils$3;

    invoke-direct {v5, p0}, Lcom/cnlaunch/x431pro/utils/CommonUtils$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 375
    :cond_2
    instance-of v5, v3, Landroid/widget/Button;

    if-eqz v5, :cond_3

    .line 376
    new-instance v5, Lcom/cnlaunch/x431pro/utils/CommonUtils$4;

    invoke-direct {v5, p0}, Lcom/cnlaunch/x431pro/utils/CommonUtils$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 387
    :cond_3
    instance-of v5, v3, Landroid/widget/RadioButton;

    if-eqz v5, :cond_4

    .line 388
    new-instance v5, Lcom/cnlaunch/x431pro/utils/CommonUtils$5;

    invoke-direct {v5, p0}, Lcom/cnlaunch/x431pro/utils/CommonUtils$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 400
    :cond_4
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5

    .line 401
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v5, v0

    invoke-static {p0, v5}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->showTitlePopupWindow(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v1           #children:I
    .end local v2           #i:I
    .end local v3           #itemview:Landroid/view/View;
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static varargs showTitlePopupWindow(Landroid/content/Context;[Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "views"

    .prologue
    .line 319
    if-eqz p1, :cond_0

    .line 320
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 346
    :cond_0
    return-void

    .line 320
    :cond_1
    aget-object v0, p1, v1

    .line 321
    .local v0, itemview:Landroid/view/View;
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 322
    new-instance v3, Lcom/cnlaunch/x431pro/utils/CommonUtils$1;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/utils/CommonUtils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 333
    :cond_2
    instance-of v3, v0, Landroid/widget/Button;

    if-eqz v3, :cond_3

    .line 334
    new-instance v3, Lcom/cnlaunch/x431pro/utils/CommonUtils$2;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/utils/CommonUtils$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 320
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static uninstallAPKSilently(Ljava/lang/String;)I
    .locals 10
    .parameter "packageName"

    .prologue
    .line 511
    const/4 v4, -0x1

    .line 512
    .local v4, result:I
    const/4 v3, 0x0

    .line 515
    .local v3, process:Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string/jumbo v8, "per-up"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 516
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 517
    .local v0, dataOutputStream:Ljava/io/DataOutputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm uninstall "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 517
    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 520
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 521
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 522
    .local v6, successResult:Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 524
    .local v2, errorResult:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, s:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 530
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 536
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 543
    .end local v0           #dataOutputStream:Ljava/io/DataOutputStream;
    .end local v2           #errorResult:Ljava/io/BufferedReader;
    .end local v5           #s:Ljava/lang/String;
    .end local v6           #successResult:Ljava/io/BufferedReader;
    :goto_2
    return v4

    .line 525
    .restart local v0       #dataOutputStream:Ljava/io/DataOutputStream;
    .restart local v2       #errorResult:Ljava/io/BufferedReader;
    .restart local v5       #s:Ljava/lang/String;
    .restart local v6       #successResult:Ljava/io/BufferedReader;
    :cond_1
    const-string/jumbo v7, "Result: "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    const-string/jumbo v7, "Success"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 527
    const/4 v4, 0x0

    goto :goto_0

    .line 531
    :cond_2
    const-string/jumbo v7, "Failure"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 532
    const/4 v4, -0x1

    .line 534
    :cond_3
    const-string/jumbo v7, "Result Error: "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 537
    .end local v0           #dataOutputStream:Ljava/io/DataOutputStream;
    .end local v2           #errorResult:Ljava/io/BufferedReader;
    .end local v5           #s:Ljava/lang/String;
    .end local v6           #successResult:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 538
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 539
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 540
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
