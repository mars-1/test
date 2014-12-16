.class public Lcom/cnlaunch/newgolo/bean/User;
.super Ljava/lang/Object;
.source "User.java"


# static fields
.field private static final CODE_SUC:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    const-class v2, Lcom/cnlaunch/newgolo/bean/User;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v0

    .line 51
    .local v0, entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/LoginEntity;->user_id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, "123456"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    .end local v0           #entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getUserMobile(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 74
    const-class v2, Lcom/cnlaunch/newgolo/bean/User;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v0

    .line 75
    .local v0, entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/LoginEntity;->mobile:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    .end local v0           #entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    const-class v2, Lcom/cnlaunch/newgolo/bean/User;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v0

    .line 83
    .local v0, entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    if-eqz v0, :cond_0

    .line 84
    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/LoginEntity;->user_name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    .end local v0           #entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getUserNickName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    const-class v2, Lcom/cnlaunch/newgolo/bean/User;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v0

    .line 67
    .local v0, entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    if-eqz v0, :cond_0

    .line 68
    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/LoginEntity;->nick_name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    .end local v0           #entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getUserToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 58
    const-class v2, Lcom/cnlaunch/newgolo/bean/User;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v0

    .line 59
    .local v0, entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/LoginEntity;->token:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    .end local v0           #entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static saveConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 22
    .parameter "context"
    .parameter "content"

    .prologue
    .line 106
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .local v12, json:Lorg/json/JSONObject;
    const-string/jumbo v20, "code"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 108
    const-string/jumbo v20, "code"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 109
    .local v4, code:I
    packed-switch v4, :pswitch_data_0

    .line 151
    .end local v4           #code:I
    .end local v12           #json:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 111
    .restart local v4       #code:I
    .restart local v12       #json:Lorg/json/JSONObject;
    :pswitch_0
    const-string/jumbo v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 112
    .local v8, data:Lorg/json/JSONObject;
    const-string/jumbo v20, "config"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 113
    const-string/jumbo v20, "config"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "null"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 114
    new-instance v5, Lcom/cnlaunch/golo3/dto/InterfaceConfig;

    invoke-direct {v5}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;-><init>()V

    .line 115
    .local v5, config:Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    const-string/jumbo v20, "config"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 117
    .local v3, cJson:Lorg/json/JSONObject;
    const-string/jumbo v20, "urls"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 118
    .local v17, urlsArray:Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v11, v0, :cond_1

    .line 125
    invoke-virtual {v5, v13}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->setUrlList(Ljava/util/List;)V

    .line 126
    const-string/jumbo v20, "version"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->setVersion(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v20, "area"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->setArea(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v5}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->getUrlList()Ljava/util/List;

    move-result-object v14

    .line 129
    .local v14, mList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    new-instance v2, Lcom/cnlaunch/golo3/dto/InterfaceUrl;

    invoke-direct {v2}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;-><init>()V

    .line 130
    .local v2, areaUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    new-instance v19, Lcom/cnlaunch/golo3/dto/InterfaceUrl;

    invoke-direct/range {v19 .. v19}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;-><init>()V

    .line 131
    .local v19, verUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    const-string/jumbo v20, "config_area"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setKey(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v5}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->getArea()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setValue(Ljava/lang/String;)V

    .line 133
    const-string/jumbo v20, "config_no"

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setKey(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v5}, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->getVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setValue(Ljava/lang/String;)V

    .line 135
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->getInstance()Lcom/cnlaunch/golo3/dao/InterfaceDao;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/cnlaunch/golo3/dao/InterfaceDao;->update(Ljava/util/List;)V

    .line 138
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 139
    .local v16, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 140
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 141
    .local v6, current:J
    const-string/jumbo v20, "stamptime"

    move-object/from16 v0, v20

    invoke-interface {v10, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 147
    .end local v2           #areaUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    .end local v3           #cJson:Lorg/json/JSONObject;
    .end local v4           #code:I
    .end local v5           #config:Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    .end local v6           #current:J
    .end local v8           #data:Lorg/json/JSONObject;
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v11           #i:I
    .end local v12           #json:Lorg/json/JSONObject;
    .end local v13           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    .end local v14           #mList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    .end local v16           #sp:Landroid/content/SharedPreferences;
    .end local v17           #urlsArray:Lorg/json/JSONArray;
    .end local v19           #verUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    :catch_0
    move-exception v9

    .line 148
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 119
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v3       #cJson:Lorg/json/JSONObject;
    .restart local v4       #code:I
    .restart local v5       #config:Lcom/cnlaunch/golo3/dto/InterfaceConfig;
    .restart local v8       #data:Lorg/json/JSONObject;
    .restart local v11       #i:I
    .restart local v12       #json:Lorg/json/JSONObject;
    .restart local v13       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    .restart local v17       #urlsArray:Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 120
    .local v18, valueObject:Lorg/json/JSONObject;
    new-instance v15, Lcom/cnlaunch/golo3/dto/InterfaceUrl;

    invoke-direct {v15}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;-><init>()V

    .line 121
    .local v15, newUrl:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    const-string/jumbo v20, "key"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setKey(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v20, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setValue(Ljava/lang/String;)V

    .line 123
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized setUser(Landroid/content/Context;Lcom/cnlaunch/newgolo/model/LoginEntity;)V
    .locals 2
    .parameter "context"
    .parameter "entity"

    .prologue
    .line 93
    const-class v0, Lcom/cnlaunch/newgolo/bean/User;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 94
    :try_start_0
    invoke-static {p0, p1}, Lcom/cnlaunch/newgolo/model/LoginMgr;->saveLoginInfo(Landroid/content/Context;Lcom/cnlaunch/newgolo/model/LoginEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit v0

    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
