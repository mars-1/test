.class public Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;
.super Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;
.source "DiagnoseWaitDialog.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field private deviceVersion:Ljava/lang/String;

.field private downloadBinPath:Ljava/lang/String;

.field private downloadVersion:Ljava/lang/String;

.field private isAgain:Z

.field private mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

.field private mDownloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

.field private mHandler:Landroid/os/Handler;

.field onDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

.field private serialNo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZIILcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;)V
    .locals 3
    .parameter "ctx"
    .parameter "canNotCancel"
    .parameter "title"
    .parameter "tipMsg"
    .parameter "mCallback"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;-><init>(Landroid/content/Context;ZII)V

    .line 35
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mDownloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    .line 36
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->isAgain:Z

    .line 75
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->onDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    .line 121
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    .line 43
    new-instance v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->onDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    .line 44
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;-><init>(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Lcom/cnlaunch/physics/impl/IPhysics;)V

    .line 43
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mDownloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;)V
    .locals 3
    .parameter "ctx"
    .parameter "canNotCancel"
    .parameter "title"
    .parameter "tipMsg"
    .parameter "mCallback"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mDownloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    .line 36
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->isAgain:Z

    .line 75
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->onDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    .line 121
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mHandler:Landroid/os/Handler;

    .line 50
    iput-object p5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    .line 51
    new-instance v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->onDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    .line 52
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;-><init>(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Lcom/cnlaunch/physics/impl/IPhysics;)V

    .line 51
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mDownloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->isAgain:Z

    return v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->isAgain:Z

    return-void
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->downloadBinPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mDownloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->deviceVersion:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->downloadVersion:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->deviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->downloadVersion:Ljava/lang/String;

    return-object v0
.end method

.method private getFirmwareVersion()Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0x56

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 153
    const/4 v6, 0x0

    .line 155
    .local v6, version:Ljava/lang/StringBuffer;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->serialNo:Ljava/lang/String;

    invoke-static {v8}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVehiclesZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, filePath:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "Diagnostic/Configure/Download/DOWNLOAD.ini"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->downloadBinPath:Ljava/lang/String;

    .line 158
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-object v7

    .line 162
    :cond_1
    const/4 v4, 0x0

    .line 164
    .local v4, fileStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4           #fileStream:Ljava/io/FileInputStream;
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .restart local v4       #fileStream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 171
    .local v5, properties:Ljava/util/Properties;
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    const-string/jumbo v8, "Version"

    invoke-virtual {v5, v8}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 177
    new-instance v6, Ljava/lang/StringBuffer;

    .end local v6           #version:Ljava/lang/StringBuffer;
    const-string/jumbo v7, "Version"

    invoke-virtual {v5, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v6       #version:Ljava/lang/StringBuffer;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-eq v7, v11, :cond_2

    .line 179
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x76

    if-eq v7, v8, :cond_2

    .line 180
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 182
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 165
    .end local v4           #fileStream:Ljava/io/FileInputStream;
    .end local v5           #properties:Ljava/util/Properties;
    :catch_0
    move-exception v1

    .line 166
    .local v1, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v1           #e1:Ljava/io/FileNotFoundException;
    .restart local v4       #fileStream:Ljava/io/FileInputStream;
    .restart local v5       #properties:Ljava/util/Properties;
    :catch_1
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getDownloadBinVersion()V
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "serialNo"

    .line 63
    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->serialNo:Ljava/lang/String;

    .line 65
    sget-boolean v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->isAgain:Z

    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mDownloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->serialNo:Ljava/lang/String;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->getDPUVersionAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public updateMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 56
    const v1, 0x102000b

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    return-void
.end method
