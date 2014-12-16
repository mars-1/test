.class public Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;
.super Ljava/lang/Object;
.source "ReportProduceTool.java"


# static fields
.field private static install:Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;


# instance fields
.field private conclusion:Ljava/lang/String;

.field private dataStreamList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;"
        }
    .end annotation
.end field

.field private faultcodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;",
            ">;"
        }
    .end annotation
.end field

.field private jsonDataStreamList:Lorg/json/JSONArray;

.field private jsonFaultCodeList:Lorg/json/JSONArray;

.field private jsonMessageList:Lorg/json/JSONArray;

.field private reportTheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->install:Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->faultcodeList:Ljava/util/ArrayList;

    .line 39
    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->dataStreamList:Ljava/util/ArrayList;

    .line 41
    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonFaultCodeList:Lorg/json/JSONArray;

    .line 42
    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonDataStreamList:Lorg/json/JSONArray;

    .line 43
    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonMessageList:Lorg/json/JSONArray;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->reportTheme:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->conclusion:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->faultcodeList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonFaultCodeList:Lorg/json/JSONArray;

    .line 63
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonDataStreamList:Lorg/json/JSONArray;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->dataStreamList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonMessageList:Lorg/json/JSONArray;

    .line 66
    return-void
.end method

.method public static getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->install:Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->install:Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    .line 57
    :cond_0
    sget-object v0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->install:Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    return-object v0
.end method

.method private getJsonDataStream()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    const-string/jumbo v2, ""

    .line 87
    .local v2, result:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 88
    .local v1, json:Lorg/json/JSONObject;
    const-string/jumbo v4, "syss"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonDataStreamList:Lorg/json/JSONArray;

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .end local v1           #json:Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 88
    .restart local v1       #json:Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonDataStreamList:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private getJsonFaultCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 98
    const-string/jumbo v2, ""

    .line 100
    .local v2, result:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .local v1, json:Lorg/json/JSONObject;
    const-string/jumbo v4, "syss"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonFaultCodeList:Lorg/json/JSONArray;

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .end local v1           #json:Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 101
    .restart local v1       #json:Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonFaultCodeList:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private isSameInfo(Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->dataStreamList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->dataStreamList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 136
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .line 137
    .local v0, temp:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    invoke-virtual {p1, v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSameInfo(Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->faultcodeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->faultcodeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 117
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    .line 118
    .local v0, temp:Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;
    invoke-virtual {p1, v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static saveReport(Landroid/content/Context;Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;)V
    .locals 7
    .parameter "mContext"
    .parameter "reportInfo"

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getPro_serial_no()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, key:Ljava/lang/String;
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "report_save"

    invoke-virtual {v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, mapStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 346
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;>;>;"
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 347
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;>;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 351
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;>;>;"
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :goto_2
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/conversion/ObjectConversion;->writeObjectToBytes(Ljava/lang/Object;)[B

    move-result-object v3

    .line 361
    .local v3, mapBytes:[B
    new-instance v4, Ljava/lang/String;

    .end local v4           #mapStr:Ljava/lang/String;
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 362
    .restart local v4       #mapStr:Ljava/lang/String;
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "report_save"

    invoke-virtual {v5, v6, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;>;"
    .end local v3           #mapBytes:[B
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/conversion/ObjectConversion;->readBytesToObject([B)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;>;>;"
    check-cast v2, Ljava/util/HashMap;

    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;>;>;"
    goto :goto_1

    .line 356
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 357
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public addDataStreamList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, datastreamList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 198
    .local v5, listsize:I
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 199
    .local v3, jsonArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 211
    if-lez v5, :cond_0

    .line 212
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 213
    .local v4, jsonObject:Lorg/json/JSONObject;
    const-string/jumbo v6, "sys"

    invoke-virtual {v4, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string/jumbo v6, "dataflows"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonDataStreamList:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v1           #i:I
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #i:I
    .restart local v3       #jsonArray:Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-direct {p0, v6}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->isSameInfo(Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 201
    add-int/lit8 v5, v5, -0x1

    .line 199
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 205
    .local v2, json:Lorg/json/JSONObject;
    const-string/jumbo v7, "id"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string/jumbo v7, "name"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string/jumbo v7, "value"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string/jumbo v7, "unit"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public addFaultCodeList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, faultcodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 159
    .local v5, listsize:I
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 160
    .local v3, jsonArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 173
    if-lez v5, :cond_0

    .line 174
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .local v4, jsonObject:Lorg/json/JSONObject;
    const-string/jumbo v6, "sys"

    invoke-virtual {v4, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string/jumbo v6, "faults"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonFaultCodeList:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v1           #i:I
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #i:I
    .restart local v3       #jsonArray:Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    invoke-direct {p0, v6}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->isSameInfo(Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 162
    add-int/lit8 v5, v5, -0x1

    .line 160
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .local v2, json:Lorg/json/JSONObject;
    const-string/jumbo v7, "id"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string/jumbo v7, "code"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string/jumbo v6, "clean_status"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string/jumbo v7, "status"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string/jumbo v7, "fault_description"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getContext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public addMessageList(Ljava/lang/String;)V
    .locals 14
    .parameter "uiJson"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 232
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 236
    .local v2, json:Lorg/json/JSONObject;
    const-string/jumbo v7, "type"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, type:Ljava/lang/String;
    const-string/jumbo v7, "100"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 240
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v7, "data"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, dataJson:Lorg/json/JSONObject;
    const-string/jumbo v7, "ui_type"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, ui_type:Ljava/lang/String;
    const-string/jumbo v7, "110"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 245
    const-string/jumbo v7, "content"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, message:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 249
    const-string/jumbo v7, "Sanda"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "message"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 251
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string/jumbo v7, "item"

    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonMessageList:Lorg/json/JSONArray;

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v0           #dataJson:Lorg/json/JSONObject;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #ui_type:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Lorg/json/JSONException;
    const-string/jumbo v7, "Sanda"

    new-array v8, v13, [Ljava/lang/Object;

    const-string/jumbo v9, "JSONException error\uff01\uff01"

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearReportProduceTool()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->faultcodeList:Ljava/util/ArrayList;

    .line 76
    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->dataStreamList:Ljava/util/ArrayList;

    .line 77
    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonFaultCodeList:Lorg/json/JSONArray;

    .line 78
    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonDataStreamList:Lorg/json/JSONArray;

    .line 79
    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonMessageList:Lorg/json/JSONArray;

    .line 80
    sput-object v0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->install:Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    .line 81
    return-void
.end method

.method public createRemoteReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;
    .locals 5
    .parameter "mContext"
    .parameter "proserial_no"
    .parameter "goloserial_no"
    .parameter "location"
    .parameter "goloLon"
    .parameter "goloLat"

    .prologue
    .line 310
    new-instance v1, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;-><init>()V

    .line 311
    .local v1, reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->reportTheme:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f0706fa

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setTheme(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getJsonFaultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setFault_codes(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getJsonDataStream()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setData_flow(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, lan:Ljava/lang/String;
    const-string/jumbo v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "zh"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setLanguage(Ljava/lang/String;)V

    .line 316
    sget-object v2, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYYMMDDHHMMSS:Ljava/lang/String;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/date/DateUtils;->currentDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setDiagnosis_time(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setType(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v1, p3}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setSerial_no(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1, p2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setPro_serial_no(Ljava/lang/String;)V

    .line 320
    if-eqz p4, :cond_1

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->getLat()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setTechnician_lat(Ljava/lang/String;)V

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->getLon()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setTechnician_lon(Ljava/lang/String;)V

    .line 324
    :cond_1
    invoke-virtual {v1, p6}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setCar_lat(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1, p5}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setCar_lon(Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->conclusion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setConclusion(Ljava/lang/String;)V

    .line 327
    return-object v1

    .line 315
    :cond_2
    const-string/jumbo v2, "en"

    goto :goto_0
.end method

.method public createReport(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;)Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;
    .locals 5
    .parameter "mContext"
    .parameter "serial_no"
    .parameter "location"

    .prologue
    .line 286
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonDataStreamList:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonFaultCodeList:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonMessageList:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 287
    const/4 v1, 0x0

    .line 306
    :goto_0
    return-object v1

    .line 289
    :cond_0
    new-instance v1, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;-><init>()V

    .line 290
    .local v1, reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->reportTheme:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f0706fa

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setTheme(Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->reportTheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setCars(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getJsonFaultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setFault_codes(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getJsonDataStream()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setData_flow(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, lan:Ljava/lang/String;
    const-string/jumbo v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const-string/jumbo v2, "zh"

    :goto_1
    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setLanguage(Ljava/lang/String;)V

    .line 296
    sget-object v2, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYYMMDDHHMMSS:Ljava/lang/String;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/date/DateUtils;->currentDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setDiagnosis_time(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setType(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getMessageListString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setMessagelist(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1, p2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setPro_serial_no(Ljava/lang/String;)V

    .line 300
    if-eqz p3, :cond_2

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->getLat()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setTechnician_lat(Ljava/lang/String;)V

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;->getLon()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setTechnician_lon(Ljava/lang/String;)V

    .line 305
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->conclusion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setConclusion(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_3
    const-string/jumbo v2, "en"

    goto :goto_1
.end method

.method public getFaultCodeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 373
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->faultcodeList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->faultcodeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 374
    :cond_0
    const/4 v2, 0x0

    .line 386
    :goto_0
    return-object v2

    .line 376
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->faultcodeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 377
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    .line 378
    .local v1, temp:Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;
    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getMessageListString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonMessageList:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->jsonMessageList:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getReportTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->reportTheme:Ljava/lang/String;

    return-object v0
.end method

.method public setConclusion(Ljava/lang/String;)V
    .locals 0
    .parameter "conclusion"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->conclusion:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setReportTheme(Ljava/lang/String;)V
    .locals 0
    .parameter "reportTheme"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->reportTheme:Ljava/lang/String;

    .line 274
    return-void
.end method
