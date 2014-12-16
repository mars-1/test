.class Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;
.super Ljava/lang/Thread;
.source "CheckServerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZipFileThread"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "fileName"
    .parameter "filePath"
    .parameter "softPackageID"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 506
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->fileName:Ljava/lang/String;

    .line 507
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->filePath:Ljava/lang/String;

    .line 508
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 512
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->downloadList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$0(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 538
    :goto_0
    return-void

    .line 512
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 513
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->fileName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 514
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 515
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->check_serialNo:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVehiclesZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, zipPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->filePath:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->unZip(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, message:Ljava/lang/String;
    const-string/jumbo v4, "fail"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 518
    const-string/jumbo v4, "CN"

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "TW"

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 519
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->fileName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ":\u538b\u7f29\u5305\u89e3\u538b\u5931\u8d25\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, logTemp:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    .end local v1           #logTemp:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->fileName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ":Decompression Failed\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    .restart local v1       #logTemp:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    .end local v1           #logTemp:Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "CN"

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "TW"

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->country_lang:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 527
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->fileName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ":\u538b\u7f29\u5305\u89e3\u538b\u6210\u529f\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    .restart local v1       #logTemp:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 530
    .end local v1           #logTemp:Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->fileName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ":Decompression Success\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    .restart local v1       #logTemp:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ZipFileThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->logFilePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
