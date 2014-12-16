.class public Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
.super Ljava/lang/Object;
.source "DiagnoseUIDataBusiness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$MyInputFilter;
    }
.end annotation


# instance fields
.field private currentVer:I

.field private mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

.field private mInputAfterMask:Z

.field private mMyFilter:[Landroid/text/InputFilter;

.field private mService:Landroid/os/Messenger;

.field private mUIType:Ljava/lang/String;

.field private strReg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Messenger;)V
    .locals 3
    .parameter "mContext"
    .parameter "mService"

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    .line 60
    iput-boolean v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mInputAfterMask:Z

    .line 63
    iput v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->currentVer:I

    .line 563
    const-string/jumbo v0, "^([1-9]\\d{0,7}|(-|-[1-9]\\d{0,2})|-?0)(\\.|\\.\\d{0,4})?$"

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->strReg:Ljava/lang/String;

    .line 564
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$MyInputFilter;

    invoke-direct {v1, p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$MyInputFilter;-><init>(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;)V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mMyFilter:[Landroid/text/InputFilter;

    .line 83
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mService:Landroid/os/Messenger;

    .line 85
    new-instance v0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    sget v1, Lcom/cnlaunch/diagnosemodule/R$style;->DiagnoseMessageDialogTheme:I

    invoke-direct {v0, p1, v1}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 86
    return-void
.end method

.method private SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "type"
    .parameter "cmd"

    .prologue
    .line 664
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 665
    .local v2, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 666
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string/jumbo v3, "cmd"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 669
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v1

    .line 671
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 563
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->strReg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 662
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mInputAfterMask:Z

    return v0
.end method

.method private jsonUIActiveTest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 11
    .parameter "ui_type"
    .parameter "dataJson"
    .parameter "title"

    .prologue
    .line 302
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v6, dataStreamList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v3, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    :try_start_0
    const-string/jumbo v10, "menudata"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 306
    .local v5, dataJsonArray:Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v8, v10, :cond_1

    .line 316
    const-string/jumbo v10, "buttondata"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 317
    .local v2, buttonJsonArray:Lorg/json/JSONArray;
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-lt v8, v10, :cond_3

    .line 327
    .end local v2           #buttonJsonArray:Lorg/json/JSONArray;
    .end local v5           #dataJsonArray:Lorg/json/JSONArray;
    .end local v8           #i:I
    :goto_2
    iget-object v10, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    if-eqz v10, :cond_0

    .line 328
    iget-object v10, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    invoke-interface {v10, p1, v6, v3}, Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;->onDiagnoseActiveTestDataCallback(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 329
    :cond_0
    return-void

    .line 307
    .restart local v5       #dataJsonArray:Lorg/json/JSONArray;
    .restart local v8       #i:I
    :cond_1
    :try_start_1
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 308
    .local v9, menu:Lorg/json/JSONObject;
    new-instance v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-direct {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;-><init>()V

    .line 309
    .local v0, bean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    const-string/jumbo v10, "id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 310
    const-string/jumbo v10, "id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setId(Ljava/lang/String;)V

    .line 311
    :cond_2
    const-string/jumbo v10, "title"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setTitle(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v10, "value"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setValue(Ljava/lang/String;)V

    .line 313
    const-string/jumbo v10, "unit"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setUnit(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 318
    .end local v0           #bean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    .end local v9           #menu:Lorg/json/JSONObject;
    .restart local v2       #buttonJsonArray:Lorg/json/JSONArray;
    :cond_3
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 319
    .local v4, buttonObject:Lorg/json/JSONObject;
    new-instance v1, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-direct {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;-><init>()V

    .line 320
    .local v1, button:Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;
    const-string/jumbo v10, "title"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->setTitle(Ljava/lang/String;)V

    .line 321
    const-string/jumbo v10, "cmd"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->setCommand(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 324
    .end local v1           #button:Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;
    .end local v2           #buttonJsonArray:Lorg/json/JSONArray;
    .end local v4           #buttonObject:Lorg/json/JSONObject;
    .end local v5           #dataJsonArray:Lorg/json/JSONArray;
    .end local v8           #i:I
    :catch_0
    move-exception v7

    .line 325
    .local v7, e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private jsonUIAgringWindow(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 490
    const-string/jumbo v0, ""

    .line 492
    .local v0, dataStr:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "Sanda"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string/jumbo v2, "title"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 497
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    invoke-interface {v2, p1, v0}, Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;->onDiagnoseArgingWindowCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_0
    return-void

    .line 494
    :catch_0
    move-exception v1

    .line 495
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private jsonUIAlertDialog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 509
    :try_start_0
    const-string/jumbo v6, "150"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "180"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 510
    :cond_0
    const/4 v6, 0x0

    sput-object v6, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_TYPE:Ljava/lang/String;

    .line 511
    const/4 v6, 0x0

    sput-object v6, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_PUBLIC_BACK:Ljava/lang/String;

    .line 555
    :cond_1
    :goto_0
    return-void

    .line 515
    :cond_2
    const-string/jumbo v6, "100"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "90"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 516
    :cond_3
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "content"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "content"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-static {v7, v6}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v1

    .line 552
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 516
    .end local v1           #e:Lorg/json/JSONException;
    :cond_4
    :try_start_1
    const-string/jumbo v6, "Loading..."

    goto :goto_1

    .line 519
    :cond_5
    const-string/jumbo v6, "160"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "170"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 520
    :cond_6
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    invoke-direct {p0, v6, p2}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUIMessageBox(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 523
    :cond_7
    new-instance v6, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    sget v8, Lcom/cnlaunch/diagnosemodule/R$style;->DiagnoseMessageDialogTheme:I

    invoke-direct {v6, v7, v8}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 524
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setCancelable(Z)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 525
    const-string/jumbo v6, "title"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 526
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    const-string/jumbo v7, "title"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 527
    :cond_8
    const-string/jumbo v6, "content"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 528
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    const-string/jumbo v7, "content"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 529
    :cond_9
    const-string/jumbo v6, "110"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 530
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    const v7, 0x104000a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 531
    .local v3, ok:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v6, v3, p0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 548
    .end local v3           #ok:Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->getDiagIdentity()I

    move-result v6

    if-lez v6, :cond_1

    .line 549
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->show()Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;

    goto/16 :goto_0

    .line 532
    :cond_b
    const-string/jumbo v6, "120"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 533
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    const v7, 0x104000a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 534
    .restart local v3       #ok:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    const/high16 v7, 0x104

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, cancel:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v6, v3, p0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 536
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v6, v0, p0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    goto :goto_2

    .line 537
    .end local v0           #cancel:Ljava/lang/String;
    .end local v3           #ok:Ljava/lang/String;
    :cond_c
    const-string/jumbo v6, "130"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 538
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    sget v7, Lcom/cnlaunch/diagnosemodule/R$string;->yes:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 539
    .local v5, yes:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    sget v7, Lcom/cnlaunch/diagnosemodule/R$string;->no:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, no:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v6, v5, p0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 541
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v6, v2, p0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    goto :goto_2

    .line 542
    .end local v2           #no:Ljava/lang/String;
    .end local v5           #yes:Ljava/lang/String;
    :cond_d
    const-string/jumbo v6, "140"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 543
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    sget v7, Lcom/cnlaunch/diagnosemodule/R$string;->retry:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, retry:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    const/high16 v7, 0x104

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 545
    .restart local v0       #cancel:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v6, v4, p0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 546
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v6, v0, p0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private jsonUICombineMenu(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 161
    const-string/jumbo v7, ""

    .line 162
    .local v7, title:Ljava/lang/String;
    const/4 v4, 0x0

    .line 163
    .local v4, firstItem:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, combineMenuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;>;"
    :try_start_0
    const-string/jumbo v8, "title"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 166
    const-string/jumbo v8, "title"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    :cond_0
    const-string/jumbo v8, "item"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 168
    const-string/jumbo v8, "item"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 169
    :cond_1
    const-string/jumbo v8, "menudata"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 170
    .local v6, jsonArray:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lt v5, v8, :cond_3

    .line 180
    .end local v5           #i:I
    .end local v6           #jsonArray:Lorg/json/JSONArray;
    :goto_1
    iget-object v8, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    if-eqz v8, :cond_2

    .line 181
    iget-object v8, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    invoke-interface {v8, p1, v7, v4, v1}, Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;->onDiagnoseCombineMenu(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 182
    :cond_2
    return-void

    .line 171
    .restart local v5       #i:I
    .restart local v6       #jsonArray:Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 172
    .local v2, data:Lorg/json/JSONObject;
    new-instance v0, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;

    invoke-direct {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;-><init>()V

    .line 173
    .local v0, bean:Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;
    const-string/jumbo v8, "title"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;->setTitle(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v8, "value"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;->setValue(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 177
    .end local v0           #bean:Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;
    .end local v2           #data:Lorg/json/JSONObject;
    .end local v5           #i:I
    .end local v6           #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 178
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private jsonUIDataStream(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 11
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v2, dataStreamList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const-string/jumbo v3, ""

    .local v3, title:Ljava/lang/String;
    const-string/jumbo v4, "0"

    .local v4, pageCount:Ljava/lang/String;
    const-string/jumbo v5, "0"

    .line 376
    .local v5, count:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v0, "menudata"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 377
    .local v9, jsonArray:Lorg/json/JSONArray;
    const-string/jumbo v0, "900"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 379
    const-string/jumbo v0, "pagecount"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    const-string/jumbo v0, "count"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 384
    :goto_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lt v8, v0, :cond_2

    .line 398
    .end local v8           #i:I
    .end local v9           #jsonArray:Lorg/json/JSONArray;
    :goto_2
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;->onDiagnoseDatastreamCallback(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    return-void

    .line 382
    .restart local v9       #jsonArray:Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 385
    .restart local v8       #i:I
    :cond_2
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 386
    .local v10, menu:Lorg/json/JSONObject;
    new-instance v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-direct {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;-><init>()V

    .line 387
    .local v6, bean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    const-string/jumbo v0, "id"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    const-string/jumbo v0, "id"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setId(Ljava/lang/String;)V

    .line 389
    :cond_3
    const-string/jumbo v0, "title"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setTitle(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v0, "value"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setValue(Ljava/lang/String;)V

    .line 391
    const-string/jumbo v0, "unit"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setUnit(Ljava/lang/String;)V

    .line 392
    const-string/jumbo v0, "help"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setHelp(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 384
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 395
    .end local v6           #bean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    .end local v8           #i:I
    .end local v9           #jsonArray:Lorg/json/JSONArray;
    .end local v10           #menu:Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 396
    .local v7, e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private jsonUIFaultCode(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 339
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v2, faultCodesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;>;"
    const/4 v4, 0x1

    .line 341
    .local v4, isFaultCode:Z
    const-string/jumbo v7, "710"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 342
    const/4 v4, 0x0

    .line 344
    :cond_0
    :try_start_0
    const-string/jumbo v7, "menudata"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 345
    .local v5, jsonArray:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lt v3, v7, :cond_2

    .line 360
    .end local v3           #i:I
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    :goto_1
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    if-eqz v7, :cond_1

    .line 361
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    invoke-interface {v7, p1, v2}, Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;->onDiagnoseFaultCodeDataCallback(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 362
    :cond_1
    return-void

    .line 346
    .restart local v3       #i:I
    .restart local v5       #jsonArray:Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 347
    .local v6, menu:Lorg/json/JSONObject;
    new-instance v0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    invoke-direct {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;-><init>()V

    .line 348
    .local v0, bean:Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;
    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 349
    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->setId(Ljava/lang/String;)V

    .line 350
    :cond_3
    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->setTitle(Ljava/lang/String;)V

    .line 351
    const-string/jumbo v7, "context"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->setContext(Ljava/lang/String;)V

    .line 352
    const-string/jumbo v7, "status"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->setStatus(Ljava/lang/String;)V

    .line 353
    const-string/jumbo v7, "help"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->setHelp(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, v4}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->setFaultCode(Z)V

    .line 355
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    .end local v0           #bean:Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;
    .end local v3           #i:I
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    .end local v6           #menu:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 358
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private jsonUIInputDialog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 578
    iput-boolean v7, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mInputAfterMask:Z

    .line 579
    const-string/jumbo v2, ""

    .line 580
    .local v2, mInputFeedbackType:Ljava/lang/String;
    new-instance v1, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 581
    .local v1, inputServer:Landroid/widget/EditText;
    sget v4, Lcom/cnlaunch/diagnosemodule/R$drawable;->dialog_edit_background:I

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 582
    const-string/jumbo v4, "210"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 584
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 587
    const-string/jumbo v2, "7"

    .line 604
    :cond_0
    :goto_0
    new-instance v4, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    iget-object v5, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    sget v6, Lcom/cnlaunch/diagnosemodule/R$style;->DiagnoseMessageDialogTheme:I

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 605
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v4, v7}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setCancelable(Z)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 607
    :try_start_0
    const-string/jumbo v4, "title"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 608
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    const-string/jumbo v5, "title"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 609
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    const v5, 0x108009b

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setIcon(I)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 610
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    const-string/jumbo v5, "content"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 611
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v4, v1}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_1
    move-object v3, v2

    .line 616
    .local v3, tempType:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$2;

    invoke-direct {v6, p0, v1, v3}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$2;-><init>(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 637
    const-string/jumbo v4, "230"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "240"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 638
    :cond_2
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    const/high16 v5, 0x104

    new-instance v6, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$3;

    invoke-direct {v6, p0, v3}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$3;-><init>(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 655
    :cond_3
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->getDiagIdentity()I

    move-result v4

    if-lez v4, :cond_4

    .line 656
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v4}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->show()Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;

    .line 659
    :cond_4
    return-void

    .line 588
    .end local v3           #tempType:Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "220"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 590
    const-string/jumbo v2, "8"

    .line 591
    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "230"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 593
    iput-boolean v5, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mInputAfterMask:Z

    .line 594
    const/16 v4, 0x3002

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 595
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mMyFilter:[Landroid/text/InputFilter;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 597
    const-string/jumbo v2, "15"

    .line 598
    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "240"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 600
    iput-boolean v5, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mInputAfterMask:Z

    .line 601
    const-string/jumbo v2, "16"

    goto/16 :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private jsonUIMessageBox(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 230
    const-string/jumbo v3, ""

    .local v3, title:Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 231
    .local v0, context:Ljava/lang/String;
    const/4 v2, -0x1

    .line 233
    .local v2, ratio:I
    :try_start_0
    const-string/jumbo v4, "title"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    const-string/jumbo v4, "content"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    const-string/jumbo v4, "170"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    const-string/jumbo v4, "ratio"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 241
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    if-eqz v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    invoke-interface {v4, p1, v3, v0, v2}, Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;->onDiagnoseMessageBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    :cond_1
    return-void

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private jsonUISelectMenu(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 10
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 409
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v7, selectMenuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;>;"
    const-string/jumbo v0, ""

    .line 412
    .local v0, backMask:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v8, "menudata"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 413
    .local v5, jsonArray:Lorg/json/JSONArray;
    const-string/jumbo v8, "check"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 414
    .local v4, isSelect:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lt v3, v8, :cond_1

    .line 428
    .end local v3           #i:I
    .end local v4           #isSelect:Z
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    :goto_1
    iget-object v8, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    if-eqz v8, :cond_0

    .line 429
    iget-object v8, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    const-string/jumbo v9, "17"

    invoke-interface {v8, v9, v7}, Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;->onDiagnoseDatastreamSelectMenuDataCallback(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 430
    :cond_0
    const-string/jumbo v8, "0"

    sput-object v8, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_DATASTREAM_REFRESH:Ljava/lang/String;

    .line 431
    return-void

    .line 415
    .restart local v3       #i:I
    .restart local v4       #isSelect:Z
    .restart local v5       #jsonArray:Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 416
    .local v6, menu:Lorg/json/JSONObject;
    new-instance v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    invoke-direct {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;-><init>()V

    .line 417
    .local v1, bean:Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;
    const-string/jumbo v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 418
    const-string/jumbo v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setId(Ljava/lang/String;)V

    .line 419
    :cond_2
    const-string/jumbo v8, "title"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setTitle(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v1, v4}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setCheck(Z)V

    .line 421
    invoke-virtual {v1, v3}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setNum(I)V

    .line 422
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 414
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    .end local v1           #bean:Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;
    .end local v3           #i:I
    .end local v4           #isSelect:Z
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    .end local v6           #menu:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 426
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private jsonUIShowDialog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 189
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 190
    .local v2, imageView:Landroid/widget/ImageView;
    new-instance v4, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    iget-object v5, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    sget v6, Lcom/cnlaunch/diagnosemodule/R$style;->DiagnoseMessageDialogTheme:I

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 191
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setCancelable(Z)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 193
    :try_start_0
    const-string/jumbo v4, "title"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    const-string/jumbo v5, "title"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 198
    :goto_0
    const-string/jumbo v4, "1420"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "context"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/BitmapUtils;->getShowBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    .line 200
    if-eqz v2, :cond_1

    .line 201
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v4, v2}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$1;

    invoke-direct {v6, p0, p1}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$1;-><init>(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    .line 220
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v4}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->show()Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;

    .line 221
    return-void

    .line 196
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    const v5, 0x1040014

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setTitle(I)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 203
    .end local v1           #e:Lorg/json/JSONException;
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    iget-object v5, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    sget v6, Lcom/cnlaunch/diagnosemodule/R$string;->dialog_no_picture:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    goto :goto_1

    .line 204
    :cond_2
    const-string/jumbo v4, "1410"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    const-string/jumbo v4, "context"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 206
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 207
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v4, v2}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    goto :goto_1

    .line 209
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    const-string/jumbo v5, "context"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private jsonUISpecialFunction(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 19
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    .line 252
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v5, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v3, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v4, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    const/4 v7, 0x2

    .line 256
    .local v7, colums:I
    const-string/jumbo v6, ""

    .line 258
    .local v6, title:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 259
    const-string/jumbo v1, "colums"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 260
    const-string/jumbo v1, "buttondata"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 261
    .local v9, buttonJsonArray:Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_1

    .line 268
    const-string/jumbo v1, "menutitle"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 269
    .local v14, titleJsonArray:Lorg/json/JSONArray;
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_2

    .line 277
    const-string/jumbo v1, "menudata"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 278
    .local v17, valueJsonArray:Lorg/json/JSONArray;
    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lt v12, v1, :cond_3

    .line 287
    .end local v9           #buttonJsonArray:Lorg/json/JSONArray;
    .end local v12           #i:I
    .end local v14           #titleJsonArray:Lorg/json/JSONArray;
    .end local v17           #valueJsonArray:Lorg/json/JSONArray;
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    if-eqz v1, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;->onDiagnoseSpeciaFunctionCallback(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 289
    :cond_0
    return-void

    .line 262
    .restart local v9       #buttonJsonArray:Lorg/json/JSONArray;
    .restart local v12       #i:I
    :cond_1
    :try_start_1
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 263
    .local v10, buttonObject:Lorg/json/JSONObject;
    new-instance v8, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-direct {v8}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;-><init>()V

    .line 264
    .local v8, button:Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;
    const-string/jumbo v1, "title"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->setTitle(Ljava/lang/String;)V

    .line 265
    const-string/jumbo v1, "cmd"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->setCommand(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 270
    .end local v8           #button:Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;
    .end local v10           #buttonObject:Lorg/json/JSONObject;
    .restart local v14       #titleJsonArray:Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 271
    .local v15, titleValue:Lorg/json/JSONObject;
    new-instance v13, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;

    invoke-direct {v13}, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;-><init>()V

    .line 272
    .local v13, titleBean:Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;
    const-string/jumbo v1, "title"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;->setTitle(Ljava/lang/String;)V

    .line 273
    const-string/jumbo v1, "model"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;->setModel(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v1, "scale"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;->setScale(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 279
    .end local v13           #titleBean:Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;
    .end local v15           #titleValue:Lorg/json/JSONObject;
    .restart local v17       #valueJsonArray:Lorg/json/JSONArray;
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 280
    .local v18, valueObject:Lorg/json/JSONObject;
    new-instance v16, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;

    invoke-direct/range {v16 .. v16}, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;-><init>()V

    .line 281
    .local v16, valueBean:Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;
    const-string/jumbo v1, "value"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;->setTitle(Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 284
    .end local v9           #buttonJsonArray:Lorg/json/JSONArray;
    .end local v12           #i:I
    .end local v14           #titleJsonArray:Lorg/json/JSONArray;
    .end local v16           #valueBean:Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;
    .end local v17           #valueJsonArray:Lorg/json/JSONArray;
    .end local v18           #valueObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 285
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method


# virtual methods
.method public closeAlertDialog(Ljava/lang/String;Z)V
    .locals 1
    .parameter "uiType"
    .parameter "flag"

    .prologue
    .line 144
    const-string/jumbo v0, "100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->create()Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->create()Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;->dismiss()V

    .line 151
    :cond_3
    if-eqz p2, :cond_0

    .line 152
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 153
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mAlertDialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->create()Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public getCurrentVer()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->currentVer:I

    return v0
.end method

.method public jsonUIMenu(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 12
    .parameter "ui_type"
    .parameter "dataJson"

    .prologue
    const/4 v11, 0x0

    .line 440
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v5, menuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;>;"
    const/4 v4, 0x0

    .line 442
    .local v4, firstItem:I
    const/4 v2, 0x0

    .local v2, title:Ljava/lang/String;
    const/4 v3, 0x0

    .line 444
    .local v3, help:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v0, "310"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "320"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    const-string/jumbo v0, "help"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 448
    :cond_1
    const-string/jumbo v0, "item"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 449
    const-string/jumbo v0, "menudata"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 450
    .local v9, jsonArray:Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lt v8, v0, :cond_4

    .line 462
    .end local v8           #i:I
    .end local v9           #jsonArray:Lorg/json/JSONArray;
    :goto_1
    sget v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->diagIdentity:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    .line 463
    const-string/jumbo v0, "300"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 478
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;->onDiagnoseMenuDataCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 480
    :cond_3
    const-string/jumbo v0, "0"

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_DATASTREAM_REFRESH:Ljava/lang/String;

    .line 481
    return-void

    .line 451
    .restart local v8       #i:I
    .restart local v9       #jsonArray:Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 452
    .local v10, menu:Lorg/json/JSONObject;
    new-instance v6, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;

    invoke-direct {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;-><init>()V

    .line 453
    .local v6, bean:Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;
    const-string/jumbo v0, "id"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 454
    const-string/jumbo v0, "id"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;->setId(Ljava/lang/String;)V

    .line 455
    :cond_5
    const-string/jumbo v0, "title"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;->setTitle(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 450
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 458
    .end local v6           #bean:Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;
    .end local v8           #i:I
    .end local v9           #jsonArray:Lorg/json/JSONArray;
    .end local v10           #menu:Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 459
    .local v7, e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 469
    .end local v7           #e:Lorg/json/JSONException;
    :cond_6
    sget v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->diagIdentity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->currentVer:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 472
    :cond_7
    const-string/jumbo v0, "300"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 680
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 681
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    const-string/jumbo v1, "110"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    const-string/jumbo v1, "120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    :cond_0
    const-string/jumbo v0, "6"

    const-string/jumbo v1, "00"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    const-string/jumbo v1, "130"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    const-string/jumbo v0, "6"

    const-string/jumbo v1, "02"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    const-string/jumbo v1, "140"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 688
    const-string/jumbo v0, "6"

    const-string/jumbo v1, "04"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_3
    :goto_0
    return-void

    .line 690
    :cond_4
    const/4 v0, -0x2

    if-ne p2, v0, :cond_7

    .line 691
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    const-string/jumbo v1, "130"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 692
    const-string/jumbo v0, "6"

    const-string/jumbo v1, "03"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_5
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    const-string/jumbo v1, "120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    const-string/jumbo v1, "140"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 694
    :cond_6
    const-string/jumbo v0, "6"

    const-string/jumbo v1, "01"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_7
    const/4 v0, -0x3

    if-ne p2, v0, :cond_3

    .line 697
    const-string/jumbo v0, "bcf"

    const-string/jumbo v1, "ignore..........."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCallbackListener(Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;)V
    .locals 0
    .parameter "IDiagnoseDataCallback"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mIDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    .line 80
    return-void
.end method

.method public setCurrentVer(I)V
    .locals 0
    .parameter "currentVer"

    .prologue
    .line 70
    iput p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->currentVer:I

    .line 71
    return-void
.end method

.method public stdJsonToUI(Ljava/lang/String;)V
    .locals 6
    .parameter "pUIJson"

    .prologue
    .line 95
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, json:Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, type:Ljava/lang/String;
    const-string/jumbo v4, "ver"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    const-string/jumbo v4, "ver"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->SO_DIAG_VERSION:I

    .line 101
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, dataJson:Lorg/json/JSONObject;
    const-string/jumbo v4, "ui_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    .line 103
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->closeAlertDialog(Ljava/lang/String;Z)V

    .line 104
    const-string/jumbo v4, "100"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUIAlertDialog(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 133
    .end local v0           #dataJson:Lorg/json/JSONObject;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #type:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 100
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #type:Ljava/lang/String;
    :cond_1
    const/4 v4, -0x1

    sput v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->SO_DIAG_VERSION:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #type:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 106
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #dataJson:Lorg/json/JSONObject;
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #type:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUIInputDialog(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 108
    :cond_3
    const-string/jumbo v4, "300"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 109
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUIMenu(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 110
    :cond_4
    const-string/jumbo v4, "500"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 111
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUISelectMenu(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 112
    :cond_5
    const-string/jumbo v4, "600"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 113
    iget-object v5, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-direct {p0, v5, v0, v4}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUIActiveTest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v4, ""

    goto :goto_2

    .line 114
    :cond_7
    const-string/jumbo v4, "700"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 115
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUIFaultCode(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 116
    :cond_8
    const-string/jumbo v4, "800"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 117
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUIDataStream(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 118
    :cond_9
    const-string/jumbo v4, "900"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 119
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUIDataStream(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 120
    :cond_a
    const-string/jumbo v4, "1100"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 121
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUISpecialFunction(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 122
    :cond_b
    const-string/jumbo v4, "1200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 123
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUICombineMenu(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 124
    :cond_c
    const-string/jumbo v4, "1400"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 125
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUIShowDialog(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 126
    :cond_d
    const-string/jumbo v4, "1300"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mUIType:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUIAgringWindow(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
