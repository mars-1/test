.class public Lcom/cnlaunch/framework/common/parse/SoapManager;
.super Ljava/lang/Object;
.source "SoapManager.java"


# static fields
.field private static instance:Lcom/cnlaunch/framework/common/parse/SoapManager;


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Lcom/cnlaunch/framework/common/parse/SoapManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/common/parse/SoapManager;->tag:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/framework/common/parse/SoapManager;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/cnlaunch/framework/common/parse/SoapManager;->instance:Lcom/cnlaunch/framework/common/parse/SoapManager;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lcom/cnlaunch/framework/common/parse/SoapManager;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/cnlaunch/framework/common/parse/SoapManager;->instance:Lcom/cnlaunch/framework/common/parse/SoapManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/cnlaunch/framework/common/parse/SoapManager;

    invoke-direct {v0}, Lcom/cnlaunch/framework/common/parse/SoapManager;-><init>()V

    sput-object v0, Lcom/cnlaunch/framework/common/parse/SoapManager;->instance:Lcom/cnlaunch/framework/common/parse/SoapManager;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lcom/cnlaunch/framework/common/parse/SoapManager;->instance:Lcom/cnlaunch/framework/common/parse/SoapManager;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private varargs getSoapJsonResult(Lorg/json/JSONObject;Ljava/util/HashSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter "jsonResult"
    .parameter
    .parameter "listNodeNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, hashset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v9, ""

    .line 153
    .local v9, jsonkey:Ljava/lang/String;
    const/4 v4, 0x0

    .line 154
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v13, 0x0

    .line 155
    .local v13, tempJson:Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 157
    .local v8, jsonArray:Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v14, v0

    if-lez v14, :cond_0

    .line 159
    new-instance v13, Lorg/json/JSONObject;

    .end local v13           #tempJson:Lorg/json/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    .restart local v13       #tempJson:Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/framework/common/parse/SoapManager;->tag:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "it="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 213
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v9           #jsonkey:Ljava/lang/String;
    .end local v13           #tempJson:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 163
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v8       #jsonArray:Lorg/json/JSONArray;
    .restart local v9       #jsonkey:Ljava/lang/String;
    .restart local v13       #tempJson:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    aget-object v10, p3, v15

    .line 164
    .local v10, nodeName:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_3

    .line 207
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto :goto_0

    .line 165
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 166
    const-string/jumbo v14, ""

    invoke-virtual {v9, v10, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, index:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/framework/common/parse/SoapManager;->tag:Ljava/lang/String;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "nodeName="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",jsonKey="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",index="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 171
    const/4 v2, 0x1

    .line 172
    .local v2, flag:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 173
    .local v6, itemObj:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/framework/common/parse/SoapManager;->tag:Ljava/lang/String;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "itemObj="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 175
    .local v5, itemIt:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/framework/common/parse/SoapManager;->tag:Ljava/lang/String;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "itemIt="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_5

    .line 197
    :goto_4
    if-eqz v2, :cond_2

    .line 198
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 210
    .end local v2           #flag:Z
    .end local v3           #index:Ljava/lang/String;
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v5           #itemIt:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v6           #itemObj:Lorg/json/JSONObject;
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v9           #jsonkey:Ljava/lang/String;
    .end local v10           #nodeName:Ljava/lang/String;
    .end local v13           #tempJson:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 211
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 178
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #flag:Z
    .restart local v3       #index:Ljava/lang/String;
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v5       #itemIt:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v6       #itemObj:Lorg/json/JSONObject;
    .restart local v8       #jsonArray:Lorg/json/JSONArray;
    .restart local v9       #jsonkey:Ljava/lang/String;
    .restart local v10       #nodeName:Ljava/lang/String;
    .restart local v13       #tempJson:Lorg/json/JSONObject;
    :cond_5
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, itemkey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/framework/common/parse/SoapManager;->tag:Ljava/lang/String;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "itemkey="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_6

    const-string/jumbo v14, "x431PadSoft"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 181
    const/4 v2, 0x0

    .line 182
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 185
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 186
    .local v11, setIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 187
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v12, setkey:Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 189
    const/4 v2, 0x0

    .line 190
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 202
    .end local v2           #flag:Z
    .end local v5           #itemIt:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v6           #itemObj:Lorg/json/JSONObject;
    .end local v7           #itemkey:Ljava/lang/String;
    .end local v11           #setIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12           #setkey:Ljava/lang/String;
    :cond_8
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-le v14, v0, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_2

    .line 203
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method private getSoapresult(Lorg/ksoap2/serialization/SoapObject;Lorg/json/JSONObject;Ljava/util/HashSet;)V
    .locals 12
    .parameter "soapresult"
    .parameter "jsonResult"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ksoap2/serialization/SoapObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p3, hashset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 102
    const/4 v8, 0x0

    .line 103
    .local v8, proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    const/4 v3, 0x0

    .line 104
    .local v3, childsoap:Lorg/ksoap2/serialization/SoapObject;
    const/4 v1, 0x0

    .line 105
    .local v1, childJson:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 107
    .local v5, curName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 108
    .local v4, count:I
    const/4 v7, 0x0

    .local v7, i:I
    move-object v2, v1

    .end local v1           #childJson:Lorg/json/JSONObject;
    .local v2, childJson:Lorg/json/JSONObject;
    move-object v9, v8

    .end local v8           #proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    .local v9, proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    :goto_0
    if-lt v7, v4, :cond_1

    .line 142
    .end local v2           #childJson:Lorg/json/JSONObject;
    .end local v3           #childsoap:Lorg/ksoap2/serialization/SoapObject;
    .end local v4           #count:I
    .end local v5           #curName:Ljava/lang/String;
    .end local v7           #i:I
    .end local v9           #proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    :cond_0
    :goto_1
    return-void

    .line 111
    .restart local v2       #childJson:Lorg/json/JSONObject;
    .restart local v3       #childsoap:Lorg/ksoap2/serialization/SoapObject;
    .restart local v4       #count:I
    .restart local v5       #curName:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v9       #proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    :cond_1
    :try_start_1
    new-instance v8, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-direct {v8}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .end local v9           #proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    .restart local v8       #proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    :try_start_2
    invoke-virtual {p1, v7, v8}, Lorg/ksoap2/serialization/SoapObject;->getPropertyInfo(ILorg/ksoap2/serialization/PropertyInfo;)V

    .line 113
    invoke-virtual {v8}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 116
    const-class v10, Lorg/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v8}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_2

    .line 117
    invoke-virtual {v8}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v2

    .line 108
    .end local v2           #childJson:Lorg/json/JSONObject;
    .restart local v1       #childJson:Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object v2, v1

    .end local v1           #childJson:Lorg/json/JSONObject;
    .restart local v2       #childJson:Lorg/json/JSONObject;
    move-object v9, v8

    .end local v8           #proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    .restart local v9       #proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    goto :goto_0

    .line 119
    .end local v9           #proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    .restart local v8       #proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    :cond_2
    const-class v10, Lorg/ksoap2/serialization/SoapObject;

    invoke-virtual {v8}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_4

    .line 121
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 122
    .end local v2           #childJson:Lorg/json/JSONObject;
    .restart local v1       #childJson:Lorg/json/JSONObject;
    :try_start_3
    invoke-virtual {p1, v7}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object v3, v0

    .line 125
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 126
    invoke-virtual {p3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {p3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_3
    invoke-direct {p0, v3, v1, p3}, Lcom/cnlaunch/framework/common/parse/SoapManager;->getSoapresult(Lorg/ksoap2/serialization/SoapObject;Lorg/json/JSONObject;Ljava/util/HashSet;)V

    .line 135
    invoke-virtual {p2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 139
    .end local v4           #count:I
    .end local v7           #i:I
    :catch_0
    move-exception v6

    .line 140
    .local v6, e:Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 139
    .end local v1           #childJson:Lorg/json/JSONObject;
    .end local v6           #e:Lorg/json/JSONException;
    .end local v8           #proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    .restart local v2       #childJson:Lorg/json/JSONObject;
    .restart local v4       #count:I
    .restart local v7       #i:I
    .restart local v9       #proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2           #childJson:Lorg/json/JSONObject;
    .restart local v1       #childJson:Lorg/json/JSONObject;
    move-object v8, v9

    .end local v9           #proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    .restart local v8       #proinfo:Lorg/ksoap2/serialization/PropertyInfo;
    goto :goto_3

    .end local v1           #childJson:Lorg/json/JSONObject;
    .restart local v2       #childJson:Lorg/json/JSONObject;
    :catch_2
    move-exception v6

    move-object v1, v2

    .end local v2           #childJson:Lorg/json/JSONObject;
    .restart local v1       #childJson:Lorg/json/JSONObject;
    goto :goto_3

    .end local v1           #childJson:Lorg/json/JSONObject;
    .restart local v2       #childJson:Lorg/json/JSONObject;
    :cond_4
    move-object v1, v2

    .end local v2           #childJson:Lorg/json/JSONObject;
    .restart local v1       #childJson:Lorg/json/JSONObject;
    goto :goto_2
.end method


# virtual methods
.method public soapToJson(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter "soapObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ksoap2/serialization/SoapObject;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/framework/common/parse/SoapManager;->soapToJson(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs soapToJson(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "soapObject"
    .parameter
    .parameter "listNodeNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ksoap2/serialization/SoapObject;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 75
    .local v6, start:J
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v5, jsonResult:Lorg/json/JSONObject;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 79
    .local v3, hashset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v5, v3}, Lcom/cnlaunch/framework/common/parse/SoapManager;->getSoapresult(Lorg/ksoap2/serialization/SoapObject;Lorg/json/JSONObject;Ljava/util/HashSet;)V

    .line 80
    iget-object v8, p0, Lcom/cnlaunch/framework/common/parse/SoapManager;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "jsonResult: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    move-object/from16 v0, p3

    invoke-direct {p0, v5, v3, v0}, Lcom/cnlaunch/framework/common/parse/SoapManager;->getSoapJsonResult(Lorg/json/JSONObject;Ljava/util/HashSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, json:Ljava/lang/String;
    iget-object v8, p0, Lcom/cnlaunch/framework/common/parse/SoapManager;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "soapToJson: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 85
    .local v1, end:J
    iget-object v8, p0, Lcom/cnlaunch/framework/common/parse/SoapManager;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "soapToJson take time : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v1, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    sget-boolean v8, Lcom/cnlaunch/framework/utils/NLog;->isDebug:Z

    if-eqz v8, :cond_0

    .line 88
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/cnlaunch/framework/common/CacheManager;->saveTestData(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-object v4
.end method
