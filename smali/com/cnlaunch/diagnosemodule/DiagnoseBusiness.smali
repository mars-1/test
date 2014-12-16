.class public Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;
.super Ljava/lang/Object;
.source "DiagnoseBusiness.java"


# static fields
.field private static instance:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

.field private static mContext:Landroid/content/Context;

.field private static mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->instance:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness$1;-><init>(Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;)V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->handler:Landroid/os/Handler;

    .line 103
    sput-object p1, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method static synthetic access$0()Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->instance:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    invoke-direct {v0, p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->instance:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    .line 109
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->instance:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    invoke-static {v0, p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->getInstance(Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;Landroid/content/Context;)Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    .line 111
    :cond_0
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->instance:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    return-object v0
.end method

.method public static isDiagAutoRefresh()Z
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->isDiagAutoRefresh()Z

    move-result v0

    return v0
.end method

.method public static sendCustomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "ui_type"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 359
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    invoke-static {p0, p1, p2, p3}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->sendWaitDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealUIData(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public static setDiagAutoRefresh(Z)V
    .locals 1
    .parameter "mDiagAutoRefresh"

    .prologue
    .line 347
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    invoke-virtual {v0, p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->setDiagAutoRefresh(Z)V

    .line 348
    return-void
.end method


# virtual methods
.method public LoadDynLib(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "pLibPath"
    .parameter "pLibLanguage"

    .prologue
    const/4 v4, 0x0

    .line 146
    const-string/jumbo v3, "#"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 147
    sput-object p2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    .line 159
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->LoadLocalSO()V

    .line 160
    new-instance v3, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;

    sget-object v5, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v5}, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    return-void

    .line 149
    :cond_1
    const-string/jumbo v3, "#"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, tempLanguage:[Ljava/lang/String;
    const-string/jumbo v3, "EN"

    sput-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    .line 151
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/utils/AndroidToLan;->toLan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, tempCountry:Ljava/lang/String;
    array-length v5, v2

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v0, v2, v3

    .line 153
    .local v0, lan:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 154
    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public LoadLocalSO()V
    .locals 2

    .prologue
    .line 136
    const-string/jumbo v0, "StdBusiness"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v0, "x431file"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->getJavaFunction()V

    .line 139
    const/4 v0, 0x3

    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->CURRENT_DIAG_CAR:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->nativeInit(ILjava/lang/String;)V

    .line 140
    return-void
.end method

.method public backToPreviousLevel()V
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->backToPreviousLevel()V

    .line 311
    return-void
.end method

.method public native diagFinish(Z)V
.end method

.method public native feedbackCommand([B)V
.end method

.method public native feedbackDiagDeviceData([B)V
.end method

.method public native feedbackUICommand(Ljava/lang/String;)I
.end method

.method public feekbackDataRemote(Ljava/lang/String;)V
    .locals 6
    .parameter "command"

    .prologue
    .line 266
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    .local v2, json:Lorg/json/JSONObject;
    const-string/jumbo v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, type:Ljava/lang/String;
    const-string/jumbo v5, "cmd"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, cmd:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, oldfeekback:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->feedbackUICommand(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #oldfeekback:Ljava/lang/String;
    .end local v4           #type:Ljava/lang/String;
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public native forwardOldUIData([B)V
.end method

.method public native getJavaFunction()V
.end method

.method public getLocalLanguage()I
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    .line 124
    :cond_0
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/AndroidToLan;->languages(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public native loadSoList(Ljava/lang/String;)V
.end method

.method public native nativeInit(ILjava/lang/String;)V
.end method

.method public pageStreamFeedbackMask(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "pType"
    .parameter "pControl"
    .parameter "page"

    .prologue
    .line 339
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->pageStreamFeedbackMask(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native recordLog(I)V
.end method

.method public sendByteUIData([B)V
    .locals 0
    .parameter "pUIByte"

    .prologue
    .line 291
    invoke-static {p1}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    .line 292
    return-void
.end method

.method public sendFeedbackCommand(Ljava/lang/String;)I
    .locals 6
    .parameter "command"

    .prologue
    const/4 v5, 0x0

    .line 167
    sget-boolean v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAG_LIB_OLD:Z

    if-nez v4, :cond_0

    .line 169
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    .local v2, json:Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, type:Ljava/lang/String;
    const-string/jumbo v4, "cmd"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, cmd:Ljava/lang/String;
    const-string/jumbo v4, "36"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_SPECIA_FUNCTION_REFRESH:Ljava/lang/String;

    .line 188
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 175
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #type:Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_ACTIVE_TEST_NORMAL:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #type:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 185
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 178
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #type:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "19"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 179
    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_DATASTREAM_REFRESH:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p0, p1}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->feedbackUICommand(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sendRemoteDiagStatus(I)V
    .locals 1
    .parameter "pStatus"

    .prologue
    .line 282
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->sendRemoteDiagStatue(I)V

    .line 283
    return-void
.end method

.method public sendUIByteData([BI)V
    .locals 2
    .parameter "pByteDate"
    .parameter "type"

    .prologue
    .line 243
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 244
    .local v0, diagnoseLogType:B
    :goto_0
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->writeBytes([BB)V

    .line 245
    return-void

    .line 243
    .end local v0           #diagnoseLogType:B
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public sendUIData(Ljava/lang/String;)V
    .locals 2
    .parameter "pUIJson"

    .prologue
    .line 228
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 229
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 230
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    return-void
.end method

.method public sendUIDataRemote(Ljava/lang/String;)V
    .locals 2
    .parameter "pUIJson"

    .prologue
    .line 253
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 254
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 255
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    return-void
.end method

.method public setDataStreamPageMask(Ljava/lang/String;)V
    .locals 1
    .parameter "mask"

    .prologue
    .line 197
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->setPageMask(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setDataStreamPageMask(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, maskList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->setPageMask(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setDiagnoseJsonCallback(Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseJsonListener;)V
    .locals 1
    .parameter "pOnDiagnoseJsonListener"

    .prologue
    .line 215
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->setOnDiagnoseJsonListener(Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseJsonListener;)V

    .line 216
    return-void
.end method

.method public setRemoteDiagnoseStatueCallback(Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;)V
    .locals 1
    .parameter "mDiagStatusListener"

    .prologue
    .line 219
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->setRemoteDiagStatusListener(Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;)V

    .line 220
    return-void
.end method

.method public switchPage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "pType"
    .parameter "pControl"
    .parameter "page"

    .prologue
    .line 324
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->mDiagnoseLogicBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->switchPage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 325
    return-void
.end method
