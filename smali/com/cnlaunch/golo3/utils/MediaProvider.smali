.class public Lcom/cnlaunch/golo3/utils/MediaProvider;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCommonFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 34
    const-string/jumbo v0, "/file"

    invoke-static {v0, p0}, Lcom/cnlaunch/golo3/utils/MediaProvider;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter "parent"
    .parameter "fileName"

    .prologue
    .line 42
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v4, "/cnlaunch/xpro431/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 45
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2

    .line 46
    const/4 v0, 0x0

    .line 55
    :cond_1
    return-object v0

    .line 49
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v0, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 51
    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .restart local v0       #file:Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static createHeadFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 38
    const-string/jumbo v0, "/head"

    invoke-static {v0, p0}, Lcom/cnlaunch/golo3/utils/MediaProvider;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createPictureFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 26
    const-string/jumbo v0, "/picture"

    invoke-static {v0, p0}, Lcom/cnlaunch/golo3/utils/MediaProvider;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createThumbFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 22
    const-string/jumbo v0, "/thumb"

    invoke-static {v0, p0}, Lcom/cnlaunch/golo3/utils/MediaProvider;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 30
    const-string/jumbo v0, "/video"

    invoke-static {v0, p0}, Lcom/cnlaunch/golo3/utils/MediaProvider;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createVoiceFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 18
    const-string/jumbo v0, "/voice"

    invoke-static {v0, p0}, Lcom/cnlaunch/golo3/utils/MediaProvider;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
