.class public Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;
.super Ljava/lang/Object;
.source "HelpOperatInfo.java"


# static fields
.field static helpDataDir:Ljava/lang/String; = null

.field private static instance:Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo; = null

.field private static final strFileName:Ljava/lang/String; = "helpOperateInfo.ini"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/cnlaunch/mycar/help/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->helpDataDir:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->helpDataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_0
    return-void
.end method

.method public static WriteInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "strAtt"
    .parameter "value"

    .prologue
    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->WriteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static WriteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "strLanguage"
    .parameter "strAtt"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 21
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->helpDataDir:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 26
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->helpDataDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "helpOperateInfo.ini"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 30
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_1
    new-instance v3, Lcom/cnlaunch/x431pro/activity/help/IniEditor;

    invoke-direct {v3}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;-><init>()V

    .line 38
    .local v3, inieditor:Lcom/cnlaunch/x431pro/activity/help/IniEditor;
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->load(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    invoke-virtual {v3, p0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->hasSection(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 44
    invoke-virtual {v3, p0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->addSection(Ljava/lang/String;)Z

    .line 47
    :cond_2
    invoke-virtual {v3, p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_2
    invoke-virtual {v3, v2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->save(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 55
    const/4 v4, 0x1

    .end local v3           #inieditor:Lcom/cnlaunch/x431pro/activity/help/IniEditor;
    :goto_0
    return v4

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 39
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #inieditor:Lcom/cnlaunch/x431pro/activity/help/IniEditor;
    :catch_1
    move-exception v0

    .line 40
    .local v0, e:Ljava/io/IOException;
    goto :goto_0

    .line 51
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 52
    .restart local v0       #e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static getInstance()Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->instance:Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;

    if-nez v0, :cond_1

    .line 98
    const-class v1, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->instance:Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->instance:Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;

    .line 98
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_1
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->instance:Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static readInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "strAtt"

    .prologue
    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->readInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "strLanguage"
    .parameter "strAtt"

    .prologue
    .line 65
    const-string/jumbo v4, ""

    .line 66
    .local v4, ret:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->helpDataDir:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 70
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->helpDataDir:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "helpOperateInfo.ini"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 74
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_1
    new-instance v3, Lcom/cnlaunch/x431pro/activity/help/IniEditor;

    invoke-direct {v3}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;-><init>()V

    .line 81
    .local v3, inieditor:Lcom/cnlaunch/x431pro/activity/help/IniEditor;
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->load(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    invoke-virtual {v3, p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 86
    .end local v3           #inieditor:Lcom/cnlaunch/x431pro/activity/help/IniEditor;
    .end local v4           #ret:Ljava/lang/String;
    .local v5, ret:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 75
    .end local v5           #ret:Ljava/lang/String;
    .restart local v4       #ret:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v5, v4

    .line 76
    .end local v4           #ret:Ljava/lang/String;
    .restart local v5       #ret:Ljava/lang/String;
    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #ret:Ljava/lang/String;
    .restart local v3       #inieditor:Lcom/cnlaunch/x431pro/activity/help/IniEditor;
    .restart local v4       #ret:Ljava/lang/String;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    move-object v5, v4

    .line 83
    .end local v4           #ret:Ljava/lang/String;
    .restart local v5       #ret:Ljava/lang/String;
    goto :goto_0
.end method
