.class public Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;
.super Ljava/lang/Object;
.source "DiagSharedPreferences.java"


# static fields
.field public static final DIAG_SOFT_PATH_FILE:Ljava/lang/String; = "diag_soft_path"

.field private static editor:Landroid/content/SharedPreferences$Editor;

.field private static mMySharedPreferences:Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;

.field private static mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->mMySharedPreferences:Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;-><init>()V

    sput-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->mMySharedPreferences:Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;

    .line 18
    :cond_0
    sget-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->mMySharedPreferences:Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;

    return-object v0
.end method


# virtual methods
.method public getEOBD2Path(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "sn"

    .prologue
    .line 29
    .line 30
    const-string/jumbo v0, "diag_soft_path"

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 31
    sget-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_EOBD2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "sn"

    .prologue
    const/4 v2, 0x0

    .line 22
    .line 23
    const-string/jumbo v0, "diag_soft_path"

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putEOBD2Path(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "sn"
    .parameter "path"

    .prologue
    .line 44
    .line 45
    const-string/jumbo v0, "diag_soft_path"

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 46
    sget-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 47
    sget-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_EOBD2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    sget-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    return-void
.end method

.method public putPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "sn"
    .parameter "path"

    .prologue
    .line 35
    .line 36
    const-string/jumbo v0, "diag_soft_path"

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 37
    sget-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 38
    sget-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    sget-object v0, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "-putPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/golo3/utils/DiagSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V

    .line 41
    return-void
.end method
