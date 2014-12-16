.class public Lcom/cnlaunch/framework/common/PreferencesManager;
.super Ljava/lang/Object;
.source "PreferencesManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath",
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static instance:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private static shareName:Ljava/lang/String;


# instance fields
.field private DATA_URL:Ljava/lang/String;

.field private SHARED_PREFS:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private preferences:Landroid/content/SharedPreferences;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "SHARE_DATA"

    sput-object v0, Lcom/cnlaunch/framework/common/PreferencesManager;->shareName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    sget-object v0, Lcom/cnlaunch/framework/common/PreferencesManager;->shareName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/framework/common/PreferencesManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "shareName"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/cnlaunch/framework/common/PreferencesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->tag:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "/data/data/"

    iput-object v0, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->DATA_URL:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "/shared_prefs"

    iput-object v0, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->SHARED_PREFS:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->mContext:Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    .line 62
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    sget-object v0, Lcom/cnlaunch/framework/common/PreferencesManager;->shareName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/cnlaunch/framework/common/PreferencesManager;
    .locals 2
    .parameter "context"
    .parameter "shareName"

    .prologue
    .line 86
    sget-object v0, Lcom/cnlaunch/framework/common/PreferencesManager;->instance:Lcom/cnlaunch/framework/common/PreferencesManager;

    if-nez v0, :cond_1

    .line 87
    const-class v1, Lcom/cnlaunch/framework/common/PreferencesManager;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/cnlaunch/framework/common/PreferencesManager;->instance:Lcom/cnlaunch/framework/common/PreferencesManager;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/cnlaunch/framework/common/PreferencesManager;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/framework/common/PreferencesManager;->instance:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    sget-object v0, Lcom/cnlaunch/framework/common/PreferencesManager;->instance:Lcom/cnlaunch/framework/common/PreferencesManager;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearAll()V
    .locals 6

    .prologue
    .line 302
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/cnlaunch/framework/common/PreferencesManager;->shareName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, fileName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->DATA_URL:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->SHARED_PREFS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    .local v3, path:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;F)F
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 263
    .local v4, obj:Ljava/lang/Object;
    const-string/jumbo v2, ""

    .line 265
    .local v2, fieldName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 266
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 267
    .local v3, fields:[Ljava/lang/reflect/Field;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 281
    .end local v3           #fields:[Ljava/lang/reflect/Field;
    .end local v4           #obj:Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 267
    .restart local v3       #fields:[Ljava/lang/reflect/Field;
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_0
    aget-object v1, v3, v5

    .line 268
    .local v1, f:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 269
    const-string/jumbo v7, "serialVersionUID"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 270
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 271
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 267
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 274
    .end local v1           #f:Ljava/lang/reflect/Field;
    .end local v3           #fields:[Ljava/lang/reflect/Field;
    .end local v4           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 276
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 278
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, defValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defLang"

    .prologue
    .line 293
    sget-object v0, Lcom/cnlaunch/framework/common/PreferencesManager;->instance:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "Lang"

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTheme(I)I
    .locals 2
    .parameter "defThemeId"

    .prologue
    .line 285
    sget-object v0, Lcom/cnlaunch/framework/common/PreferencesManager;->instance:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "Theme"

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, t:Ljava/lang/Object;,"TT;"
    :try_start_0
    const-string/jumbo v5, ""

    .line 171
    .local v5, methodName:Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 172
    .local v8, savekey:Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 173
    .local v7, saveValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 174
    .local v3, edit:Landroid/content/SharedPreferences$Editor;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 176
    .local v1, cls:Ljava/lang/Class;
    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 179
    .local v6, methods:[Ljava/lang/reflect/Method;
    array-length v11, v6

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v11, :cond_1

    .line 195
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 204
    .end local v1           #cls:Ljava/lang/Class;
    .end local v3           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v5           #methodName:Ljava/lang/String;
    .end local v6           #methods:[Ljava/lang/reflect/Method;
    .end local v7           #saveValue:Ljava/lang/String;
    .end local v8           #savekey:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 179
    .restart local v1       #cls:Ljava/lang/Class;
    .restart local v3       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v5       #methodName:Ljava/lang/String;
    .restart local v6       #methods:[Ljava/lang/reflect/Method;
    .restart local v7       #saveValue:Ljava/lang/String;
    .restart local v8       #savekey:Ljava/lang/String;
    :cond_1
    aget-object v4, v6, v10

    .line 181
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 182
    if-eqz v5, :cond_3

    const-string/jumbo v12, "get"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 184
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 185
    .local v9, value:Ljava/lang/Object;
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 186
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 189
    :cond_2
    const-string/jumbo v12, "get"

    const-string/jumbo v13, ""

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 190
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/framework/common/PreferencesManager;->tag:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "key: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " value: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 179
    .end local v9           #value:Ljava/lang/Object;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 197
    .end local v1           #cls:Ljava/lang/Class;
    .end local v3           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #methodName:Ljava/lang/String;
    .end local v6           #methods:[Ljava/lang/reflect/Method;
    .end local v7           #saveValue:Ljava/lang/String;
    .end local v8           #savekey:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 198
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 199
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 200
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 201
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 202
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public put(Ljava/lang/String;F)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 135
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    :cond_1
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 124
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    :cond_1
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 146
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    :cond_1
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 113
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    :cond_1
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, value:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 157
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    :cond_1
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/cnlaunch/framework/common/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 102
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    :cond_1
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 2
    .parameter "Language"

    .prologue
    .line 297
    sget-object v0, Lcom/cnlaunch/framework/common/PreferencesManager;->instance:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "Lang"

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .parameter "themeId"

    .prologue
    .line 289
    sget-object v0, Lcom/cnlaunch/framework/common/PreferencesManager;->instance:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "Theme"

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;I)V

    .line 290
    return-void
.end method
