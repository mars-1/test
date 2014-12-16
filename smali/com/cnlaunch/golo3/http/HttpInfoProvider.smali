.class public Lcom/cnlaunch/golo3/http/HttpInfoProvider;
.super Ljava/lang/Object;
.source "HttpInfoProvider.java"


# static fields
.field private static final ALARM_GET_ITEMS:Ljava/lang/String; = "http://192.168.85.213/golo-web"

.field public static final EN:Ljava/lang/String; = "en"

.field private static final IM_SERVER_URL:Ljava/lang/String; = null

.field public static final JSON_ERROR:I = -0x2

.field public static final NET_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HttpInfoProvider"

.field public static final ZH:Ljava/lang/String; = "zh"

.field private static instance:Lcom/cnlaunch/golo3/http/HttpInfoProvider;

.field private static isShowLog:Ljava/lang/Boolean;

.field public static location:Ljava/lang/String;


# instance fields
.field public dao:Lcom/cnlaunch/golo3/dao/InterfaceDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/cnlaunch/golo3/http/HttpInfoProvider;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;-><init>()V

    sput-object v0, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->instance:Lcom/cnlaunch/golo3/http/HttpInfoProvider;

    .line 65
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->isShowLog:Ljava/lang/Boolean;

    .line 80
    sget-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->IM_SERVER_URL:Ljava/lang/String;

    sput-object v0, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->IM_SERVER_URL:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iget-object v0, p0, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->dao:Lcom/cnlaunch/golo3/dao/InterfaceDao;

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->getInstance()Lcom/cnlaunch/golo3/dao/InterfaceDao;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->dao:Lcom/cnlaunch/golo3/dao/InterfaceDao;

    .line 71
    :cond_0
    return-void
.end method

.method private getBaseRequestUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter "action"

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->IM_SERVER_URL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "/?action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo v1, "&access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    return-object v0
.end method

.method public static getInstance()Lcom/cnlaunch/golo3/http/HttpInfoProvider;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->instance:Lcom/cnlaunch/golo3/http/HttpInfoProvider;

    return-object v0
.end method

.method private getPublicBaseRequestUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter "action"

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->IM_SERVER_URL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "/?action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    return-object v0
.end method

.method private postMethodRequestUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter "action"

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->IM_SERVER_URL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "/?action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    return-object v0
.end method


# virtual methods
.method public getAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    const-string/jumbo v1, "\\?action="

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 192
    .local v0, action:Ljava/lang/String;
    return-object v0

    .line 194
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const-string/jumbo v2, "Url is null"

    .line 195
    const/16 v3, 0x64

    .line 194
    invoke-direct {v1, v2, v3}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public getAllUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 9
    .parameter "url"
    .parameter "user_id"
    .parameter "app_id"
    .parameter "sign"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .line 91
    if-eqz p1, :cond_2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, allUrl:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "app_id"

    sget-object v7, Lcom/cnlaunch/newgolo/GoloConfig;->APP_ID:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v6, "sign"

    invoke-interface {v4, v6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v6, "user_id"

    invoke-interface {v4, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v6, "ver"

    sget-object v7, Lcom/cnlaunch/newgolo/GoloConfig;->APP_VERSION:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "&"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V

    .line 110
    return-object v0

    .line 101
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 102
    .local v2, key:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 103
    .local v5, value:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_1

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1

    .line 112
    .end local v0           #allUrl:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    new-instance v6, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const-string/jumbo v7, "Url is null"

    .line 113
    const/16 v8, 0x64

    .line 112
    invoke-direct {v6, v7, v8}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(Ljava/lang/String;I)V

    throw v6
.end method

.method public getBeforeUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .line 125
    if-eqz p1, :cond_2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, allUrl:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "app_id"

    sget-object v7, Lcom/cnlaunch/newgolo/GoloConfig;->APP_ID:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo v6, "ver"

    sget-object v7, Lcom/cnlaunch/newgolo/GoloConfig;->APP_VERSION:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "&"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 141
    return-object v0

    .line 133
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    .local v2, key:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 135
    .local v5, value:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_1

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1

    .line 143
    .end local v0           #allUrl:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    new-instance v6, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const-string/jumbo v7, "Url is null"

    .line 144
    const/16 v8, 0x64

    .line 143
    invoke-direct {v6, v7, v8}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(Ljava/lang/String;I)V

    throw v6
.end method

.method public getConfigUrls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    .locals 19
    .parameter "app_id"
    .parameter "config_no"
    .parameter "area"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .line 252
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v10, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v17, "config_no"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v17, "area"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/cnlaunch/newgolo/GoloConfig;->CONFIG_URLS:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "/?action=config_service.urls"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 256
    .local v11, sb:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 257
    .local v7, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 258
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_1

    .line 267
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getBeforeUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 268
    invoke-static {v11}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V

    .line 271
    :try_start_0
    invoke-static {}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getInstance()Lcom/cnlaunch/golo3/http/HttpInfoClient;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->sendGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 272
    .local v12, sendGet:Ljava/lang/String;
    invoke-static {v12}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cnlaunch/newgolo/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    new-instance v2, Lcom/cnlaunch/golo3/dto/InterfaceConfig;

    invoke-direct {v2}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;-><init>()V

    .line 278
    .local v2, config:Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 279
    .local v9, object:Lorg/json/JSONObject;
    const-string/jumbo v17, "code"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->setCode(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v17, "msg"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->setMsg(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v17, "0"

    const-string/jumbo v18, "code"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 282
    const-string/jumbo v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 283
    const-string/jumbo v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "null"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 284
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    const-string/jumbo v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 286
    .local v3, dataObject:Lorg/json/JSONObject;
    const-string/jumbo v17, "urls"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 287
    .local v14, urlsArray:Lorg/json/JSONArray;
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_3

    .line 294
    invoke-virtual {v2, v8}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->setUrlList(Ljava/util/List;)V

    .line 295
    const-string/jumbo v17, "version"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->setVersion(Ljava/lang/String;)V

    .line 296
    const-string/jumbo v17, "area"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->setArea(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 302
    .end local v3           #dataObject:Lorg/json/JSONObject;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    .end local v14           #urlsArray:Lorg/json/JSONArray;
    :cond_0
    :goto_2
    return-object v2

    .line 259
    .end local v2           #config:Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    .end local v9           #object:Lorg/json/JSONObject;
    .end local v12           #sendGet:Ljava/lang/String;
    :cond_1
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 260
    .local v6, key:Ljava/lang/String;
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 261
    .local v15, value:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_2

    .line 262
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 258
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 264
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 273
    .end local v6           #key:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 274
    .local v4, e:Lcom/cnlaunch/newgolo/exception/HttpException;
    new-instance v17, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/exception/HttpException;->getCode()I

    move-result v18

    invoke-direct/range {v17 .. v18}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v17

    .line 288
    .end local v4           #e:Lcom/cnlaunch/newgolo/exception/HttpException;
    .restart local v2       #config:Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    .restart local v3       #dataObject:Lorg/json/JSONObject;
    .restart local v8       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    .restart local v9       #object:Lorg/json/JSONObject;
    .restart local v12       #sendGet:Ljava/lang/String;
    .restart local v14       #urlsArray:Lorg/json/JSONArray;
    :cond_3
    :try_start_2
    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 289
    .local v16, valueObject:Lorg/json/JSONObject;
    new-instance v13, Lcom/cnlaunch/golo3/dto/InterfaceUrl;

    invoke-direct {v13}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;-><init>()V

    .line 290
    .local v13, url:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    const-string/jumbo v17, "key"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setKey(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v17, "value"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setValue(Ljava/lang/String;)V

    .line 292
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 298
    .end local v3           #dataObject:Lorg/json/JSONObject;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    .end local v13           #url:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    .end local v14           #urlsArray:Lorg/json/JSONArray;
    .end local v16           #valueObject:Lorg/json/JSONObject;
    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->setUrlList(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 303
    .end local v9           #object:Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    .line 304
    .local v4, e:Lorg/json/JSONException;
    new-instance v17, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/16 v18, -0x2

    invoke-direct/range {v17 .. v18}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v17
.end method

.method public getLoginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/newgolo/data/dao/contact/Contact;
    .locals 11
    .parameter "login_key"
    .parameter "password"
    .parameter "app_id"
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v4, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;

    invoke-direct {v4}, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;-><init>()V

    .line 419
    .local v4, loginInfo:Lcom/cnlaunch/newgolo/data/dao/contact/Contact;
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;-><init>()V

    .line 420
    .local v0, detail:Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;
    iget-object v9, p0, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->dao:Lcom/cnlaunch/golo3/dao/InterfaceDao;

    sget-object v10, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->LOGIN:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->search(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, sb:Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 422
    .local v6, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "login_key"

    invoke-interface {v6, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string/jumbo v9, "password"

    invoke-interface {v6, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string/jumbo v9, "time"

    invoke-interface {v6, v9, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {p0, v7}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getBeforeUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 426
    invoke-static {}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getInstance()Lcom/cnlaunch/golo3/http/HttpInfoClient;

    move-result-object v9

    invoke-virtual {v9, v7, v6}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getBaseInfoDtoByPost(Ljava/lang/String;Ljava/util/Map;)Lcom/cnlaunch/golo3/dto/BaseInfoDto;

    move-result-object v2

    .line 428
    .local v2, info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    if-eqz v2, :cond_1

    .line 429
    invoke-virtual {v2}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->setCode(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v2}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->getMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->setMsg(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v2}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v5

    .line 433
    .local v5, obj:Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 434
    :try_start_0
    const-string/jumbo v9, "user"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 435
    .local v8, user:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 436
    .local v3, jsonUser:Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 437
    const-string/jumbo v9, "mobile"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->setMobile(Ljava/lang/String;)V

    .line 438
    const-string/jumbo v9, "email"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->setEmail(Ljava/lang/String;)V

    .line 440
    const-string/jumbo v9, "set_face_time"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 439
    invoke-virtual {v0, v9}, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->setSet_face_time(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v4, v0}, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->setContactDetail(Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;)V

    .line 442
    const-string/jumbo v9, "user_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->setId(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v9, "user_name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->setName(Ljava/lang/String;)V

    .line 444
    const-string/jumbo v9, "nick_name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->setNickName(Ljava/lang/String;)V

    .line 445
    const-string/jumbo v9, "signature"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->setSignature(Ljava/lang/String;)V

    .line 447
    const-string/jumbo v9, "face_url"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->setPurikuraUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v3           #jsonUser:Lorg/json/JSONObject;
    .end local v8           #user:Ljava/lang/String;
    :cond_0
    return-object v4

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, e:Lorg/json/JSONException;
    new-instance v9, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v9

    .line 455
    .end local v1           #e:Lorg/json/JSONException;
    .end local v5           #obj:Lorg/json/JSONObject;
    :cond_1
    new-instance v9, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v9
.end method

.method public getNationCodeInfos(Ljava/lang/String;)Lcom/cnlaunch/golo3/dto/NationCode;
    .locals 13
    .parameter "lan"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x2

    .line 316
    new-instance v7, Lcom/cnlaunch/golo3/dto/NationCode;

    invoke-direct {v7}, Lcom/cnlaunch/golo3/dto/NationCode;-><init>()V

    .line 317
    .local v7, nationCode:Lcom/cnlaunch/golo3/dto/NationCode;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/NationCodeInfo;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v8, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "lan"

    invoke-interface {v8, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v10, p0, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->dao:Lcom/cnlaunch/golo3/dao/InterfaceDao;

    sget-object v11, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->AREA_GET_COUNTRY_LIST:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->search(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 321
    .local v9, sb:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getBeforeUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 322
    invoke-static {}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getInstance()Lcom/cnlaunch/golo3/http/HttpInfoClient;

    move-result-object v10

    .line 323
    invoke-virtual {v10, v9, v8}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getNationInfoDtoByPost(Ljava/lang/String;Ljava/util/Map;)Lcom/cnlaunch/golo3/dto/NationInfoDto;

    move-result-object v3

    .line 324
    .local v3, info:Lcom/cnlaunch/golo3/dto/NationInfoDto;
    if-eqz v3, :cond_2

    .line 325
    invoke-virtual {v3}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/cnlaunch/golo3/dto/NationCode;->setCode(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v3}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->getMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/cnlaunch/golo3/dto/NationCode;->setMsg(Ljava/lang/String;)V

    .line 327
    const-string/jumbo v10, "0"

    invoke-virtual {v3}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 328
    invoke-virtual {v3}, Lcom/cnlaunch/golo3/dto/NationInfoDto;->getJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 330
    .local v0, array:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 331
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v2, v10, :cond_1

    .line 340
    invoke-virtual {v7, v5}, Lcom/cnlaunch/golo3/dto/NationCode;->setList(Ljava/util/List;)V

    .line 347
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    :cond_0
    return-object v7

    .line 332
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 333
    .local v4, jsonNation:Lorg/json/JSONObject;
    new-instance v6, Lcom/cnlaunch/golo3/dto/NationCodeInfo;

    invoke-direct {v6}, Lcom/cnlaunch/golo3/dto/NationCodeInfo;-><init>()V

    .line 334
    .local v6, nation:Lcom/cnlaunch/golo3/dto/NationCodeInfo;
    const-string/jumbo v10, "ncode"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/cnlaunch/golo3/dto/NationCodeInfo;->setNcode(Ljava/lang/String;)V

    .line 335
    const-string/jumbo v10, "is_sms"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/cnlaunch/golo3/dto/NationCodeInfo;->setIs_sms(Ljava/lang/String;)V

    .line 336
    const-string/jumbo v10, "display"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/cnlaunch/golo3/dto/NationCodeInfo;->setDisplay(Ljava/lang/String;)V

    .line 337
    const-string/jumbo v10, "pre_code"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/cnlaunch/golo3/dto/NationCodeInfo;->setPre_code(Ljava/lang/String;)V

    .line 338
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    .end local v4           #jsonNation:Lorg/json/JSONObject;
    .end local v6           #nation:Lcom/cnlaunch/golo3/dto/NationCodeInfo;
    :catch_0
    move-exception v1

    .line 343
    .local v1, e:Lorg/json/JSONException;
    new-instance v10, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-direct {v10, v12}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v10

    .line 350
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #i:I
    :cond_2
    new-instance v10, Lcom/cnlaunch/newgolo/exception/DecodeException;

    invoke-direct {v10, v12}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v10
.end method

.method public getRegistUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/golo3/dto/RegistUserInfo;
    .locals 8
    .parameter "nation_id"
    .parameter "loginKey"
    .parameter "verify_code"
    .parameter "password"
    .parameter "app_id"
    .parameter "nick_name"
    .parameter "v_zone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .line 371
    new-instance v5, Lcom/cnlaunch/golo3/dto/RegistUserInfo;

    invoke-direct {v5}, Lcom/cnlaunch/golo3/dto/RegistUserInfo;-><init>()V

    .line 372
    .local v5, userInfo:Lcom/cnlaunch/golo3/dto/RegistUserInfo;
    iget-object v6, p0, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->dao:Lcom/cnlaunch/golo3/dao/InterfaceDao;

    sget-object v7, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->REGISTER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->search(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, sb:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 374
    .local v3, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "nation_id"

    invoke-interface {v3, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string/jumbo v6, "loginKey"

    invoke-interface {v3, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string/jumbo v6, "verify_code"

    invoke-interface {v3, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string/jumbo v6, "password"

    invoke-interface {v3, v6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string/jumbo v6, "app_id"

    sget-object v7, Lcom/cnlaunch/newgolo/GoloConfig;->APP_ID:Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string/jumbo v6, "nick_name"

    invoke-interface {v3, v6, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string/jumbo v6, "v_zone"

    invoke-interface {v3, v6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-virtual {p0, v4}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getBeforeUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 382
    invoke-static {}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getInstance()Lcom/cnlaunch/golo3/http/HttpInfoClient;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getBaseInfoDtoByPost(Ljava/lang/String;Ljava/util/Map;)Lcom/cnlaunch/golo3/dto/BaseInfoDto;

    move-result-object v1

    .line 384
    .local v1, info:Lcom/cnlaunch/golo3/dto/BaseInfoDto;
    if-eqz v1, :cond_1

    .line 385
    invoke-virtual {v1}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cnlaunch/golo3/dto/RegistUserInfo;->setCode(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v1}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cnlaunch/golo3/dto/RegistUserInfo;->setMsg(Ljava/lang/String;)V

    .line 388
    :try_start_0
    invoke-virtual {v1}, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 389
    .local v2, obj:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 390
    const-string/jumbo v6, "user_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cnlaunch/golo3/dto/RegistUserInfo;->setUser_id(Ljava/lang/String;)V

    .line 391
    const-string/jumbo v6, "token"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cnlaunch/golo3/dto/RegistUserInfo;->setToken(Ljava/lang/String;)V

    .line 392
    const-string/jumbo v6, "user_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cnlaunch/golo3/dto/RegistUserInfo;->setUser_name(Ljava/lang/String;)V

    .line 393
    const-string/jumbo v6, "mobile"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cnlaunch/golo3/dto/RegistUserInfo;->setMobile(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v6, "email"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cnlaunch/golo3/dto/RegistUserInfo;->setEmail(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_0
    return-object v5

    .line 397
    .end local v2           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Lorg/json/JSONException;
    new-instance v6, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/4 v7, -0x2

    invoke-direct {v6, v7}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v6

    .line 401
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    new-instance v6, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/4 v7, -0x2

    invoke-direct {v6, v7}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v6
.end method

.method public getUrlTool(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .line 158
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 159
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, url:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 171
    invoke-static {v3}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V

    .line 175
    .end local v0           #i:I
    .end local v2           #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #url:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 163
    .restart local v0       #i:I
    .restart local v2       #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #url:Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    .local v1, key:Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 165
    .local v4, value:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_1

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 174
    .end local v0           #i:I
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/golo3/utils/GFLog;->i(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 178
    :cond_3
    new-instance v5, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const-string/jumbo v6, "Url is null"

    .line 179
    const/16 v7, 0x64

    .line 178
    invoke-direct {v5, v6, v7}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(Ljava/lang/String;I)V

    throw v5
.end method

.method public getUserInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "lan"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 549
    const/4 v4, 0x0

    .line 550
    .local v4, result:Ljava/lang/String;
    iget-object v9, p0, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->dao:Lcom/cnlaunch/golo3/dao/InterfaceDao;

    sget-object v10, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->USER_GET_BASE_INFO:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->search(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, path:Ljava/lang/String;
    const-string/jumbo v9, "HttpInfoProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getUserInfo lan:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", userId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 554
    :try_start_0
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, login_id:Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 556
    .local v6, signMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "action"

    invoke-virtual {p0, v3}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string/jumbo v9, "user_id"

    invoke-interface {v6, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string/jumbo v9, "app_id"

    sget-object v10, Lcom/cnlaunch/newgolo/GoloConfig;->APP_ID:Ljava/lang/String;

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string/jumbo v9, "ver"

    sget-object v10, Lcom/cnlaunch/newgolo/GoloConfig;->APP_VERSION:Ljava/lang/String;

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string/jumbo v9, "lan"

    invoke-interface {v6, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string/jumbo v9, "target_id"

    invoke-interface {v6, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/cnlaunch/golo3/utils/SignUtils;->getSign(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, sign:Ljava/lang/String;
    sget-object v9, Lcom/cnlaunch/newgolo/GoloConfig;->APP_ID:Ljava/lang/String;

    invoke-virtual {p0, v3, v1, v9, v5}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getAllUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 564
    .local v7, url:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 565
    .local v2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "lan"

    invoke-interface {v2, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string/jumbo v9, "target_id"

    invoke-interface {v2, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-static {}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->getInstance()Lcom/cnlaunch/golo3/http/HttpInfoClient;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Lcom/cnlaunch/golo3/http/HttpInfoClient;->sendPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 568
    const-string/jumbo v9, "HttpInfoProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "result:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    if-eqz v4, :cond_0

    const-string/jumbo v9, "null"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    .line 577
    .end local v1           #login_id:Ljava/lang/String;
    .end local v2           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #sign:Ljava/lang/String;
    .end local v6           #signMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v8

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move-object v8, v4

    .line 577
    goto :goto_0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .parameter "type"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/newgolo/exception/DecodeException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v18

    .line 475
    .local v18, user_id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->dao:Lcom/cnlaunch/golo3/dao/InterfaceDao;

    move-object/from16 v19, v0

    sget-object v20, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->FILE_UPLOAD:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->search(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 476
    .local v17, url:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 477
    .local v4, action:Ljava/lang/String;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 478
    .local v16, signMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v19, "action"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string/jumbo v19, "user_id"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string/jumbo v19, "app_id"

    sget-object v20, Lcom/cnlaunch/newgolo/GoloConfig;->APP_ID:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string/jumbo v19, "ver"

    sget-object v20, Lcom/cnlaunch/newgolo/GoloConfig;->APP_VERSION:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string/jumbo v19, "type"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserToken()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/cnlaunch/golo3/utils/SignUtils;->getSign(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 485
    .local v15, sign:Ljava/lang/String;
    const/4 v13, 0x0

    .line 488
    .local v13, result:Ljava/lang/String;
    :try_start_0
    new-instance v9, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v9}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 489
    .local v9, entity:Lorg/apache/http/entity/mime/MultipartEntity;
    const-string/jumbo v19, "type"

    new-instance v20, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 490
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 499
    const-string/jumbo v19, "file"

    new-instance v20, Lorg/apache/http/entity/mime/content/FileBody;

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v20 .. v21}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 502
    :goto_0
    sget-object v19, Lcom/cnlaunch/newgolo/GoloConfig;->APP_ID:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getAllUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 503
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 504
    .local v14, sb:Ljava/lang/String;
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v11, v14}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 505
    .local v11, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v11, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 507
    :try_start_1
    invoke-static {}, Lcom/cnlaunch/golo3/http/HttpClientManager;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v19

    .line 508
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 509
    .local v12, response:Lorg/apache/http/HttpResponse;
    const/16 v19, 0xc8

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    .line 510
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    .line 509
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 511
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v6

    .line 515
    .local v6, content:Ljava/lang/String;
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 516
    .local v10, json:Lorg/json/JSONObject;
    const-string/jumbo v19, "code"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_1

    .line 517
    const-string/jumbo v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 520
    .local v7, data:Lorg/json/JSONObject;
    const-string/jumbo v19, "url"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 521
    if-eqz v13, :cond_0

    .line 522
    const-string/jumbo v19, "cy_thumg_url"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    const-string/jumbo v19, "thumb"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 531
    .end local v6           #content:Ljava/lang/String;
    .end local v7           #data:Lorg/json/JSONObject;
    .end local v10           #json:Lorg/json/JSONObject;
    :cond_1
    return-object v13

    .line 492
    .end local v11           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #sb:Ljava/lang/String;
    :pswitch_0
    const/16 v19, 0x1e0

    const/16 v20, 0x320

    :try_start_3
    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/golo3/utils/BitmapTool;->decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 493
    .local v5, bitmap:Landroid/graphics/Bitmap;
    const/16 v19, 0x400

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/cnlaunch/golo3/utils/BitmapTool;->compressBitmap(Landroid/graphics/Bitmap;I)[B

    move-result-object v7

    .line 494
    .local v7, data:[B
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 495
    const-string/jumbo v19, "file"

    new-instance v20, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string/jumbo v21, "image/jpeg"

    .line 496
    const-string/jumbo v22, "image"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v7, v1, v2}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 535
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #data:[B
    .end local v9           #entity:Lorg/apache/http/entity/mime/MultipartEntity;
    :catch_0
    move-exception v8

    .line 536
    .local v8, e:Ljava/lang/NumberFormatException;
    new-instance v19, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/16 v20, -0x2

    invoke-direct/range {v19 .. v20}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v19

    .line 527
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #content:Ljava/lang/String;
    .restart local v9       #entity:Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v11       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #sb:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 528
    .local v8, e:Lorg/json/JSONException;
    :try_start_4
    new-instance v19, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/16 v20, -0x2

    invoke-direct/range {v19 .. v20}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v19
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3

    .line 532
    .end local v6           #content:Ljava/lang/String;
    .end local v8           #e:Lorg/json/JSONException;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v8

    .line 533
    .local v8, e:Ljava/io/IOException;
    :try_start_5
    new-instance v19, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/16 v20, -0x1

    invoke-direct/range {v19 .. v20}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v19
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    .line 537
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #entity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v11           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v14           #sb:Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 538
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    new-instance v19, Lcom/cnlaunch/newgolo/exception/DecodeException;

    const/16 v20, -0x2

    invoke-direct/range {v19 .. v20}, Lcom/cnlaunch/newgolo/exception/DecodeException;-><init>(I)V

    throw v19

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
