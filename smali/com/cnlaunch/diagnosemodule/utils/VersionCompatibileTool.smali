.class public Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;
.super Ljava/lang/Object;
.source "VersionCompatibileTool.java"


# static fields
.field public static isVersionCom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->isVersionCom:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compatibleReciveData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 38
    .parameter "strData"
    .parameter "identify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 251
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->setVersionCom(Z)V

    .line 252
    new-instance v31, Lorg/json/JSONObject;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 253
    .local v31, srcData:Lorg/json/JSONObject;
    const-string/jumbo v35, "type"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    .line 256
    .local v34, type:I
    const-string/jumbo v29, ""

    .line 257
    .local v29, returnStr:Ljava/lang/String;
    if-nez p1, :cond_d

    .line 259
    const-string/jumbo v35, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, dataContent:Ljava/lang/String;
    packed-switch v34, :pswitch_data_0

    .line 342
    :pswitch_0
    const-string/jumbo v35, "Sanda"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string/jumbo v37, "[compatibleReciveData:identify="

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "|type="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "]"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v35, "back"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_c

    .line 344
    sget-object v35, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    sget-object v36, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 538
    .end local v4           #dataContent:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v29

    .line 264
    .restart local v4       #dataContent:Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v35, "back"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 265
    const-string/jumbo v35, "1"

    const-string/jumbo v36, "-1"

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 266
    goto :goto_0

    .line 267
    :cond_1
    const-string/jumbo v35, "1"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 269
    goto :goto_0

    .line 271
    :pswitch_2
    const-string/jumbo v35, "0"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 272
    const-string/jumbo v35, "6"

    const-string/jumbo v36, "00"

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 273
    goto :goto_0

    :cond_2
    const-string/jumbo v35, "1"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 274
    const-string/jumbo v35, "6"

    const-string/jumbo v36, "01"

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 275
    goto :goto_0

    :cond_3
    const-string/jumbo v35, "2"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 276
    const-string/jumbo v35, "6"

    const-string/jumbo v36, "02"

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 277
    goto :goto_0

    :cond_4
    const-string/jumbo v35, "3"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 278
    const-string/jumbo v35, "6"

    const-string/jumbo v36, "03"

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 279
    goto :goto_0

    :cond_5
    const-string/jumbo v35, "4"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 280
    const-string/jumbo v35, "6"

    const-string/jumbo v36, "04"

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 282
    goto/16 :goto_0

    .line 284
    :pswitch_3
    const-string/jumbo v35, "7"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 285
    goto/16 :goto_0

    .line 287
    :pswitch_4
    const-string/jumbo v35, "8"

    const-string/jumbo v36, "^[-+]?(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)$"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_6

    .end local v4           #dataContent:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v35

    invoke-static {v0, v4}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 288
    goto/16 :goto_0

    .line 287
    .restart local v4       #dataContent:Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "0"

    goto :goto_1

    .line 290
    :pswitch_5
    const-string/jumbo v35, "back"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 291
    sget-object v35, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    sget-object v36, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 292
    goto/16 :goto_0

    .line 293
    :cond_7
    const-string/jumbo v35, "9"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 295
    goto/16 :goto_0

    .line 297
    :pswitch_6
    const-string/jumbo v35, "back"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 298
    sget-object v35, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    sget-object v36, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 299
    goto/16 :goto_0

    .line 300
    :cond_8
    const-string/jumbo v35, "9"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 302
    goto/16 :goto_0

    .line 304
    :pswitch_7
    const-string/jumbo v35, "15"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 305
    goto/16 :goto_0

    .line 307
    :pswitch_8
    const-string/jumbo v35, "16"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 308
    goto/16 :goto_0

    .line 310
    :pswitch_9
    const-string/jumbo v35, "back"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 311
    sget-object v35, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    sget-object v36, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 312
    goto/16 :goto_0

    .line 313
    :cond_9
    const-string/jumbo v35, "3"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 315
    goto/16 :goto_0

    .line 319
    :pswitch_a
    const-string/jumbo v35, "back"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 320
    sget-object v35, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    sget-object v36, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 322
    goto/16 :goto_0

    .line 333
    :pswitch_b
    const-string/jumbo v35, "back"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_a

    .line 334
    sget-object v35, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    sget-object v36, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 335
    goto/16 :goto_0

    .line 336
    :cond_a
    const/16 v35, 0x1b

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    const/16 v35, 0x26

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    const/16 v35, 0x28

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    const/16 v35, 0x2a

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 337
    :cond_b
    const-string/jumbo v35, "14"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 340
    goto/16 :goto_0

    .line 346
    :cond_c
    move-object/from16 v29, p0

    .line 350
    goto/16 :goto_0

    .end local v4           #dataContent:Ljava/lang/String;
    :cond_d
    const/16 v35, 0x1

    move/from16 v0, p1

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 352
    packed-switch v34, :pswitch_data_1

    .line 531
    :pswitch_c
    const-string/jumbo v35, "Sanda"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string/jumbo v37, "[compatibleReciveData:identify="

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "|type="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "]"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    move-object/from16 v29, p0

    goto/16 :goto_0

    .line 356
    :pswitch_d
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 357
    .local v9, json1:Lorg/json/JSONObject;
    const-string/jumbo v35, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 358
    .local v25, jsonArrayTemp:Lorg/json/JSONArray;
    const-string/jumbo v35, "ui_type"

    const/16 v36, 0x12c

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    new-instance v19, Lorg/json/JSONArray;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONArray;-><init>()V

    .line 360
    .local v19, json1Array:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v35

    if-lt v7, v0, :cond_e

    .line 365
    const-string/jumbo v35, "menudata"

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string/jumbo v35, "item"

    const-string/jumbo v36, "position"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const/16 v35, 0x12c

    invoke-static/range {v35 .. v35}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseNewJson(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 368
    goto/16 :goto_0

    .line 361
    :cond_e
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 362
    .local v8, jTemp:Lorg/json/JSONObject;
    const-string/jumbo v35, "title"

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "content"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 360
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 370
    .end local v7           #i:I
    .end local v8           #jTemp:Lorg/json/JSONObject;
    .end local v9           #json1:Lorg/json/JSONObject;
    .end local v19           #json1Array:Lorg/json/JSONArray;
    .end local v25           #jsonArrayTemp:Lorg/json/JSONArray;
    :pswitch_e
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 371
    .local v20, json5:Lorg/json/JSONObject;
    const-string/jumbo v35, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 372
    .local v26, jsonTemp:Lorg/json/JSONObject;
    const-string/jumbo v35, "ui_type"

    const/16 v36, 0x64

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 373
    const-string/jumbo v35, "title"

    const-string/jumbo v36, "messageTitle"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string/jumbo v35, "content"

    const-string/jumbo v36, "messageContent"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string/jumbo v35, "cancelable"

    const/16 v36, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 376
    const/16 v35, 0x64

    invoke-static/range {v35 .. v35}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseNewJson(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 377
    goto/16 :goto_0

    .line 379
    .end local v20           #json5:Lorg/json/JSONObject;
    .end local v26           #jsonTemp:Lorg/json/JSONObject;
    :pswitch_f
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    .line 380
    .local v21, json6:Lorg/json/JSONObject;
    const-string/jumbo v35, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 381
    .restart local v26       #jsonTemp:Lorg/json/JSONObject;
    const-string/jumbo v35, "dialogStyle"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 382
    .local v6, dialogType:I
    const/16 v27, 0x64

    .line 383
    .local v27, newDialogType:I
    const/16 v35, 0x1

    move/from16 v0, v35

    if-ne v6, v0, :cond_10

    .line 384
    const/16 v27, 0x6e

    .line 394
    :cond_f
    :goto_3
    const-string/jumbo v35, "ui_type"

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 395
    const-string/jumbo v35, "title"

    const-string/jumbo v36, "messageTitle"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string/jumbo v35, "content"

    const-string/jumbo v36, "messageContent"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const/16 v35, 0x64

    invoke-static/range {v35 .. v35}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseNewJson(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 398
    goto/16 :goto_0

    .line 385
    :cond_10
    const/16 v35, 0x2

    move/from16 v0, v35

    if-ne v6, v0, :cond_11

    .line 386
    const/16 v27, 0x78

    .line 387
    goto :goto_3

    :cond_11
    const/16 v35, 0x3

    move/from16 v0, v35

    if-ne v6, v0, :cond_12

    .line 388
    const/16 v27, 0x82

    .line 389
    goto :goto_3

    :cond_12
    const/16 v35, 0x4

    move/from16 v0, v35

    if-ne v6, v0, :cond_13

    .line 390
    const/16 v27, 0x8c

    .line 391
    goto :goto_3

    :cond_13
    const/16 v35, 0x6

    move/from16 v0, v35

    if-ne v6, v0, :cond_f

    .line 392
    const/16 v27, 0x6e

    goto :goto_3

    .line 400
    .end local v6           #dialogType:I
    .end local v21           #json6:Lorg/json/JSONObject;
    .end local v26           #jsonTemp:Lorg/json/JSONObject;
    .end local v27           #newDialogType:I
    :pswitch_10
    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONObject;-><init>()V

    .line 401
    .local v22, json7:Lorg/json/JSONObject;
    const-string/jumbo v35, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 402
    .restart local v26       #jsonTemp:Lorg/json/JSONObject;
    const-string/jumbo v35, "ui_type"

    const/16 v36, 0xdc

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 403
    const-string/jumbo v35, "title"

    const-string/jumbo v36, "messageTitle"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string/jumbo v35, "content"

    const-string/jumbo v36, "messageContent"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const/16 v35, 0xc8

    invoke-static/range {v35 .. v35}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseNewJson(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 406
    goto/16 :goto_0

    .line 408
    .end local v22           #json7:Lorg/json/JSONObject;
    .end local v26           #jsonTemp:Lorg/json/JSONObject;
    :pswitch_11
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 409
    .local v23, json8:Lorg/json/JSONObject;
    const-string/jumbo v35, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 410
    .restart local v26       #jsonTemp:Lorg/json/JSONObject;
    const-string/jumbo v35, "ui_type"

    const/16 v36, 0xd2

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 411
    const-string/jumbo v35, "title"

    const-string/jumbo v36, "messageTitle"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string/jumbo v35, "content"

    const-string/jumbo v36, "messageContent"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    const/16 v35, 0xc8

    invoke-static/range {v35 .. v35}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseNewJson(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 414
    goto/16 :goto_0

    .line 416
    .end local v23           #json8:Lorg/json/JSONObject;
    .end local v26           #jsonTemp:Lorg/json/JSONObject;
    :pswitch_12
    new-instance v24, Lorg/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONObject;-><init>()V

    .line 417
    .local v24, json9:Lorg/json/JSONObject;
    const-string/jumbo v35, "ui_type"

    const/16 v36, 0x258

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 418
    const-string/jumbo v35, "data1"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    .line 419
    .local v32, srcDataList:Lorg/json/JSONArray;
    const-string/jumbo v35, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 420
    .local v30, srcButtonList:Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 422
    .local v5, dataJsonArray:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v35

    if-lt v7, v0, :cond_14

    .line 429
    const-string/jumbo v35, "menudata"

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 432
    .local v3, buttonJsonArray:Lorg/json/JSONArray;
    const/4 v7, 0x0

    :goto_5
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v35

    if-lt v7, v0, :cond_15

    .line 438
    const-string/jumbo v35, "buttondata"

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    const/16 v35, 0x258

    invoke-static/range {v35 .. v35}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseNewJson(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 440
    goto/16 :goto_0

    .line 423
    .end local v3           #buttonJsonArray:Lorg/json/JSONArray;
    :cond_14
    new-instance v33, Lorg/json/JSONObject;

    invoke-direct/range {v33 .. v33}, Lorg/json/JSONObject;-><init>()V

    .line 424
    .local v33, temp:Lorg/json/JSONObject;
    const-string/jumbo v35, "title"

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "datastreamName"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    const-string/jumbo v35, "value"

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "datastreamValue"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string/jumbo v35, "unit"

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "datastreamUnit"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    move-object/from16 v0, v33

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 422
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 433
    .end local v33           #temp:Lorg/json/JSONObject;
    .restart local v3       #buttonJsonArray:Lorg/json/JSONArray;
    :cond_15
    new-instance v33, Lorg/json/JSONObject;

    invoke-direct/range {v33 .. v33}, Lorg/json/JSONObject;-><init>()V

    .line 434
    .restart local v33       #temp:Lorg/json/JSONObject;
    const-string/jumbo v35, "title"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "text"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    const-string/jumbo v35, "cmd"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "buttonId"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    move-object/from16 v0, v33

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 432
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 442
    .end local v3           #buttonJsonArray:Lorg/json/JSONArray;
    .end local v5           #dataJsonArray:Lorg/json/JSONArray;
    .end local v7           #i:I
    .end local v24           #json9:Lorg/json/JSONObject;
    .end local v30           #srcButtonList:Lorg/json/JSONArray;
    .end local v32           #srcDataList:Lorg/json/JSONArray;
    .end local v33           #temp:Lorg/json/JSONObject;
    :pswitch_13
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 443
    .local v10, json10:Lorg/json/JSONObject;
    const-string/jumbo v35, "ui_type"

    const/16 v36, 0x96

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 444
    const-string/jumbo v35, "title"

    const-string/jumbo v36, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string/jumbo v35, "content"

    const-string/jumbo v36, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string/jumbo v35, "cancelable"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 447
    const/16 v35, 0x64

    invoke-static/range {v35 .. v35}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseNewJson(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 448
    goto/16 :goto_0

    .line 450
    .end local v10           #json10:Lorg/json/JSONObject;
    :pswitch_14
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 451
    .local v13, json15:Lorg/json/JSONObject;
    const-string/jumbo v35, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 452
    .restart local v26       #jsonTemp:Lorg/json/JSONObject;
    const-string/jumbo v35, "ui_type"

    const/16 v36, 0xe6

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 453
    const-string/jumbo v35, "title"

    const-string/jumbo v36, "messageTitle"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    const-string/jumbo v35, "content"

    const-string/jumbo v36, "messageContent"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    const/16 v35, 0xc8

    invoke-static/range {v35 .. v35}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseNewJson(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 456
    goto/16 :goto_0

    .line 458
    .end local v13           #json15:Lorg/json/JSONObject;
    .end local v26           #jsonTemp:Lorg/json/JSONObject;
    :pswitch_15
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 459
    .local v14, json16:Lorg/json/JSONObject;
    const-string/jumbo v35, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 460
    .restart local v26       #jsonTemp:Lorg/json/JSONObject;
    const-string/jumbo v35, "ui_type"

    const/16 v36, 0xd2

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 461
    const-string/jumbo v35, "title"

    const-string/jumbo v36, "messageTitle"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    const-string/jumbo v35, "content"

    const-string/jumbo v36, "messageContent"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    const/16 v35, 0xc8

    invoke-static/range {v35 .. v35}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseNewJson(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 464
    goto/16 :goto_0

    .line 466
    .end local v14           #json16:Lorg/json/JSONObject;
    .end local v26           #jsonTemp:Lorg/json/JSONObject;
    :pswitch_16
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 467
    .local v15, json17:Lorg/json/JSONObject;
    const-string/jumbo v35, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 468
    .restart local v25       #jsonArrayTemp:Lorg/json/JSONArray;
    const-string/jumbo v35, "ui_type"

    const/16 v36, 0x1f4

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 469
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 470
    .local v16, json17Array:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_6
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v35

    if-lt v7, v0, :cond_16

    .line 475
    const-string/jumbo v35, "menudata"

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    const-string/jumbo v35, "check"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 477
    const/16 v35, 0x1f4

    invoke-static/range {v35 .. v35}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseNewJson(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 478
    goto/16 :goto_0

    .line 471
    :cond_16
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 472
    .restart local v8       #jTemp:Lorg/json/JSONObject;
    const-string/jumbo v35, "title"

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "content"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 470
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 482
    .end local v7           #i:I
    .end local v8           #jTemp:Lorg/json/JSONObject;
    .end local v15           #json17:Lorg/json/JSONObject;
    .end local v16           #json17Array:Lorg/json/JSONArray;
    .end local v25           #jsonArrayTemp:Lorg/json/JSONArray;
    :pswitch_17
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 483
    .local v17, json18:Lorg/json/JSONObject;
    const-string/jumbo v35, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 484
    .restart local v25       #jsonArrayTemp:Lorg/json/JSONArray;
    const-string/jumbo v35, "ui_type"

    const/16 v36, 0x320

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 485
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 486
    .local v18, json18Array:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_7
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v35

    if-lt v7, v0, :cond_17

    .line 495
    const-string/jumbo v35, "menudata"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    const/16 v35, 0x320

    invoke-static/range {v35 .. v35}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseNewJson(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 497
    goto/16 :goto_0

    .line 487
    :cond_17
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 488
    .restart local v8       #jTemp:Lorg/json/JSONObject;
    const-string/jumbo v35, "id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "datastreamID"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string/jumbo v35, "title"

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "datastreamName"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string/jumbo v35, "value"

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "datastreamValue"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    const-string/jumbo v35, "unit"

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "datastreamUnit"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    const-string/jumbo v35, "help"

    const-string/jumbo v36, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 486
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 508
    .end local v7           #i:I
    .end local v8           #jTemp:Lorg/json/JSONObject;
    .end local v17           #json18:Lorg/json/JSONObject;
    .end local v18           #json18Array:Lorg/json/JSONArray;
    .end local v25           #jsonArrayTemp:Lorg/json/JSONArray;
    :pswitch_18
    const/16 v28, 0x2bc

    .line 509
    .local v28, newType:I
    const/16 v35, 0x26

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_18

    const/16 v35, 0x28

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_18

    const/16 v35, 0x2a

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_19

    .line 510
    :cond_18
    const/16 v28, 0x2c6

    .line 514
    :goto_8
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 515
    .local v11, json14:Lorg/json/JSONObject;
    const-string/jumbo v35, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 516
    .restart local v25       #jsonArrayTemp:Lorg/json/JSONArray;
    const-string/jumbo v35, "ui_type"

    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 517
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 518
    .local v12, json14Array:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_9
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v35

    if-lt v7, v0, :cond_1a

    .line 527
    const-string/jumbo v35, "menudata"

    move-object/from16 v0, v35

    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    const/16 v35, 0x2bc

    invoke-static/range {v35 .. v35}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseNewJson(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 529
    goto/16 :goto_0

    .line 512
    .end local v7           #i:I
    .end local v11           #json14:Lorg/json/JSONObject;
    .end local v12           #json14Array:Lorg/json/JSONArray;
    .end local v25           #jsonArrayTemp:Lorg/json/JSONArray;
    :cond_19
    const/16 v28, 0x2bc

    goto :goto_8

    .line 519
    .restart local v7       #i:I
    .restart local v11       #json14:Lorg/json/JSONObject;
    .restart local v12       #json14Array:Lorg/json/JSONArray;
    .restart local v25       #jsonArrayTemp:Lorg/json/JSONArray;
    :cond_1a
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 520
    .restart local v8       #jTemp:Lorg/json/JSONObject;
    const-string/jumbo v36, "id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v37, "dtcID"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1b

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v37, "dtcID"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    :goto_a
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string/jumbo v35, "title"

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "dtcCode"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string/jumbo v35, "context"

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "dtcDescription"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string/jumbo v35, "status"

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "dtcStatus"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string/jumbo v36, "help"

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v37, "dtcHelp"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1c

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string/jumbo v37, "dtcHelp"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    :goto_b
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    invoke-virtual {v12, v7, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 518
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    .line 520
    :cond_1b
    add-int/lit8 v35, v7, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    goto/16 :goto_a

    .line 524
    :cond_1c
    const-string/jumbo v35, ""

    goto :goto_b

    .line 260
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 352
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_18
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_18
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_18
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_17
        :pswitch_c
        :pswitch_c
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public static compatibleSendData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 32
    .parameter "strData"
    .parameter "identify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 33
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->setVersionCom(Z)V

    .line 34
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .local v23, srcData:Lorg/json/JSONObject;
    const-string/jumbo v20, ""

    .line 37
    .local v20, returnStr:Ljava/lang/String;
    if-nez p1, :cond_a

    .line 39
    const-string/jumbo v29, "type"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 40
    .local v27, type:I
    const-string/jumbo v29, "data"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 42
    .local v18, jsonData:Lorg/json/JSONObject;
    sparse-switch v27, :sswitch_data_0

    .line 176
    const-string/jumbo v29, "Sanda"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v31, "[compatibleReciveData:identify="

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "|type="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .end local v18           #jsonData:Lorg/json/JSONObject;
    .end local v27           #type:I
    :cond_0
    :goto_0
    move-object/from16 v21, v20

    .line 244
    .end local v20           #returnStr:Ljava/lang/String;
    .local v21, returnStr:Ljava/lang/String;
    :goto_1
    return-object v21

    .line 44
    .end local v21           #returnStr:Ljava/lang/String;
    .restart local v18       #jsonData:Lorg/json/JSONObject;
    .restart local v20       #returnStr:Ljava/lang/String;
    .restart local v27       #type:I
    :sswitch_0
    const-string/jumbo v29, "menudata"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 45
    .local v17, jsonArrayTemp:Lorg/json/JSONArray;
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 47
    .local v11, json300Array:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, i:I
    const/4 v8, 0x1

    .local v8, j:I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v29

    if-lt v8, v0, :cond_1

    .line 52
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonDAT(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 53
    goto :goto_0

    .line 48
    :cond_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v9, jTemp:Lorg/json/JSONObject;
    const-string/jumbo v29, "content"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "title"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {v11, v7, v9}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 47
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 55
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #jTemp:Lorg/json/JSONObject;
    .end local v11           #json300Array:Lorg/json/JSONArray;
    .end local v17           #jsonArrayTemp:Lorg/json/JSONArray;
    :sswitch_1
    const-string/jumbo v29, "ui_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 56
    .local v25, subType:I
    const/16 v19, 0x0

    .line 57
    .local v19, oldDialogType:I
    sparse-switch v25, :sswitch_data_1

    .line 81
    :goto_3
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v12, json5:Lorg/json/JSONObject;
    const-string/jumbo v29, "dialogStyle"

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v29, "messageTitle"

    const-string/jumbo v30, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v29, "messageContent"

    const-string/jumbo v30, "content"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonDAT(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 86
    goto/16 :goto_0

    .line 59
    .end local v12           #json5:Lorg/json/JSONObject;
    :sswitch_2
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .restart local v12       #json5:Lorg/json/JSONObject;
    const-string/jumbo v29, "messageTitle"

    const-string/jumbo v30, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string/jumbo v29, "messageContent"

    const-string/jumbo v30, "content"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const/16 v29, 0x5

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonDAT(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 63
    const-string/jumbo v30, "Sanda"

    new-instance v31, Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const-string/jumbo v29, "\u8f66\u4e3b"

    :goto_4
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v29, "Send\u6570\u636e\uff1a\u65e7\u7248"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v20

    .line 64
    .end local v20           #returnStr:Ljava/lang/String;
    .restart local v21       #returnStr:Ljava/lang/String;
    goto/16 :goto_1

    .line 63
    .end local v21           #returnStr:Ljava/lang/String;
    .restart local v20       #returnStr:Ljava/lang/String;
    :cond_2
    const-string/jumbo v29, "\u6280\u5e08"

    goto :goto_4

    .line 66
    .end local v12           #json5:Lorg/json/JSONObject;
    :sswitch_3
    const/16 v19, 0x1

    .line 67
    goto/16 :goto_3

    .line 69
    :sswitch_4
    const/16 v19, 0x2

    .line 70
    goto/16 :goto_3

    .line 72
    :sswitch_5
    const/16 v19, 0x3

    .line 73
    goto/16 :goto_3

    .line 75
    :sswitch_6
    const/16 v19, 0x4

    .line 76
    goto/16 :goto_3

    .line 78
    :sswitch_7
    const/16 v19, 0x5

    goto/16 :goto_3

    .line 88
    .end local v19           #oldDialogType:I
    .end local v25           #subType:I
    :sswitch_8
    const-string/jumbo v29, "ui_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 89
    .restart local v25       #subType:I
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .local v10, json200:Lorg/json/JSONObject;
    const-string/jumbo v29, "messageTitle"

    const-string/jumbo v30, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v29, "messageContent"

    const-string/jumbo v30, "content"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    sparse-switch v25, :sswitch_data_2

    goto/16 :goto_0

    .line 97
    :sswitch_9
    const/16 v29, 0x8

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonDAT(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 98
    goto/16 :goto_0

    .line 94
    :sswitch_a
    const/16 v29, 0x7

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonDAT(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 95
    goto/16 :goto_0

    .line 100
    :sswitch_b
    const/16 v29, 0xf

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonDAT(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 105
    .end local v10           #json200:Lorg/json/JSONObject;
    .end local v25           #subType:I
    :sswitch_c
    const-string/jumbo v29, "menudata"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 106
    .restart local v17       #jsonArrayTemp:Lorg/json/JSONArray;
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 107
    .local v13, json500Array:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v29

    if-lt v7, v0, :cond_3

    .line 112
    const/16 v29, 0x11

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonDAT(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 113
    goto/16 :goto_0

    .line 108
    :cond_3
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 109
    .restart local v9       #jTemp:Lorg/json/JSONObject;
    const-string/jumbo v29, "content"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "title"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-virtual {v13, v7, v9}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 107
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 116
    .end local v7           #i:I
    .end local v9           #jTemp:Lorg/json/JSONObject;
    .end local v13           #json500Array:Lorg/json/JSONArray;
    .end local v17           #jsonArrayTemp:Lorg/json/JSONArray;
    :sswitch_d
    const/16 v29, 0x9

    :try_start_0
    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonDAT(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 117
    .local v14, json600:Lorg/json/JSONObject;
    const-string/jumbo v29, "menudata"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 118
    .local v24, srcDataList:Lorg/json/JSONArray;
    const-string/jumbo v29, "buttondata"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 119
    .local v22, srcButtonList:Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 121
    .local v5, dataJsonArray:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_6
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v29

    if-lt v7, v0, :cond_4

    .line 128
    const-string/jumbo v29, "data1"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 131
    .local v3, buttonJsonArray:Lorg/json/JSONArray;
    const/4 v7, 0x0

    :goto_7
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v29

    if-lt v7, v0, :cond_5

    .line 137
    const-string/jumbo v29, "data"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 122
    .end local v3           #buttonJsonArray:Lorg/json/JSONArray;
    :cond_4
    new-instance v26, Lorg/json/JSONObject;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v26, temp:Lorg/json/JSONObject;
    const-string/jumbo v29, "datastreamName"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "title"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v29, "datastreamValue"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "value"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v29, "datastreamUnit"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "unit"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    move-object/from16 v0, v26

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 121
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 132
    .end local v26           #temp:Lorg/json/JSONObject;
    .restart local v3       #buttonJsonArray:Lorg/json/JSONArray;
    :cond_5
    new-instance v26, Lorg/json/JSONObject;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .restart local v26       #temp:Lorg/json/JSONObject;
    const-string/jumbo v29, "text"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "title"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string/jumbo v29, "buttonId"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "cmd"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    move-object/from16 v0, v26

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 139
    .end local v3           #buttonJsonArray:Lorg/json/JSONArray;
    .end local v5           #dataJsonArray:Lorg/json/JSONArray;
    .end local v7           #i:I
    .end local v14           #json600:Lorg/json/JSONObject;
    .end local v22           #srcButtonList:Lorg/json/JSONArray;
    .end local v24           #srcDataList:Lorg/json/JSONArray;
    .end local v26           #temp:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 140
    .local v6, e:Ljava/lang/Exception;
    const-string/jumbo v29, "Sanda"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 144
    .end local v6           #e:Ljava/lang/Exception;
    :sswitch_e
    const-string/jumbo v29, "menudata"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 145
    .restart local v17       #jsonArrayTemp:Lorg/json/JSONArray;
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 146
    .local v15, json700Array:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_8
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v29

    if-lt v7, v0, :cond_6

    .line 154
    const-string/jumbo v29, "ui_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x2c6

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 156
    const/16 v29, 0x26

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonDAT(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 157
    goto/16 :goto_0

    .line 147
    :cond_6
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .restart local v9       #jTemp:Lorg/json/JSONObject;
    const-string/jumbo v29, "dtcCode"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "title"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v29, "dtcDescription"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "context"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v29, "dtcStatus"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "status"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string/jumbo v29, "dtcHelp"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "help"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {v15, v7, v9}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 146
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 158
    .end local v9           #jTemp:Lorg/json/JSONObject;
    :cond_7
    const/16 v29, 0xe

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonDAT(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 160
    goto/16 :goto_0

    .line 162
    .end local v7           #i:I
    .end local v15           #json700Array:Lorg/json/JSONArray;
    .end local v17           #jsonArrayTemp:Lorg/json/JSONArray;
    :sswitch_f
    const-string/jumbo v29, "menudata"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 163
    .restart local v17       #jsonArrayTemp:Lorg/json/JSONArray;
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 164
    .local v16, json800Array:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_9
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v29

    if-lt v7, v0, :cond_8

    .line 173
    const/16 v29, 0x12

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonDAT(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 174
    goto/16 :goto_0

    .line 165
    :cond_8
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .restart local v9       #jTemp:Lorg/json/JSONObject;
    const-string/jumbo v30, "datastreamID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v31, "id"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v31, "id"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    :goto_a
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string/jumbo v29, "datastreamName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "title"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string/jumbo v29, "datastreamValue"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "value"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string/jumbo v29, "datastreamUnit"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "unit"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string/jumbo v29, "dtcHelp"

    const-string/jumbo v30, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v9}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 164
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    .line 166
    :cond_9
    const-string/jumbo v29, ""

    goto :goto_a

    .line 180
    .end local v7           #i:I
    .end local v9           #jTemp:Lorg/json/JSONObject;
    .end local v16           #json800Array:Lorg/json/JSONArray;
    .end local v17           #jsonArrayTemp:Lorg/json/JSONArray;
    .end local v18           #jsonData:Lorg/json/JSONObject;
    .end local v27           #type:I
    :cond_a
    const/16 v29, 0x1

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 182
    const-string/jumbo v29, "cmd"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_b

    const-string/jumbo v29, "cmd"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, cmdStr:Ljava/lang/String;
    :goto_b
    const-string/jumbo v29, "type"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 184
    .local v28, typeStr:Ljava/lang/String;
    const-string/jumbo v29, "1"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 186
    const-string/jumbo v29, "-1"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 187
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const-string/jumbo v31, "back"

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 188
    goto/16 :goto_0

    .line 182
    .end local v4           #cmdStr:Ljava/lang/String;
    .end local v28           #typeStr:Ljava/lang/String;
    :cond_b
    const-string/jumbo v4, ""

    goto :goto_b

    .line 189
    .restart local v4       #cmdStr:Ljava/lang/String;
    .restart local v28       #typeStr:Ljava/lang/String;
    :cond_c
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 191
    goto/16 :goto_0

    :cond_d
    const-string/jumbo v29, "6"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 193
    const-string/jumbo v29, "00"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 194
    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 195
    goto/16 :goto_0

    :cond_e
    const-string/jumbo v29, "01"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 196
    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const/16 v31, 0x1

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 197
    goto/16 :goto_0

    :cond_f
    const-string/jumbo v29, "02"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 198
    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const/16 v31, 0x2

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 199
    goto/16 :goto_0

    :cond_10
    const-string/jumbo v29, "03"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 200
    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const/16 v31, 0x3

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 201
    goto/16 :goto_0

    :cond_11
    const-string/jumbo v29, "04"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 202
    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const/16 v31, 0x4

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 204
    goto/16 :goto_0

    :cond_12
    const-string/jumbo v29, "7"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_13

    const-string/jumbo v29, "8"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_13

    const-string/jumbo v29, "15"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_13

    .line 205
    const-string/jumbo v29, "16"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 207
    :cond_13
    const/16 v29, 0x7

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 208
    goto/16 :goto_0

    :cond_14
    const-string/jumbo v29, "9"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 210
    const/16 v29, -0x9

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 211
    goto/16 :goto_0

    :cond_15
    const-string/jumbo v29, "3"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 213
    const-string/jumbo v29, "1"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 214
    const/16 v29, 0x11

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 215
    goto/16 :goto_0

    .line 216
    :cond_16
    const/16 v29, 0x11

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const-string/jumbo v31, "back"

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 218
    goto/16 :goto_0

    :cond_17
    const-string/jumbo v29, "18"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    .line 220
    const/16 v29, 0x12

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const-string/jumbo v31, "back"

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 221
    goto/16 :goto_0

    :cond_18
    const-string/jumbo v29, "19"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 222
    const/16 v29, 0x13

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const-string/jumbo v31, "back"

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 223
    goto/16 :goto_0

    :cond_19
    const-string/jumbo v29, "34"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 224
    const/16 v29, 0xe

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const-string/jumbo v31, "back"

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 225
    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v29, "27"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 227
    const/16 v29, 0xe

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const-string/jumbo v31, "back"

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 228
    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v29, "14"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1d

    .line 230
    const-string/jumbo v29, "ff"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1c

    .line 231
    const/16 v29, 0x1b

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const-string/jumbo v31, "back"

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 232
    goto/16 :goto_0

    .line 233
    :cond_1c
    const/16 v29, 0x1b

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 235
    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v29, "46"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1e

    .line 237
    const/16 v29, 0x2e

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const-string/jumbo v31, "back"

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 238
    goto/16 :goto_0

    .line 239
    :cond_1e
    const-string/jumbo v29, "Sanda"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v31, "[compatibleReciveData:identify="

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "|type="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "|cmdStr="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->createBaseOldJsonCMD(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "data"

    const-string/jumbo v31, ""

    invoke-virtual/range {v29 .. v31}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_8
        0x12c -> :sswitch_0
        0x1f4 -> :sswitch_c
        0x258 -> :sswitch_d
        0x2bc -> :sswitch_e
        0x320 -> :sswitch_f
    .end sparse-switch

    .line 57
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_2
        0x6e -> :sswitch_3
        0x78 -> :sswitch_4
        0x82 -> :sswitch_5
        0x8c -> :sswitch_6
        0x96 -> :sswitch_7
    .end sparse-switch

    .line 92
    :sswitch_data_2
    .sparse-switch
        0xd2 -> :sswitch_9
        0xdc -> :sswitch_a
        0xe6 -> :sswitch_b
    .end sparse-switch
.end method

.method public static createBaseNewJson(I)Lorg/json/JSONObject;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 542
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 543
    .local v0, json:Lorg/json/JSONObject;
    const-string/jumbo v1, "ver"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 545
    return-object v0
.end method

.method public static createBaseOldJsonCMD(I)Lorg/json/JSONObject;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 549
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 550
    .local v0, json:Lorg/json/JSONObject;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 551
    const-string/jumbo v1, "app"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    const-string/jumbo v1, "mode"

    const-string/jumbo v2, "CMD"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    return-object v0
.end method

.method public static createBaseOldJsonDAT(I)Lorg/json/JSONObject;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 557
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 558
    .local v0, json:Lorg/json/JSONObject;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 559
    const-string/jumbo v1, "app"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    const-string/jumbo v1, "mode"

    const-string/jumbo v2, "DAT"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    const-string/jumbo v1, "position"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    return-object v0
.end method

.method public static isVersionCom()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->isVersionCom:Z

    return v0
.end method

.method public static setVersionCom(Z)V
    .locals 0
    .parameter "isVersionCom"

    .prologue
    .line 27
    sput-boolean p0, Lcom/cnlaunch/diagnosemodule/utils/VersionCompatibileTool;->isVersionCom:Z

    .line 28
    return-void
.end method
