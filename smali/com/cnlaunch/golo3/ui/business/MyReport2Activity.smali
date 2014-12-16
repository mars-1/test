.class public Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;
.super Landroid/app/ListActivity;
.source "MyReport2Activity.java"


# static fields
.field public static final FAVORITE_COMPLETE:I = 0x2715

.field private static final TAG:Ljava/lang/String; = "MyReport2Activity"


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBack:Landroid/widget/ImageButton;

.field private mPath:Landroid/widget/TextView;

.field private mtopBarTitle:Landroid/widget/TextView;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private rootPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->items:Ljava/util/List;

    .line 31
    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->paths:Ljava/util/List;

    .line 28
    return-void
.end method

.method public static getDefaultExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, bcanBeRemoved:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, externPath:Ljava/lang/String;
    move-object v6, v2

    .line 196
    .local v6, phonePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 198
    if-nez v0, :cond_0

    .line 225
    .end local v2           #externPath:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 201
    .restart local v2       #externPath:Ljava/lang/String;
    :cond_0
    if-eqz p0, :cond_2

    .line 205
    const-string/jumbo v7, "storage"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 204
    check-cast v4, Landroid/os/storage/StorageManager;

    .line 207
    .local v4, mStorageManager:Landroid/os/storage/StorageManager;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 208
    const-string/jumbo v8, "getVolumePaths"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    .line 207
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 209
    .local v3, mMethodGetPaths:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 210
    .local v5, paths:[Ljava/lang/String;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #paths:[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 211
    .restart local v5       #paths:[Ljava/lang/String;
    array-length v7, v5

    if-le v7, v10, :cond_1

    .line 212
    const/4 v7, 0x1

    aget-object v6, v5, v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    move-object v2, v6

    .line 213
    goto :goto_0

    .line 214
    .end local v3           #mMethodGetPaths:Ljava/lang/reflect/Method;
    .end local v5           #paths:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 225
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v4           #mStorageManager:Landroid/os/storage/StorageManager;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 216
    .restart local v4       #mStorageManager:Landroid/os/storage/StorageManager;
    :catch_1
    move-exception v1

    .line 217
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 218
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 219
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 220
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 221
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method

.method private getFileDir(Ljava/lang/String;)V
    .locals 9
    .parameter "filePath"

    .prologue
    .line 60
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->mPath:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->items:Ljava/util/List;

    .line 62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->paths:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 67
    .local v2, files:[Ljava/io/File;
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->rootPath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 68
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->items:Ljava/util/List;

    const-string/jumbo v6, "b1"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->paths:Ljava/util/List;

    iget-object v6, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->rootPath:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->items:Ljava/util/List;

    const-string/jumbo v6, "b2"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->paths:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-lt v3, v5, :cond_1

    .line 83
    new-instance v5, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;

    iget-object v6, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->items:Ljava/util/List;

    iget-object v7, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->paths:Ljava/util/List;

    invoke-direct {v5, p0, v6, v7}, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v5}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i:I
    :goto_1
    return-void

    .line 75
    .restart local v2       #files:[Ljava/io/File;
    .restart local v3       #i:I
    :cond_1
    aget-object v1, v2, v3

    .line 76
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 76
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, reporeType:Ljava/lang/String;
    const-string/jumbo v5, "txt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    :cond_2
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->items:Ljava/util/List;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->paths:Ljava/util/List;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i:I
    .end local v4           #reporeType:Ljava/lang/String;
    :cond_4
    sget v5, Lcom/cnlaunch/golo3/message/R$string;->no_car_report:I

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 87
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->finish()V

    goto :goto_1
.end method


# virtual methods
.method public checkSDcard()Z
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, sdStutusString:Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const/4 v1, 0x1

    .line 171
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkShapeFile(Ljava/io/File;)Z
    .locals 5
    .parameter "file"

    .prologue
    const/4 v2, 0x1

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, fileNameString:Ljava/lang/String;
    const-string/jumbo v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 109
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, endNameString:Ljava/lang/String;
    const-string/jumbo v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v2

    .line 117
    :cond_1
    const-string/jumbo v3, "txt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final getSDDir()Ljava/lang/String;
    .locals 6

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->checkSDcard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    sget v3, Lcom/cnlaunch/golo3/message/R$string;->notSdCard:I

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 127
    const-string/jumbo v0, ""

    .line 162
    :goto_0
    return-object v0

    .line 129
    :cond_0
    const-string/jumbo v0, ""

    .line 130
    .local v0, SD_DIR:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 133
    :try_start_0
    const-string/jumbo v3, "com.cnlaunch.padII"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 135
    const-string/jumbo v4, "/cnlaunch/X-431 PAD II/images"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_1
    :goto_1
    const-string/jumbo v3, "MyReport2Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SD_DIRSD_DIR===="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const-string/jumbo v0, ""

    goto :goto_0

    .line 136
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "com.cnlaunch.x431.pro3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 138
    const-string/jumbo v4, "/cnlaunch/images"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    goto :goto_1

    :cond_3
    const-string/jumbo v3, "com.cnlaunch.maximus"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 141
    const-string/jumbo v4, "/cnlaunch/Maximus2.0/images"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    goto :goto_1

    :cond_4
    const-string/jumbo v3, "com.cnlaunch.ScanPad071"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    const-string/jumbo v4, "/cnlaunch/ScanPad071/images"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    goto/16 :goto_1

    :cond_5
    const-string/jumbo v3, "com.cnlaunch.ScanPad101"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 147
    const-string/jumbo v4, "/cnlaunch/ScanPad101/images"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    goto/16 :goto_1

    :cond_6
    const-string/jumbo v3, "com.cnlaunch.MaxGo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    const-string/jumbo v4, "/cnlaunch/MaxGo/images"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    goto/16 :goto_1

    :cond_7
    const-string/jumbo v3, "com.ifoer.expedition.pro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->getDefaultExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v4, "/cnlaunch/images"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    goto/16 :goto_1

    .line 156
    :cond_8
    sget v3, Lcom/cnlaunch/golo3/message/R$string;->no_car_report:I

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->push(Landroid/app/Activity;)V

    .line 42
    sget v0, Lcom/cnlaunch/golo3/message/R$layout;->im_myreport:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->getSDDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->rootPath:Ljava/lang/String;

    .line 44
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->mPath:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->mPath:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->backBtn:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->mBack:Landroid/widget/ImageButton;

    .line 46
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->topBarTitle:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->mtopBarTitle:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->mtopBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->my_report:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->rootPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->getFileDir(Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->progressDialog:Landroid/app/ProgressDialog;

    .line 50
    iget-object v0, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->mBack:Landroid/widget/ImageButton;

    new-instance v1, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity$1;-><init>(Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->pop(Landroid/app/Activity;)V

    .line 185
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 186
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 94
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->paths:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->paths:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->getFileDir(Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/cnlaunch/newgolo/activity/MessageActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v1, data:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v3, "file"

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 102
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->setResult(ILandroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->finish()V

    goto :goto_0
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 178
    iget-object v0, p0, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;->progressDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/cnlaunch/golo3/message/R$layout;->loading_layout:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 180
    return-void
.end method
