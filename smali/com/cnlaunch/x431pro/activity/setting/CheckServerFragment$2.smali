.class Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;
.super Lcom/cnlaunch/framework/network/download/DownLoadCallback;
.source "CheckServerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->onSuccess(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field listFinishCount:I

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    .line 1237
    invoke-direct {p0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;-><init>()V

    .line 1238
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->listFinishCount:I

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "fileName"
    .parameter "strMsg"

    .prologue
    const/4 v8, 0x1

    .line 1315
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    new-instance v1, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    invoke-direct {v1, v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;-><init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V

    .line 1317
    .local v1, err:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
    const/16 v4, 0x4b6

    const/4 v5, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->addError(IILjava/lang/String;)V

    .line 1318
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listError:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$14(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1320
    const/4 v0, 0x0

    .line 1321
    .local v0, cStrT:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_file_str:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$7(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_download_str:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$8(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1322
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_failure_str:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$15(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string/jumbo v4, "CN"

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "TW"

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1326
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6587\u4ef6\u540d\u79f0:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",\u4e0b\u8f7d\u7ed3\u679c:\u5931\u8d25,\u5931\u8d25\u4fe1\u606f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1330
    .local v2, logTemp:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->listFinishCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->listFinishCount:I

    .line 1333
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->listFinishCount:I

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$0(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1334
    const-string/jumbo v4, "CN"

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "TW"

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1335
    :cond_1
    const-string/jumbo v3, "\n\u68c0\u6d4b\u5b8c\u6bd5\u3002\n"

    .line 1336
    .local v3, logover:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_end_str:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$11(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_upload_str:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$12(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$4(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1344
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$13(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1346
    .end local v3           #logover:Ljava/lang/String;
    :cond_2
    return-void

    .line 1328
    .end local v2           #logTemp:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "File name:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",Download Results:Failed,Error message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #logTemp:Ljava/lang/String;
    goto/16 :goto_0

    .line 1338
    :cond_4
    const-string/jumbo v3, "\nServer test is done. \n"

    .line 1339
    .restart local v3       #logover:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onLoading(Ljava/lang/String;II)V
    .locals 3
    .parameter "fileName"
    .parameter "bytesWritten"
    .parameter "totalSize"

    .prologue
    .line 1242
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onLoading(Ljava/lang/String;II)V

    .line 1246
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$6(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1251
    return-void

    .line 1246
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;

    .line 1247
    .local v0, temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1248
    invoke-virtual {v0, p3}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->setFileTotalSize(I)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "fileName"
    .parameter "filePath"

    .prologue
    .line 1255
    invoke-super/range {p0 .. p2}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->listInfo:Ljava/util/List;
    invoke-static {v11}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$6(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1311
    return-void

    .line 1256
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;

    .line 1257
    .local v10, temp:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1258
    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v12}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->setFinishDate(Ljava/util/Date;)V

    .line 1260
    const/4 v3, 0x0

    .line 1261
    .local v3, cStrT:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_file_str:Ljava/lang/String;
    invoke-static {v13}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$7(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_download_str:Ljava/lang/String;
    invoke-static {v13}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$8(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_success_str:Ljava/lang/String;
    invoke-static {v13}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$9(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v3, v13}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;
    invoke-static {v12}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$0(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1295
    move-object/from16 v0, p0

    iget v12, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->listFinishCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->listFinishCount:I

    .line 1296
    move-object/from16 v0, p0

    iget v12, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->listFinishCount:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;
    invoke-static {v13}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$0(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 1297
    const-string/jumbo v12, "CN"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;
    invoke-static {v13}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string/jumbo v12, "TW"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;
    invoke-static {v13}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1298
    :cond_3
    const-string/jumbo v9, "\n\u68c0\u6d4b\u5b8c\u6bd5\u3002\n"

    .line 1299
    .local v9, logover:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_end_str:Ljava/lang/String;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$11(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_server_upload_str:Ljava/lang/String;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$12(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->textViewPrintOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_checkserver:Landroid/widget/Button;
    invoke-static {v12}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$4(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Landroid/widget/Button;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->btn_upload_log:Landroid/widget/Button;
    invoke-static {v12}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$13(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Landroid/widget/Button;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1264
    .end local v9           #logover:Ljava/lang/String;
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 1265
    .local v2, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1266
    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->getFileTotalSize()I

    move-result v13

    int-to-long v6, v13

    .line 1267
    .local v6, fileSize:J
    const-wide/16 v4, 0x0

    .line 1268
    .local v4, downloadSp:D
    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-lez v13, :cond_5

    .line 1269
    const-wide/16 v13, 0x400

    div-long v13, v6, v13

    long-to-double v13, v13

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->timeConsuming()D

    move-result-wide v15

    div-double v4, v13, v15

    .line 1270
    const-wide v13, 0x408f400000000000L

    mul-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-double v13, v13

    const-wide v15, 0x408f400000000000L

    div-double v4, v13, v15

    .line 1274
    :cond_5
    const-string/jumbo v13, "CN"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string/jumbo v13, "TW"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;
    invoke-static {v14}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1275
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "\n\u6587\u4ef6\u4e0b\u8f7d\u6d4b\u8bd5\uff1a\n\u8fd4\u56de\u7ed3\u679c\uff1a\u6587\u4ef6\u540d\u79f0:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1276
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ",\u4e0b\u8f7d\u7ed3\u679c:\u6210\u529f,\u4e0b\u8f7d\u8017\u65f6"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1277
    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->timeConsuming()D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1278
    const-string/jumbo v14, "\u79d2,\u4e0b\u8f7d\u901f\u5ea6:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1279
    const-string/jumbo v14, "kb/s\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1275
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1288
    .local v8, logTemp:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;
    invoke-static {v13}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    new-instance v13, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v13, v14, v0, v1, v15}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;-><init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->start()V

    .line 1291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v13}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$10(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->deleteHandler(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1281
    .end local v8           #logTemp:Ljava/lang/String;
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "\nTesting file downloading\uff1a\nResults\uff1aFile name:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1282
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1283
    const-string/jumbo v14, ",Download Results:Success,Time of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1284
    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->timeConsuming()D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1285
    const-string/jumbo v14, "seconds,Speed of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1286
    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "kb/s\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1281
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #logTemp:Ljava/lang/String;
    goto :goto_3

    .line 1301
    .end local v2           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    .end local v4           #downloadSp:D
    .end local v6           #fileSize:J
    .end local v8           #logTemp:Ljava/lang/String;
    :cond_8
    const-string/jumbo v9, "\nServer test is done. \n"

    .line 1302
    .restart local v9       #logover:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
