.class public Lcom/cnlaunch/golo3/ui/folder/FolderActivity;
.super Landroid/app/ListActivity;
.source "FolderActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderActivity"


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

.field private mPath:Landroid/widget/TextView;

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

.field private rootPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->items:Ljava/util/List;

    .line 29
    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->paths:Ljava/util/List;

    .line 30
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->getSDDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->rootPath:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private getFileDir(Ljava/lang/String;)V
    .locals 8
    .parameter "filePath"

    .prologue
    .line 44
    :try_start_0
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->mPath:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->items:Ljava/util/List;

    .line 46
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->paths:Ljava/util/List;

    .line 47
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 49
    .local v3, files:[Ljava/io/File;
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->rootPath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->items:Ljava/util/List;

    const-string/jumbo v6, "b1"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->paths:Ljava/util/List;

    iget-object v6, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->rootPath:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->items:Ljava/util/List;

    const-string/jumbo v6, "b2"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->paths:Ljava/util/List;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v5, v3

    if-lt v4, v5, :cond_1

    .line 65
    new-instance v5, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;

    iget-object v6, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->items:Ljava/util/List;

    iget-object v7, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->paths:Ljava/util/List;

    invoke-direct {v5, p0, v6, v7}, Lcom/cnlaunch/golo3/ui/folder/FolderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v5}, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    .end local v1           #f:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i:I
    :goto_1
    return-void

    .line 56
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #files:[Ljava/io/File;
    .restart local v4       #i:I
    :cond_1
    aget-object v2, v3, v4

    .line 61
    .local v2, file:Ljava/io/File;
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->items:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v5, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->paths:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    .end local v1           #f:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i:I
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 68
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    const-string/jumbo v5, "Sanda"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "File Error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public checkSDcard()Z
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, sdStutusString:Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x1

    .line 131
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

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, fileNameString:Ljava/lang/String;
    const-string/jumbo v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, endNameString:Ljava/lang/String;
    const-string/jumbo v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v2

    .line 105
    :cond_1
    const-string/jumbo v3, "txt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final getSDDir()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    const-string/jumbo v2, "FolderActivity"

    const-string/jumbo v3, "getSDDir"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->checkSDcard()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    const-string/jumbo v2, "no sdcard"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 116
    const-string/jumbo v0, ""

    .line 122
    :goto_0
    return-object v0

    .line 119
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    .local v0, SD_DIR:Ljava/lang/String;
    goto :goto_0

    .line 121
    .end local v0           #SD_DIR:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 122
    .local v1, e:Ljava/lang/Exception;
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->push(Landroid/app/Activity;)V

    .line 37
    sget v0, Lcom/cnlaunch/golo3/message/R$layout;->fileselect:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->setContentView(I)V

    .line 38
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->mPath:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->mPath:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->rootPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->getFileDir(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->pop(Landroid/app/Activity;)V

    .line 138
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 139
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 77
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->paths:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".android_secure"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    .end local v3           #file:Ljava/io/File;
    :goto_0
    return-void

    .line 82
    .restart local v3       #file:Ljava/io/File;
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->paths:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->getFileDir(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v3           #file:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 92
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #file:Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v1, data:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v4, "file"

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->setResult(ILandroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
