.class public Lcom/cnlaunch/newgolo/model/LoginMgr;
.super Ljava/lang/Object;
.source "LoginMgr.java"


# static fields
.field private static final CONTENT:Ljava/lang/String; = "login_content"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized deleteLoginInfo(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 20
    const-class v3, Lcom/cnlaunch/newgolo/model/LoginMgr;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 21
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 22
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "login_content"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v3

    return-void

    .line 20
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;
    .locals 8
    .parameter "context"

    .prologue
    .line 41
    const-class v5, Lcom/cnlaunch/newgolo/model/LoginMgr;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 43
    .local v3, sp:Landroid/content/SharedPreferences;
    :try_start_1
    sget-object v4, Lcom/cnlaunch/newgolo/GoloConfig;->KEY:Ljava/lang/String;

    const-string/jumbo v6, "login_content"

    const-string/jumbo v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/cnlaunch/golo3/utils/SignatureTool;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, content:Ljava/lang/String;
    new-instance v2, Lcom/cnlaunch/newgolo/model/LoginEntity;

    invoke-direct {v2, v0}, Lcom/cnlaunch/newgolo/model/LoginEntity;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .end local v0           #content:Ljava/lang/String;
    :goto_0
    monitor-exit v5

    return-object v2

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 41
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized saveLoginInfo(Landroid/content/Context;Lcom/cnlaunch/newgolo/model/LoginEntity;)V
    .locals 7
    .parameter "context"
    .parameter "entity"

    .prologue
    .line 27
    const-class v5, Lcom/cnlaunch/newgolo/model/LoginMgr;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 29
    .local v3, sp:Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    .line 30
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 31
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v4, Lcom/cnlaunch/newgolo/GoloConfig;->KEY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/LoginEntity;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/cnlaunch/golo3/utils/SignatureTool;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, content:Ljava/lang/String;
    const-string/jumbo v4, "login_content"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 27
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
