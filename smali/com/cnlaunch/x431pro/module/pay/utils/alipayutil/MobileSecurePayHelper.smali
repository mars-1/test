.class public Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;
.super Ljava/lang/Object;
.source "MobileSecurePayHelper.java"


# static fields
.field public static final server_url:Ljava/lang/String; = "https://msp.alipay.com/x.htm"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mProgress:Landroid/app/ProgressDialog;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->tag:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;

    .line 42
    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    .line 297
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$1;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->closeProgress()V

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private closeProgress()V
    .locals 2

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "context"
    .parameter "archiveFilePath"

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 190
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 191
    .local v0, apkInfo:Landroid/content/pm/PackageInfo;
    return-object v0
.end method


# virtual methods
.method public checkNewUpdate(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 5
    .parameter "packageInfo"

    .prologue
    .line 201
    const/4 v2, 0x0

    .line 204
    .local v2, url:Ljava/lang/String;
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->sendCheckNewUpdate(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 206
    .local v1, resp:Lorg/json/JSONObject;
    const-string/jumbo v3, "needUpdate"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    const-string/jumbo v3, "updateUrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 213
    .end local v1           #resp:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public detectMobile_sp()Z
    .locals 8

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->isMobile_spExist()Z

    move-result v2

    .line 55
    .local v2, isMobile_spExist:Z
    if-nez v2, :cond_0

    .line 58
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 59
    .local v0, cacheDir:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "/temp.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, cachePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "alipay_plugin_20120428msp.apk"

    invoke-virtual {p0, v3, v4, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->retrieveApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-string/jumbo v5, "\u6b63\u5728\u68c0\u6d4b\u5b89\u5168\u652f\u4ed8\u670d\u52a1\u7248\u672c"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/BaseHelper;->showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;

    .line 66
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$2;

    invoke-direct {v4, p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$2;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 86
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v1           #cachePath:Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public isMobile_spExist()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 132
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 133
    .local v1, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 134
    .local v3, pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 140
    :goto_1
    return v4

    .line 135
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 136
    .local v2, pI:Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "com.alipay.android.app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    const/4 v4, 0x1

    goto :goto_1

    .line 134
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public retrieveApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "fileName"
    .parameter "path"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 158
    .local v0, bRet:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 160
    .local v5, is:Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 162
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 164
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v6, v7, [B

    .line 165
    .local v6, temp:[B
    const/4 v4, 0x0

    .line 166
    .local v4, i:I
    :goto_0
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_0

    .line 170
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 171
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 173
    const/4 v0, 0x1

    .line 179
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #i:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #temp:[B
    :goto_1
    return v0

    .line 167
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #i:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #temp:[B
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #i:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #temp:[B
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public retrieveApkFromNet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "strurl"
    .parameter "filename"

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, bRet:Z
    :try_start_0
    new-instance v2, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/NetworkManager;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/NetworkManager;-><init>(Landroid/content/Context;)V

    .line 277
    .local v2, nM:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/NetworkManager;
    invoke-virtual {v2, p1, p2, p3}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/NetworkManager;->urlDownloadToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 281
    .end local v2           #nM:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/NetworkManager;
    :goto_0
    return v0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCheckNewUpdate(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .parameter "versionName"

    .prologue
    .line 223
    const/4 v2, 0x0

    .line 225
    .local v2, objResp:Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 226
    .local v3, req:Lorg/json/JSONObject;
    const-string/jumbo v4, "action"

    const-string/jumbo v5, "update"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 229
    .local v0, data:Lorg/json/JSONObject;
    const-string/jumbo v4, "platform"

    const-string/jumbo v5, "android"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string/jumbo v4, "version"

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string/jumbo v4, "partner"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->sendRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 240
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v3           #req:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .parameter "content"

    .prologue
    .line 250
    new-instance v3, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/NetworkManager;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/NetworkManager;-><init>(Landroid/content/Context;)V

    .line 251
    .local v3, nM:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/NetworkManager;
    const/4 v1, 0x0

    .line 253
    .local v1, jsonResponse:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 254
    .local v4, response:Ljava/lang/String;
    :try_start_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :try_start_1
    const-string/jumbo v5, "https://msp.alipay.com/x.htm"

    invoke-virtual {v3, p1, v5}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/NetworkManager;->SendAndWaitResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 254
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .local v2, jsonResponse:Lorg/json/JSONObject;
    move-object v1, v2

    .line 262
    .end local v2           #jsonResponse:Lorg/json/JSONObject;
    .restart local v1       #jsonResponse:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 254
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showInstallConfirmDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "cachePath"

    .prologue
    .line 96
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, tDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f020398

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 101
    const v1, 0x7f0704d6

    .line 102
    new-instance v2, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$3;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;Ljava/lang/String;Landroid/content/Context;)V

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    new-instance v2, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$4;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$4;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;)V

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 124
    return-void
.end method
