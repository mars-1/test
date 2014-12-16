.class public Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;
.super Landroid/os/AsyncTask;
.source "PublicCircleAsy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy$RecommendAsy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataDir:Ljava/lang/String;

.field private mPaths:Ljava/lang/String;

.field private mSdPaths:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 12
    .parameter "paths"
    .parameter "mContext"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    const-string/jumbo v8, ""

    iput-object v8, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->mPaths:Ljava/lang/String;

    .line 28
    const-string/jumbo v8, ""

    iput-object v8, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->mDataDir:Ljava/lang/String;

    .line 31
    const-string/jumbo v8, ""

    sput-object v8, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->LOAD_SO_LIST:Ljava/lang/String;

    .line 32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->mSdPaths:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, bcanBeRemoved:Z
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    const-string/jumbo v8, "SHARE_DATA"

    invoke-virtual {p2, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 40
    .local v7, preferences:Landroid/content/SharedPreferences;
    const-string/jumbo v8, "pdt_type"

    const-string/jumbo v9, "0"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, pdtType:Ljava/lang/String;
    const-string/jumbo v8, "215"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "325"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 44
    :cond_0
    const-string/jumbo v8, "storage"

    invoke-virtual {p2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 46
    .local v3, mStorageManager:Landroid/os/storage/StorageManager;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "getVolumePaths"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 47
    .local v2, mMethodGetPaths:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 48
    .local v4, pathList:[Ljava/lang/String;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #pathList:[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 49
    .restart local v4       #pathList:[Ljava/lang/String;
    array-length v8, v4

    if-le v8, v11, :cond_1

    .line 50
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->mSdPaths:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v2           #mMethodGetPaths:Ljava/lang/reflect/Method;
    .end local v3           #mStorageManager:Landroid/os/storage/StorageManager;
    .end local v4           #pathList:[Ljava/lang/String;
    .end local v5           #pdtType:Ljava/lang/String;
    .end local v7           #preferences:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 60
    .local v6, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v8, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->mDataDir:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->mDataDir:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "/libs/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->mPaths:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->mContext:Landroid/content/Context;

    .line 66
    return-void

    .line 52
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .restart local v3       #mStorageManager:Landroid/os/storage/StorageManager;
    .restart local v5       #pdtType:Ljava/lang/String;
    .restart local v7       #preferences:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #mStorageManager:Landroid/os/storage/StorageManager;
    .end local v5           #pdtType:Ljava/lang/String;
    .end local v7           #preferences:Landroid/content/SharedPreferences;
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v1

    .line 62
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$2(Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->startDignoseMainFunction()V

    return-void
.end method

.method private startDignoseMainFunction()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/ifoer/expedition/ndk/DynamicDepot;

    invoke-direct {v0}, Lcom/ifoer/expedition/ndk/DynamicDepot;-><init>()V

    .line 138
    .local v0, jni:Lcom/ifoer/expedition/ndk/DynamicDepot;
    invoke-virtual {v0}, Lcom/ifoer/expedition/ndk/DynamicDepot;->DiagnoseMain()I

    .line 139
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->mSdPaths:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->mPaths:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->copySo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->mPaths:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->findAllSoFile(Ljava/lang/String;)V

    .line 80
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 86
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 87
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 94
    :goto_1
    const/4 v1, 0x0

    :goto_2
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 101
    :goto_3
    const/4 v1, 0x0

    :goto_4
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_5

    .line 109
    :goto_5
    const/4 v1, 0x0

    :goto_6
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_7

    .line 117
    .end local v1           #i:I
    :cond_0
    :try_start_0
    new-instance v2, Lcom/ifoer/expedition/ndk/StdJni;

    invoke-direct {v2}, Lcom/ifoer/expedition/ndk/StdJni;-><init>()V

    .line 118
    .local v2, stdJni:Lcom/ifoer/expedition/ndk/StdJni;
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->mSdPaths:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ifoer/expedition/ndk/StdJni;->setCallbackEnv(Ljava/lang/String;)I

    .line 119
    new-instance v3, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy$1;

    invoke-direct {v3, p0}, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy$1;-><init>(Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;)V

    .line 128
    invoke-virtual {v3}, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy$1;->start()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2           #stdJni:Lcom/ifoer/expedition/ndk/StdJni;
    :goto_7
    return-void

    .line 88
    .restart local v1       #i:I
    :cond_1
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "libCOMM_ABSTRACT_LAYER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 90
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->LOAD_SO_LIST:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\\0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->LOAD_SO_LIST:Ljava/lang/String;

    goto :goto_1

    .line 87
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_3
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "libSTD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 96
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 97
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->LOAD_SO_LIST:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\\0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->LOAD_SO_LIST:Ljava/lang/String;

    goto/16 :goto_3

    .line 94
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 102
    :cond_5
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "libDIAG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 103
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 104
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->LOAD_SO_LIST:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\\0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->LOAD_SO_LIST:Ljava/lang/String;

    goto/16 :goto_5

    .line 101
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 110
    :cond_7
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "libCOMM_ABSTRACT_LAYER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "libSTD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "libDIAG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 111
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 112
    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->LOAD_SO_LIST:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\\0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->LOAD_SO_LIST:Ljava/lang/String;

    .line 109
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 130
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "NativeMethodNoFind"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    const-string/jumbo v3, "Sanda"

    const-string/jumbo v4, "java.lang.UnsatisfiedLinkError:Native method not found->stdJni"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 72
    return-void
.end method
