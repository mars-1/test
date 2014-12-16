.class Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;
.super Landroid/content/BroadcastReceiver;
.source "DiagnoseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;


# direct methods
.method constructor <init>(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    .line 306
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 309
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v7, "BluetoothConnSuccess"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 311
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 312
    .local v2, bblue:Landroid/os/Bundle;
    const/4 v7, 0x1

    sput-boolean v7, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    .line 314
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;
    invoke-static {v7}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$9(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    move-result-object v7

    const-string/jumbo v8, "carName"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setVehicleSoftname(Ljava/lang/String;)V

    .line 315
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;
    invoke-static {v7}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$9(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    move-result-object v7

    const-string/jumbo v8, "softVer"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setVehicleSoftVersion(Ljava/lang/String;)V

    .line 316
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;
    invoke-static {v7}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$9(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    move-result-object v7

    const-string/jumbo v8, "softLan"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setVehicleSoftLanguage(Ljava/lang/String;)V

    .line 317
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;
    invoke-static {v7}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$9(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    move-result-object v7

    const-string/jumbo v8, "serialNum"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setDeviceSN(Ljava/lang/String;)V

    .line 318
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;
    invoke-static {v7}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$9(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    move-result-object v7

    const-string/jumbo v8, "appVer"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setSoftVersion(Ljava/lang/String;)V

    .line 319
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;
    invoke-static {v7}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$9(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setAdditionInformation(Ljava/lang/String;)V

    .line 320
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    const-string/jumbo v8, "diagnoseLogSwitch"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    #setter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagnoseLogSwitch:Z
    invoke-static {v7, v8}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$10(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Z)V

    .line 321
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    const-string/jumbo v8, "diagnoseLogPath"

    const-string/jumbo v9, ""

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagnoseLogPath:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$11(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/String;)V

    .line 322
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    const-string/jumbo v8, "Lib_path"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "//"

    const-string/jumbo v10, "/"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->tempLibPath:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$12(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/String;)V

    .line 323
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    const-string/jumbo v8, "Lib_language"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->tempLanguage:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$13(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/String;)V

    .line 324
    const-string/jumbo v7, "DATASTREAM_PAGE_COUNT"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_PAGE:I

    .line 325
    const-string/jumbo v7, "binVer"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, binVersion:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 327
    const-string/jumbo v3, ""

    .line 329
    :cond_0
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;
    invoke-static {v7}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$9(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setDeviceVersion(Ljava/lang/String;)V

    .line 330
    const-string/jumbo v7, "carName"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->CURRENT_DIAG_CAR:Ljava/lang/String;

    .line 331
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->tempLibPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$14(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->tempLibPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$14(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 332
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    iget-object v8, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->tempLibPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$14(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->tempLanguage:Ljava/lang/String;
    invoke-static {v9}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$15(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->launchBluetooth(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$16(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    const-string/jumbo v8, ""

    #setter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->tempLibPath:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$12(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/String;)V

    .line 359
    .end local v2           #bblue:Landroid/os/Bundle;
    .end local v3           #binVersion:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    const-string/jumbo v7, "DeviceConnectLost"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 336
    const-string/jumbo v7, "com.cnlaunch.diagnose.service"

    const-string/jumbo v8, "Device Connect Lost"

    invoke-static {v7, v8}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string/jumbo v8, "\u84dd\u7259\u8fde\u63a5\u5f02\u5e38\u6216\u65ad\u5f00"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 340
    .local v4, buffer:[B
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v4, v8}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->writeBytes([BB)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    .end local v4           #buffer:[B
    :catch_0
    move-exception v5

    .line 342
    .local v5, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v5           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3
    const-string/jumbo v7, "com.cnlaunch.intent.action.DIAGNOSELOG_FILESIZE_OVERFLOW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 345
    const-string/jumbo v7, "com.cnlaunch.diagnose.service"

    const-string/jumbo v8, "Diagnose Log file size overflow"

    invoke-static {v7, v8}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v7, 0x0

    const/16 v8, 0xe

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 347
    .local v6, msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 348
    .local v1, b:Landroid/os/Bundle;
    const-string/jumbo v7, "data"

    iget-object v8, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    invoke-virtual {v8}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/cnlaunch/diagnosemodule/R$string;->dialog_log_file_size_overflow:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v6, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 350
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #calls: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseLogExceptionProcess(Landroid/os/Message;)V
    invoke-static {v7, v6}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$17(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Landroid/os/Message;)V

    goto :goto_0

    .line 351
    .end local v1           #b:Landroid/os/Bundle;
    .end local v6           #msg:Landroid/os/Message;
    :cond_4
    const-string/jumbo v7, "com.cnlaunch.intent.action.DIAGNOSELOG_IO_EXCEPTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 352
    const-string/jumbo v7, "com.cnlaunch.diagnose.service"

    const-string/jumbo v8, "Diagnose Log file io exception"

    invoke-static {v7, v8}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v7, 0x0

    const/16 v8, 0xe

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 354
    .restart local v6       #msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 355
    .restart local v1       #b:Landroid/os/Bundle;
    const-string/jumbo v7, "data"

    const-string/jumbo v8, "%1$s %2$s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    invoke-virtual {v11}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/cnlaunch/diagnosemodule/R$string;->dialog_log_io_exception:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "data"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v6, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 357
    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #calls: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseLogExceptionProcess(Landroid/os/Message;)V
    invoke-static {v7, v6}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$17(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Landroid/os/Message;)V

    goto/16 :goto_0
.end method
