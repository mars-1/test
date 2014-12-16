.class Lcom/cnlaunch/newgolo/model/LoginLogic$1;
.super Ljava/lang/Object;
.source "LoginLogic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/model/LoginLogic;->login(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/model/LoginLogic;

.field private final synthetic val$content:Ljava/lang/String;

.field private final synthetic val$json:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/model/LoginLogic;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/model/LoginLogic$1;->this$0:Lcom/cnlaunch/newgolo/model/LoginLogic;

    iput-object p2, p0, Lcom/cnlaunch/newgolo/model/LoginLogic$1;->val$content:Ljava/lang/String;

    iput-object p3, p0, Lcom/cnlaunch/newgolo/model/LoginLogic$1;->val$json:Lorg/json/JSONObject;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 86
    :try_start_0
    new-instance v13, Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/LoginLogic$1;->val$content:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/cnlaunch/newgolo/model/LoginEntity;-><init>(Ljava/lang/String;)V

    .line 87
    .local v13, user:Lcom/cnlaunch/newgolo/model/LoginEntity;
    invoke-static {v13}, Lcom/cnlaunch/newgolo/GoloApplication;->setUser(Lcom/cnlaunch/newgolo/model/LoginEntity;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/LoginLogic$1;->val$json:Lorg/json/JSONObject;

    move-object/from16 v16, v0

    const-string/jumbo v17, "data"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 89
    .local v6, data:Lorg/json/JSONObject;
    const-string/jumbo v16, "config"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string/jumbo v16, "config"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "null"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 90
    new-instance v3, Lcom/cnlaunch/golo3/dto/InterfaceConfig;

    invoke-direct {v3}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;-><init>()V

    .line 91
    .local v3, config:Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    const-string/jumbo v16, "config"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 93
    .local v2, cJson:Lorg/json/JSONObject;
    const-string/jumbo v16, "urls"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 94
    .local v12, urlsArray:Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-lt v8, v0, :cond_1

    .line 101
    invoke-virtual {v3, v9}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->setUrlList(Ljava/util/List;)V

    .line 102
    const-string/jumbo v16, "version"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->setVersion(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v16, "area"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->setArea(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v3}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->getUrlList()Ljava/util/List;

    move-result-object v10

    .line 105
    .local v10, mList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    new-instance v1, Lcom/cnlaunch/golo3/dto/InterfaceUrl;

    invoke-direct {v1}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;-><init>()V

    .line 106
    .local v1, areaUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    new-instance v15, Lcom/cnlaunch/golo3/dto/InterfaceUrl;

    invoke-direct {v15}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;-><init>()V

    .line 107
    .local v15, verUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    const-string/jumbo v16, "config_area"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setKey(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->getArea()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setValue(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v16, "config_no"

    invoke-virtual/range {v15 .. v16}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setKey(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->getVersion()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setValue(Ljava/lang/String;)V

    .line 111
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->getInstance()Lcom/cnlaunch/golo3/dao/InterfaceDao;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->update(Ljava/util/List;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/LoginLogic$1;->this$0:Lcom/cnlaunch/newgolo/model/LoginLogic;

    move-object/from16 v16, v0

    sget-object v17, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    #setter for: Lcom/cnlaunch/newgolo/model/LoginLogic;->sp:Landroid/content/SharedPreferences;
    invoke-static/range {v16 .. v17}, Lcom/cnlaunch/newgolo/model/LoginLogic;->access$0(Lcom/cnlaunch/newgolo/model/LoginLogic;Landroid/content/SharedPreferences;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/LoginLogic$1;->this$0:Lcom/cnlaunch/newgolo/model/LoginLogic;

    move-object/from16 v16, v0

    #getter for: Lcom/cnlaunch/newgolo/model/LoginLogic;->sp:Landroid/content/SharedPreferences;
    invoke-static/range {v16 .. v16}, Lcom/cnlaunch/newgolo/model/LoginLogic;->access$1(Lcom/cnlaunch/newgolo/model/LoginLogic;)Landroid/content/SharedPreferences;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 116
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 117
    .local v4, current:J
    const-string/jumbo v16, "stamptime"

    move-object/from16 v0, v16

    invoke-interface {v7, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    .end local v1           #areaUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    .end local v2           #cJson:Lorg/json/JSONObject;
    .end local v3           #config:Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    .end local v4           #current:J
    .end local v6           #data:Lorg/json/JSONObject;
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v8           #i:I
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    .end local v10           #mList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    .end local v12           #urlsArray:Lorg/json/JSONArray;
    .end local v13           #user:Lcom/cnlaunch/newgolo/model/LoginEntity;
    .end local v15           #verUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    :cond_0
    :goto_1
    return-void

    .line 95
    .restart local v2       #cJson:Lorg/json/JSONObject;
    .restart local v3       #config:Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    .restart local v6       #data:Lorg/json/JSONObject;
    .restart local v8       #i:I
    .restart local v9       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    .restart local v12       #urlsArray:Lorg/json/JSONArray;
    .restart local v13       #user:Lcom/cnlaunch/newgolo/model/LoginEntity;
    :cond_1
    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 96
    .local v14, valueObject:Lorg/json/JSONObject;
    new-instance v11, Lcom/cnlaunch/golo3/dto/InterfaceUrl;

    invoke-direct {v11}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;-><init>()V

    .line 97
    .local v11, newUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    const-string/jumbo v16, "key"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setKey(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v16, "value"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setValue(Ljava/lang/String;)V

    .line 99
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 120
    .end local v2           #cJson:Lorg/json/JSONObject;
    .end local v3           #config:Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    .end local v6           #data:Lorg/json/JSONObject;
    .end local v8           #i:I
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    .end local v11           #newUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    .end local v12           #urlsArray:Lorg/json/JSONArray;
    .end local v13           #user:Lcom/cnlaunch/newgolo/model/LoginEntity;
    .end local v14           #valueObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v16

    goto :goto_1
.end method
