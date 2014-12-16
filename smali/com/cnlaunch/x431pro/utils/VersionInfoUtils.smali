.class public Lcom/cnlaunch/x431pro/utils/VersionInfoUtils;
.super Ljava/lang/Object;
.source "VersionInfoUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needUpdateAPKVerInfo(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 86
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "isSend_Apk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static needUpdateBootVerInfo(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "isSend_Boot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static needUpdateDownloadbinVerInfo(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "isSend_Downloadbin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAllVerState(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "state"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "isSend_Downloadbin"

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 24
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "isSend_Boot"

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 25
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "isSend_Apk"

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 27
    return-void
.end method

.method public static setApkVerState(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "state"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "isSend_Apk"

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public static setBootVerState(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "state"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "isSend_Boot"

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method public static setDownloadbinVerState(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "state"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "isSend_Downloadbin"

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 37
    return-void
.end method
