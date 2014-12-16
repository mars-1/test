.class public Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;
.super Ljava/lang/Object;
.source "DiagnoseLogicBusiness.java"


# static fields
.field private static instance:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;


# instance fields
.field dataStreamStartTime:J

.field private mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mDatastreamCount:Ljava/lang/String;

.field private mDatastreamPageCount:Ljava/lang/String;

.field private mDiagAutoRefresh:Z

.field private mDiagStatusListener:Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;

.field private mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

.field private mDiagnoseJsonListener:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseJsonListener;

.field private mMaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

.field private mPageControl:Ljava/lang/String;

.field private uiPagemask:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->instance:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    return-void
.end method

.method public constructor <init>(Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;Landroid/content/Context;)V
    .locals 3
    .parameter "pDiagnoseBusiness"
    .parameter "pContext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseJsonListener:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseJsonListener;

    .line 44
    iput-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    .line 45
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDatastreamCount:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDatastreamPageCount:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagAutoRefresh:Z

    .line 48
    iput-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagStatusListener:Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    .line 50
    iput v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mCurrentPage:I

    .line 51
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mPageControl:Ljava/lang/String;

    .line 438
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dataStreamStartTime:J

    .line 558
    iput-boolean v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->uiPagemask:Z

    .line 62
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    .line 63
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    return-object v0
.end method

.method private dealActiveTest(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 346
    const-string/jumbo v0, "9"

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    .line 349
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->isDiagAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    .line 352
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->start()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    const-string/jumbo v1, "9"

    sget-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_ACTIVE_TEST_NORMAL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->addDataInArrary(Ljava/lang/String;)V

    .line 356
    :cond_1
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->resetReferencesCmd()V

    .line 357
    return-void
.end method

.method private dealAgringWindow(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 507
    const-string/jumbo v0, "30"

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    .line 508
    const-string/jumbo v0, "1"

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    const-string/jumbo v1, "30"

    sget-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_DATASTREAM_REFRESH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->sendFeedbackCommand(Ljava/lang/String;)I

    .line 510
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->resetReferencesCmd()V

    .line 511
    return-void
.end method

.method private dealAlertDialog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 227
    const-string/jumbo v1, "150"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    sput-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_FEEDBACK:[B

    .line 229
    sput-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    .line 230
    sput-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    sget-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->LOAD_SO_LIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->loadSoList(Ljava/lang/String;)V

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.cnlaunch.diagnose.exit"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, exitIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    invoke-virtual {v1, v3}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->diagFinish(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->deleteTempSo()V

    .line 238
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->stopRecord()V

    .line 269
    .end local v0           #exitIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const-string/jumbo v1, "180"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    sput-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_FEEDBACK:[B

    .line 242
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    const-string/jumbo v2, "44"

    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_DATASTREAM_REFRESH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->sendFeedbackCommand(Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_2
    const-string/jumbo v1, "100"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->getDiagIdentity()I

    move-result v1

    if-nez v1, :cond_3

    .line 248
    new-instance v1, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness$1;-><init>(Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;)V

    .line 257
    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness$1;->start()V

    goto :goto_0

    .line 259
    :cond_3
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->getDiagIdentity()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 260
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->sendFeedbackCommand(Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_4
    const-string/jumbo v1, "160"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "170"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    :cond_5
    sput-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_FEEDBACK:[B

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealMessageBox(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private dealCombineMenu(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->resetReferencesCmd()V

    .line 464
    return-void
.end method

.method private dealDataStream(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 393
    const-string/jumbo v1, "900"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    :try_start_0
    const-string/jumbo v1, "pagecount"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDatastreamPageCount:Ljava/lang/String;

    .line 396
    const-string/jumbo v1, "count"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDatastreamCount:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_0
    :goto_0
    const-string/jumbo v1, "810"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 402
    const-string/jumbo v1, "19"

    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    .line 403
    const-string/jumbo v1, "-1"

    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    .line 413
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    if-nez v1, :cond_1

    .line 414
    new-instance v1, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    .line 415
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->start()V

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    if-eqz v1, :cond_3

    .line 418
    const-string/jumbo v1, "900"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 419
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mPageControl:Ljava/lang/String;

    const-string/jumbo v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mPageControl:Ljava/lang/String;

    const-string/jumbo v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mPageControl:Ljava/lang/String;

    const-string/jumbo v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    const-string/jumbo v2, "34"

    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mPageControl:Ljava/lang/String;

    iget v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mCurrentPage:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->pageStreamFeedbackMask(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->addDataInArrary(Ljava/lang/String;)V

    .line 421
    const-string/jumbo v1, "0"

    iput-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mPageControl:Ljava/lang/String;

    .line 431
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->resetReferencesCmd()V

    .line 432
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 404
    .end local v0           #e:Lorg/json/JSONException;
    :cond_4
    const-string/jumbo v1, "900"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 406
    const-string/jumbo v1, "34"

    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    .line 407
    const-string/jumbo v1, "7"

    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    goto :goto_1

    .line 409
    :cond_5
    const-string/jumbo v1, "18"

    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    .line 410
    const-string/jumbo v1, "-1"

    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    goto :goto_1

    .line 423
    :cond_6
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    const-string/jumbo v2, "34"

    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_DATASTREAM_PAGE_REFRESH:Ljava/lang/String;

    iget v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mCurrentPage:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->pageStreamFeedbackMask(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->addDataInArrary(Ljava/lang/String;)V

    goto :goto_2

    .line 425
    :cond_7
    const-string/jumbo v1, "810"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 426
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    const-string/jumbo v2, "18"

    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_DATASTREAM_REFRESH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->feedbackUICommand(Ljava/lang/String;)I

    goto :goto_2

    .line 428
    :cond_8
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    const-string/jumbo v2, "18"

    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_DATASTREAM_REFRESH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->addDataInArrary(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private dealFaultCode(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 367
    const-string/jumbo v0, "27"

    .line 368
    .local v0, feedbackType:Ljava/lang/String;
    const-string/jumbo v1, "730"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    const-string/jumbo v0, "55"

    .line 370
    :cond_0
    const-string/jumbo v1, "720"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->isDiagAutoRefresh()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    const-string/jumbo v1, "720"

    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    if-nez v1, :cond_1

    .line 373
    new-instance v1, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    .line 374
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->start()V

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    const-string/jumbo v2, "27"

    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_FAULTCODE_REFRESH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->addDataInArrary(Ljava/lang/String;)V

    .line 382
    :goto_0
    return-void

    .line 378
    :cond_2
    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    .line 379
    const-string/jumbo v1, "ff"

    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    .line 380
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->resetReferencesCmd()V

    goto :goto_0
.end method

.method private dealInputDialog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 278
    const/4 v0, 0x0

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_FEEDBACK:[B

    .line 279
    return-void
.end method

.method private dealMessageBox(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 520
    const-string/jumbo v0, "44"

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    .line 521
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->isDiagAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    .line 524
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->start()V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    const-string/jumbo v1, "44"

    sget-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_DATASTREAM_REFRESH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->addDataInArrary(Ljava/lang/String;)V

    .line 528
    :cond_1
    return-void
.end method

.method private dealNoUIFeedback(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 470
    const-string/jumbo v1, ""

    .line 472
    .local v1, command:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "cmd"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 473
    const-string/jumbo v4, "cmd"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 477
    :cond_0
    :goto_0
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->getDiagIdentity()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 478
    const-string/jumbo v4, "1000"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 479
    const-string/jumbo v4, "100"

    const-string/jumbo v5, "90"

    .line 480
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    sget v7, Lcom/cnlaunch/diagnosemodule/R$string;->dialog_wait_title:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    sget v8, Lcom/cnlaunch/diagnosemodule/R$string;->dialog_wait_content:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 479
    invoke-static {v4, v5, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->sendWaitDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealUIData(Ljava/lang/String;)V

    .line 481
    iget-boolean v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->uiPagemask:Z

    if-nez v4, :cond_1

    .line 482
    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->setPageMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->binaryString2hexString(Ljava/lang/String;)Ljava/lang/String;

    .line 484
    :cond_1
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 485
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    const-string/jumbo v5, "35"

    invoke-static {v5, v1}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->sendFeedbackCommand(Ljava/lang/String;)I

    .line 497
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->resetReferencesCmd()V

    .line 498
    return-void

    .line 474
    :catch_0
    move-exception v2

    .line 475
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 486
    .end local v2           #e:Lorg/json/JSONException;
    :cond_3
    const-string/jumbo v4, "1010"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 488
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/physics/utils/PhysicsCommonUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->bin2hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, version:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    const-string/jumbo v5, "54"

    invoke-static {v5, v3}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->sendFeedbackCommand(Ljava/lang/String;)I

    goto :goto_1

    .line 490
    .end local v3           #version:Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "1500"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 491
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/diagnosemodule/utils/AndroidToLan;->getDeviceAreaID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, area:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    const-string/jumbo v5, "1500"

    invoke-static {v5, v0}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->sendFeedbackCommand(Ljava/lang/String;)I

    goto :goto_1

    .line 494
    .end local v0           #area:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    const-string/jumbo v5, "0"

    invoke-static {v5, v1}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->sendFeedbackCommand(Ljava/lang/String;)I

    goto :goto_1
.end method

.method private dealSelectMenu(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 314
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    if-eqz v4, :cond_0

    .line 315
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    invoke-virtual {v4}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->stopThread()V

    .line 316
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    invoke-virtual {v4}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->clearCommandList()V

    .line 317
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    .line 319
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->setDiagAutoRefresh(Z)V

    .line 320
    const-string/jumbo v0, ""

    .line 322
    .local v0, backMask:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "menudata"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 323
    .local v3, jsonArray:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v2, v4, :cond_1

    .line 329
    .end local v2           #i:I
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    :goto_1
    const-string/jumbo v4, "3"

    sput-object v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    .line 330
    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    .line 331
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->resetReferencesCmd()V

    .line 332
    return-void

    .line 324
    .restart local v2       #i:I
    .restart local v3       #jsonArray:Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    .end local v2           #i:I
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private dealSpecialFunction(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 454
    const-string/jumbo v0, "36"

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    const-string/jumbo v1, "36"

    sget-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_SPECIA_FUNCTION_REFRESH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->feedbackUICommand(Ljava/lang/String;)I

    .line 456
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->resetReferencesCmd()V

    .line 457
    return-void
.end method

.method private getDataStreamCount(Ljava/lang/String;)I
    .locals 4
    .parameter "mask"

    .prologue
    .line 162
    const/4 v1, 0x0

    .line 163
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 167
    return v1

    .line 164
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_1

    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getDatastreamMask(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .parameter "pControl"
    .parameter "pageNumberCount"
    .parameter "page"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_1

    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 148
    .local v0, tempMask:Ljava/lang/String;
    :goto_0
    sget-boolean v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->datastreamRecord:Z

    if-eqz v1, :cond_0

    .line 149
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_MASK:Ljava/lang/String;

    .line 152
    :cond_0
    return-object v0

    .line 147
    .end local v0           #tempMask:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance(Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;Landroid/content/Context;)Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;
    .locals 1
    .parameter "pDiagnoseBusiness"
    .parameter "pContext"

    .prologue
    .line 67
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->instance:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;-><init>(Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->instance:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    .line 70
    :cond_0
    sget-object v0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->instance:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    return-object v0
.end method

.method private getZeroMask(I)Ljava/lang/String;
    .locals 4
    .parameter "count"

    .prologue
    .line 627
    const-string/jumbo v1, ""

    .line 628
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 631
    return-object v1

    .line 629
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private printDatastreamTime()V
    .locals 4

    .prologue
    .line 440
    iget-wide v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dataStreamStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dataStreamStartTime:J

    .line 442
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dataStreamStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dataStreamStartTime:J

    .line 443
    const-string/jumbo v0, "bcf"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4e0e\u4e0a\u5e27\u6570\u636e\u6d41\u76f8\u5dee: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dataStreamStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]\u6beb\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dataStreamStartTime:J

    .line 445
    return-void
.end method

.method private resetReferencesCmd()V
    .locals 1

    .prologue
    .line 546
    const-string/jumbo v0, "0"

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_DATASTREAM_REFRESH:Ljava/lang/String;

    .line 547
    const-string/jumbo v0, "0"

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_DATASTREAM_PAGE_REFRESH:Ljava/lang/String;

    .line 548
    const-string/jumbo v0, "0"

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_FAULTCODE_REFRESH:Ljava/lang/String;

    .line 549
    const-string/jumbo v0, "FF"

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_SPECIA_FUNCTION_REFRESH:Ljava/lang/String;

    .line 550
    const-string/jumbo v0, "-1"

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_ACTIVE_TEST_NORMAL:Ljava/lang/String;

    .line 551
    return-void
.end method


# virtual methods
.method public backToPreviousLevel()V
    .locals 6

    .prologue
    .line 82
    const-string/jumbo v1, "100"

    const-string/jumbo v2, "90"

    .line 83
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    sget v4, Lcom/cnlaunch/diagnosemodule/R$string;->dialog_wait_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    sget v5, Lcom/cnlaunch/diagnosemodule/R$string;->dialog_wait_content:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v1, v2, v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->sendWaitDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealUIData(Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    const-string/jumbo v2, "18"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    const-string/jumbo v2, "19"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    const-string/jumbo v2, "44"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    const-string/jumbo v2, "30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    :cond_0
    const-string/jumbo v1, "-1"

    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_DATASTREAM_REFRESH:Ljava/lang/String;

    .line 105
    :goto_0
    return-void

    .line 91
    :cond_1
    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    const-string/jumbo v2, "720"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    const-string/jumbo v1, "-1"

    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_FAULTCODE_REFRESH:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_2
    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    const-string/jumbo v2, "34"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    const-string/jumbo v1, "7"

    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_DATASTREAM_PAGE_REFRESH:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_3
    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_FEEDBACK:[B

    .line 100
    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    const-string/jumbo v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 101
    :cond_4
    const/4 v1, 0x0

    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_FEEDBACK:[B

    .line 103
    :cond_5
    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, publicBackCmd:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->sendFeedbackCommand(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dealMenu(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    const/4 v3, 0x0

    .line 288
    const-string/jumbo v2, "1"

    sput-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    .line 289
    sput-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_FEEDBACK:[B

    .line 290
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->stopThread()V

    .line 292
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->clearCommandList()V

    .line 293
    iput-object v3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    .line 295
    :cond_0
    const/4 v1, 0x0

    .line 297
    .local v1, firstItem:I
    :try_start_0
    const-string/jumbo v2, "item"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 301
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->resetReferencesCmd()V

    .line 303
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 304
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->setDiagAutoRefresh(Z)V

    .line 305
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public dealUIData(Ljava/lang/String;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 178
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, json:Lorg/json/JSONObject;
    const-string/jumbo v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, type:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseJsonListener:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseJsonListener;

    invoke-interface {v5, v3, p1}, Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseJsonListener;->onDiagnoseJsonCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v5, "ver"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 183
    const-string/jumbo v5, "ver"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->SO_DIAG_VERSION:I

    .line 187
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, dataJson:Lorg/json/JSONObject;
    const-string/jumbo v5, "ui_type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, ui_type:Ljava/lang/String;
    const-string/jumbo v5, "100"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 191
    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealAlertDialog(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 218
    .end local v0           #dataJson:Lorg/json/JSONObject;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #type:Ljava/lang/String;
    .end local v4           #ui_type:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 185
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #type:Ljava/lang/String;
    :cond_1
    const/4 v5, -0x1

    sput v5, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->SO_DIAG_VERSION:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #type:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 216
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 192
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #dataJson:Lorg/json/JSONObject;
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #type:Ljava/lang/String;
    .restart local v4       #ui_type:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v5, "200"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 193
    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealInputDialog(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 194
    :cond_3
    const-string/jumbo v5, "300"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 195
    invoke-virtual {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealMenu(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 196
    :cond_4
    const-string/jumbo v5, "500"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 197
    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealSelectMenu(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 198
    :cond_5
    const-string/jumbo v5, "600"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 199
    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealActiveTest(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 200
    :cond_6
    const-string/jumbo v5, "700"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 201
    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealFaultCode(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 202
    :cond_7
    const-string/jumbo v5, "800"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "900"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 203
    :cond_8
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->uiPagemask:Z

    .line 204
    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealDataStream(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 205
    :cond_9
    const-string/jumbo v5, "1100"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 206
    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealSpecialFunction(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 207
    :cond_a
    const-string/jumbo v5, "1200"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 208
    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealCombineMenu(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 209
    :cond_b
    const-string/jumbo v5, "1000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 210
    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealNoUIFeedback(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 211
    :cond_c
    const-string/jumbo v5, "1300"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 212
    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealAgringWindow(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public deleteTempSo()V
    .locals 5

    .prologue
    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, dataDir:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 641
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "/libs/cnlaunch/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->delectFile(Ljava/lang/String;)I

    .line 646
    return-void

    .line 642
    :catch_0
    move-exception v1

    .line 643
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMemoryThread()Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMemoryThread:Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;

    return-object v0
.end method

.method public isDiagAutoRefresh()Z
    .locals 1

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagAutoRefresh:Z

    return v0
.end method

.method public pageStreamFeedbackMask(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "pType"
    .parameter "pControl"
    .parameter "page"

    .prologue
    .line 129
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDatastreamCount:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, datastreamCount:I
    sget v7, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_PAGE:I

    rem-int v7, v1, v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    sget v8, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_PAGE:I

    div-int v8, v1, v8

    add-int v5, v7, v8

    .line 131
    .local v5, pageNumberCount:I
    invoke-direct {p0, p2, v5, p3}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->getDatastreamMask(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, mask:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->getDataStreamCount(Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, dataStreamCount:I
    invoke-static {v4}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->binaryString2hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, hexMask:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "0000"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToTwoHexBytes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToHexBytes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToHexBytes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 134
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, tempCmd:Ljava/lang/String;
    invoke-static {p1, v6}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, feedBackResult:Ljava/lang/String;
    return-object v2

    .line 130
    .end local v0           #dataStreamCount:I
    .end local v2           #feedBackResult:Ljava/lang/String;
    .end local v3           #hexMask:Ljava/lang/String;
    .end local v4           #mask:Ljava/lang/String;
    .end local v5           #pageNumberCount:I
    .end local v6           #tempCmd:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public sendRemoteDiagStatue(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagStatusListener:Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;

    invoke-interface {v0, p1}, Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;->OnRemoteDiagStatusCallback(I)V

    .line 59
    return-void
.end method

.method public setDiagAutoRefresh(Z)V
    .locals 0
    .parameter "diagAutoRefresh"

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagAutoRefresh:Z

    .line 536
    return-void
.end method

.method public setOnDiagnoseJsonListener(Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseJsonListener;)V
    .locals 0
    .parameter "pOnDiagnoseJsonListener"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseJsonListener:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseJsonListener;

    .line 75
    return-void
.end method

.method public setPageMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "command"

    .prologue
    const/4 v11, 0x0

    .line 588
    const-string/jumbo v6, "100"

    const-string/jumbo v7, "90"

    .line 589
    iget-object v8, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    sget v9, Lcom/cnlaunch/diagnosemodule/R$string;->dialog_wait_title:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    sget v10, Lcom/cnlaunch/diagnosemodule/R$string;->dialog_wait_content:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 588
    invoke-static {v6, v7, v8, v9}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->sendWaitDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealUIData(Ljava/lang/String;)V

    .line 590
    iput v11, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mCurrentPage:I

    .line 591
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 592
    move-object v1, p1

    .line 593
    .local v1, mask:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 594
    .local v3, maskLength:I
    const/4 v4, 0x0

    .line 595
    .local v4, startIndex:I
    const/4 v2, 0x0

    .line 596
    .local v2, maskCount:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .local v5, tempMask:Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->getDataStreamCount(Ljava/lang/String;)I

    move-result v6

    sget v7, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_PAGE:I

    if-gt v6, v7, :cond_1

    .line 598
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_5

    .line 617
    sput-object v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_MASK:Ljava/lang/String;

    .line 618
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    return-object v6

    .line 600
    .end local v0           #i:I
    :cond_1
    const/4 v0, 0x0

    .line 601
    .restart local v0       #i:I
    :goto_1
    if-gt v0, v3, :cond_0

    .line 602
    sget v6, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_PAGE:I

    if-eq v2, v6, :cond_2

    if-lt v0, v3, :cond_3

    .line 603
    :cond_2
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->getZeroMask(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v3, v0

    invoke-direct {p0, v8}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->getZeroMask(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v11, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 606
    move v4, v0

    .line 607
    const/4 v2, 0x0

    .line 609
    :cond_3
    if-ge v0, v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_4

    .line 610
    add-int/lit8 v2, v2, 0x1

    .line 611
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 614
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setPageMask(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, maskList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v10, 0x31

    const/4 v9, 0x0

    .line 560
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->uiPagemask:Z

    .line 561
    const-string/jumbo v4, "100"

    const-string/jumbo v5, "90"

    .line 562
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    sget v7, Lcom/cnlaunch/diagnosemodule/R$string;->dialog_wait_title:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mContext:Landroid/content/Context;

    sget v8, Lcom/cnlaunch/diagnosemodule/R$string;->dialog_wait_content:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 561
    invoke-static {v4, v5, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->sendWaitDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealUIData(Ljava/lang/String;)V

    .line 563
    iput v9, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mCurrentPage:I

    .line 564
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 565
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .local v3, tempMask:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 578
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_MASK:Ljava/lang/String;

    .line 584
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4

    .line 569
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v2, temp:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_2

    .line 573
    invoke-virtual {v3, v1, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 571
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setRemoteDiagStatusListener(Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;)V
    .locals 0
    .parameter "mDiagStatusListener"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagStatusListener:Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;

    .line 55
    return-void
.end method

.method public switchPage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "pType"
    .parameter "pControl"
    .parameter "page"

    .prologue
    .line 112
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mPageControl:Ljava/lang/String;

    .line 113
    iput p3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mCurrentPage:I

    .line 114
    return-void
.end method
