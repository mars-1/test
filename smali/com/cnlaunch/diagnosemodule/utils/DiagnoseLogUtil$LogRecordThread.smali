.class public Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;
.super Ljava/lang/Thread;
.source "DiagnoseLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogRecordThread"
.end annotation


# instance fields
.field private dataOutputStream:Ljava/io/DataOutputStream;

.field private mDiagnoseLogPath:Ljava/lang/String;

.field private mDiagnoseLogSwitch:Z

.field private mEncDecMatrix:[B

.field private mFullFilename:Ljava/lang/String;

.field private mIsIOException:Z

.field private mLogLinkedList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

.field private mSrcMatrixBuffer:[B

.field private mSrcMatrixBufferPosition:I

.field private mStopFlag:Z

.field private packageCount:I

.field final synthetic this$0:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;ZLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter "diagnoseLogSwitch"
    .parameter "diagnoseLogPath"

    .prologue
    const/16 v3, 0x1000

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 345
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->this$0:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 334
    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mLogLinkedList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 335
    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    .line 336
    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBuffer:[B

    .line 337
    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mEncDecMatrix:[B

    .line 339
    iput-boolean v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mDiagnoseLogSwitch:Z

    .line 340
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mDiagnoseLogPath:Ljava/lang/String;

    .line 342
    iput v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->packageCount:I

    .line 346
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mLogLinkedList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 347
    new-instance v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    const-string/jumbo v1, "V01.01"

    invoke-direct {v0, v1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    .line 348
    iput-boolean v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mStopFlag:Z

    .line 349
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBuffer:[B

    .line 350
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mEncDecMatrix:[B

    .line 351
    iput v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    .line 352
    iput-boolean p2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mDiagnoseLogSwitch:Z

    .line 353
    iput-object p3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mDiagnoseLogPath:Ljava/lang/String;

    .line 354
    iput-boolean v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mIsIOException:Z

    .line 355
    iput v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->packageCount:I

    .line 356
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mFullFilename:Ljava/lang/String;

    .line 357
    return-void
.end method

.method private CreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "path"
    .parameter "filename"

    .prologue
    .line 657
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 659
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 662
    :cond_0
    invoke-direct {p0, p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->scanFiles(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    .line 663
    .local v3, fileVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/File;>;"
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_1

    .line 664
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v6, -0xa

    .line 665
    .local v5, needDeleteFileCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v5, :cond_3

    .line 669
    .end local v4           #i:I
    .end local v5           #needDeleteFileCount:I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mFullFilename:Ljava/lang/String;

    .line 670
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mFullFilename:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 674
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .end local v2           #file:Ljava/io/File;
    :cond_2
    :goto_1
    return-object v2

    .line 666
    .restart local v4       #i:I
    .restart local v5       #needDeleteFileCount:I
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 665
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 675
    .end local v4           #i:I
    .end local v5           #needDeleteFileCount:I
    .restart local v2       #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 676
    .local v0, e:Ljava/lang/Exception;
    const-string/jumbo v6, "DiagnoseLogUntil"

    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mFullFilename:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private doAfterFileSizeOverflowException(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$FileSizeOverflowException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 748
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mIsIOException:Z

    .line 749
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->this$0:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    #getter for: Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->access$0(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 750
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.cnlaunch.intent.action.DIAGNOSELOG_FILESIZE_OVERFLOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->this$0:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    #getter for: Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->access$0(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 753
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private doAfterIOException(Ljava/io/IOException;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 755
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mIsIOException:Z

    .line 756
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->this$0:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    #getter for: Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->access$0(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 757
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.cnlaunch.intent.action.DIAGNOSELOG_IO_EXCEPTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 758
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v2, "data"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->this$0:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    #getter for: Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->access$0(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 762
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mFullFilename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 763
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mFullFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 765
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 768
    .end local v0           #file:Ljava/io/File;
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->this$0:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    monitor-enter v3

    .line 769
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->this$0:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 768
    monitor-exit v3

    .line 771
    return-void

    .line 768
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private scanFiles(Ljava/lang/String;)Ljava/util/Vector;
    .locals 12
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 625
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 626
    .local v0, diagnoseLogFileVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/File;>;"
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    .local v6, root:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 628
    .local v2, files:[Ljava/io/File;
    array-length v8, v2

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 634
    const/4 v3, 0x0

    .line 635
    .local v3, flag:Ljava/io/File;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v4, v7, :cond_2

    .line 649
    return-object v0

    .line 628
    .end local v3           #flag:Ljava/io/File;
    .end local v4           #i:I
    :cond_0
    aget-object v1, v2, v7

    .line 629
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 630
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 636
    .end local v1           #file:Ljava/io/File;
    .restart local v3       #flag:Ljava/io/File;
    .restart local v4       #i:I
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #flag:Ljava/io/File;
    check-cast v3, Ljava/io/File;

    .line 637
    .restart local v3       #flag:Ljava/io/File;
    add-int/lit8 v5, v4, 0x1

    .local v5, j:I
    :goto_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v5, v7, :cond_3

    .line 635
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 638
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 639
    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v0, v7, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 640
    invoke-virtual {v0, v3, v5}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 641
    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #flag:Ljava/io/File;
    check-cast v3, Ljava/io/File;

    .line 637
    .restart local v3       #flag:Ljava/io/File;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private writeBytes([BZ)V
    .locals 9
    .parameter "content"
    .parameter "isCheckFileSizeOverflow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x1000

    .line 471
    array-length v0, p1

    .line 472
    .local v0, contentLength:I
    iget v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    add-int v4, v5, v0

    .line 474
    .local v4, tempSrcMatrixBufferPosition:I
    if-lt v4, v8, :cond_5

    .line 476
    iget v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    .line 475
    rsub-int v3, v5, 0x1000

    .line 477
    .local v3, surplusBufferLength:I
    const/4 v1, 0x0

    .line 478
    .local v1, contentPos:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 481
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeToOutputStream()V

    .line 482
    move v1, v3

    .line 483
    sub-int v3, v0, v3

    .line 484
    :goto_1
    if-ge v3, v8, :cond_2

    .line 492
    if-lez v3, :cond_0

    .line 493
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v3, :cond_4

    .line 496
    iget v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    .line 504
    .end local v1           #contentPos:I
    .end local v3           #surplusBufferLength:I
    :cond_0
    :goto_3
    return-void

    .line 479
    .restart local v1       #contentPos:I
    .restart local v3       #surplusBufferLength:I
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBuffer:[B

    iget v6, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    add-int/2addr v6, v2

    aget-byte v7, p1, v2

    aput-byte v7, v5, v6

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 485
    :cond_2
    const/4 v2, 0x0

    :goto_4
    if-lt v2, v8, :cond_3

    .line 488
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeToOutputStream()V

    .line 489
    add-int/lit16 v1, v1, 0x1000

    .line 490
    add-int/lit16 v3, v3, -0x1000

    goto :goto_1

    .line 486
    :cond_3
    iget-object v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBuffer:[B

    add-int v6, v1, v2

    aget-byte v6, p1, v6

    aput-byte v6, v5, v2

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 494
    :cond_4
    iget-object v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBuffer:[B

    add-int v6, v1, v2

    aget-byte v6, p1, v6

    aput-byte v6, v5, v2

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 499
    .end local v1           #contentPos:I
    .end local v2           #i:I
    .end local v3           #surplusBufferLength:I
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    if-lt v2, v0, :cond_6

    .line 502
    iget v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    goto :goto_3

    .line 500
    :cond_6
    iget-object v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBuffer:[B

    iget v6, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    add-int/2addr v6, v2

    aget-byte v7, p1, v2

    aput-byte v7, v5, v6

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private writeContent(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;Z)V
    .locals 5
    .parameter "logPackage"
    .parameter "isCheckFileSizeOverflow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1000

    .line 528
    iget v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    if-ne v1, v4, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeToOutputStream()V

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBuffer:[B

    iget v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    .line 532
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;->getPackageType()B

    move-result v3

    .line 531
    aput-byte v3, v1, v2

    .line 534
    iget v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    if-ne v1, v4, :cond_1

    .line 535
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeToOutputStream()V

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBuffer:[B

    iget v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    .line 538
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;->getContent()[B

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeString([BZ)V

    .line 539
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;->getRecordTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->longToByte(J)[B

    move-result-object v0

    .line 540
    .local v0, milliseconds:[B
    invoke-direct {p0, v0, p2}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeBytes([BZ)V

    .line 541
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->size()I

    move-result v1

    const/high16 v2, 0x190

    if-le v1, v2, :cond_2

    .line 542
    new-instance v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$FileSizeOverflowException;

    const-string/jumbo v2, "Diagnose Log is overflow"

    invoke-direct {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$FileSizeOverflowException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 544
    :cond_2
    return-void
.end method

.method private writeLogRecordHead(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;)V
    .locals 18
    .parameter "logRecordHead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    const/4 v15, 0x6

    new-array v4, v15, [B

    fill-array-data v4, :array_0

    .line 562
    .local v4, fileFlagBuffer:[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v15, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getFileVersion()[B

    move-result-object v14

    .line 564
    .local v14, versionArray:[B
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getCreateDate()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->longToByte(J)[B

    move-result-object v8

    .line 565
    .local v8, millisecondArray:[B
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "UTF-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 566
    .local v13, vehicleSoftnameArray:[B
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getVehicleSoftVersion()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "UTF-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 567
    .local v12, vehicleSoftVersionArray:[B
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getVehicleSoftLanguage()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "UTF-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 568
    .local v11, vehicleSoftLanguageArray:[B
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getDeviceSN()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "UTF-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 569
    .local v2, deviceSNArray:[B
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getDeviceVersion()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "UTF-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 570
    .local v3, deviceVersionArray:[B
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getSoftVersion()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "UTF-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 571
    .local v10, softVersionArray:[B
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getAdditionInformation()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "UTF-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 572
    .local v1, additionInformationArray:[B
    array-length v15, v14

    array-length v0, v8

    move/from16 v16, v0

    add-int v15, v15, v16

    .line 573
    array-length v0, v13

    move/from16 v16, v0

    .line 572
    add-int v15, v15, v16

    add-int/lit8 v15, v15, 0x2

    .line 574
    array-length v0, v12

    move/from16 v16, v0

    .line 572
    add-int v15, v15, v16

    add-int/lit8 v15, v15, 0x2

    .line 575
    array-length v0, v11

    move/from16 v16, v0

    .line 572
    add-int v15, v15, v16

    add-int/lit8 v15, v15, 0x2

    .line 576
    array-length v0, v2

    move/from16 v16, v0

    .line 572
    add-int v15, v15, v16

    add-int/lit8 v15, v15, 0x2

    .line 577
    array-length v0, v3

    move/from16 v16, v0

    .line 572
    add-int v15, v15, v16

    add-int/lit8 v15, v15, 0x2

    .line 578
    array-length v0, v10

    move/from16 v16, v0

    .line 572
    add-int v15, v15, v16

    add-int/lit8 v15, v15, 0x2

    .line 579
    array-length v0, v1

    move/from16 v16, v0

    .line 572
    add-int v15, v15, v16

    add-int/lit8 v5, v15, 0x2

    .line 582
    .local v5, headLength:I
    const/4 v9, 0x0

    .line 583
    .local v9, modMAX:I
    rem-int/lit8 v9, v5, 0x8

    .line 584
    if-eqz v9, :cond_0

    .line 585
    rsub-int/lit8 v15, v9, 0x8

    add-int/2addr v5, v15

    .line 588
    :cond_0
    invoke-static {v5}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->intToByte(I)[B

    move-result-object v6

    .line 589
    .local v6, headLengthArray:[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v15, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 590
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeBytes([BZ)V

    .line 591
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeBytes([BZ)V

    .line 592
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeString([BZ)V

    .line 593
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeString([BZ)V

    .line 594
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeString([BZ)V

    .line 595
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeString([BZ)V

    .line 596
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeString([BZ)V

    .line 597
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeString([BZ)V

    .line 598
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v15}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeString([BZ)V

    .line 599
    move-object/from16 v0, p0

    iget v15, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    const/16 v16, 0x1000

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 600
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeToOutputStream()V

    .line 618
    :cond_1
    :goto_0
    return-void

    .line 602
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    if-eqz v15, :cond_1

    .line 608
    if-eqz v9, :cond_4

    .line 609
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    rsub-int/lit8 v15, v9, 0x8

    if-lt v7, v15, :cond_3

    .line 612
    move-object/from16 v0, p0

    iget v15, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    .line 613
    add-int/lit8 v15, v15, 0x8

    sub-int/2addr v15, v9

    .line 612
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeToOutputStream(I)V

    goto :goto_0

    .line 610
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBuffer:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    move/from16 v16, v0

    add-int v16, v16, v7

    const/16 v17, 0x0

    aput-byte v17, v15, v16

    .line 609
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 615
    .end local v7           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeToOutputStream(I)V

    goto :goto_0

    .line 561
    nop

    :array_0
    .array-data 0x1
        0x4ct
        0x41t
        0x55t
        0x4et
        0x43t
        0x48t
    .end array-data
.end method

.method private writeString([BZ)V
    .locals 5
    .parameter "content"
    .parameter "isCheckFileSizeOverflow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1000

    .line 451
    array-length v0, p1

    .line 452
    .local v0, contentLength:I
    iget v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    if-ne v1, v4, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeToOutputStream()V

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBuffer:[B

    iget v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 458
    iget v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    if-ne v1, v4, :cond_1

    .line 459
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeToOutputStream()V

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBuffer:[B

    iget v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 463
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeBytes([BZ)V

    .line 464
    return-void
.end method

.method private writeToOutputStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeToOutputStream(I)V

    .line 433
    return-void
.end method

.method private writeToOutputStream(I)V
    .locals 3
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 440
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBuffer:[B

    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mEncDecMatrix:[B

    invoke-static {v0, v1, p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->encryptionContent([B[BI)I

    move-result p1

    .line 442
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->dataOutputStream:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mEncDecMatrix:[B

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 443
    iput v2, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    .line 444
    return-void
.end method


# virtual methods
.method public getDiagnoseLogSwitch()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mDiagnoseLogSwitch:Z

    return v0
.end method

.method public getLogLinkedList()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mLogLinkedList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public getLogRecordHead()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    return-object v0
.end method

.method public initLogRecordHead()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 393
    iget-boolean v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mDiagnoseLogSwitch:Z

    if-nez v5, :cond_0

    .line 412
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddHHmmss"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 397
    .local v1, df:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, date:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getDeviceSN()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 399
    iget-object v6, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 398
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, filename:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mDiagnoseLogPath:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->CreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 401
    .local v3, file:Ljava/io/File;
    if-eqz v3, :cond_1

    .line 402
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    .line 403
    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 402
    iput-object v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 408
    :try_start_0
    iget-object v5, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    invoke-direct {p0, v5}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeLogRecordHead(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v2

    .line 410
    .local v2, e:Ljava/io/IOException;
    invoke-direct {p0, v2}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->doAfterIOException(Ljava/io/IOException;)V

    goto :goto_0

    .line 405
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mDiagnoseLogPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public isIOException()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mIsIOException:Z

    return v0
.end method

.method public renameDiagnoseLog()Z
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 363
    const/4 v2, 0x1

    .line 364
    .local v2, isSuccess:Z
    const-string/jumbo v3, ""

    .line 365
    .local v3, newPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mFullFilename:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 366
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mFullFilename:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 368
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mFullFilename:Ljava/lang/String;

    .line 369
    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 370
    .local v1, indexDot:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 372
    if-eqz v2, :cond_1

    .line 373
    const-string/jumbo v4, "DiagnoseLogUntil"

    .line 374
    const-string/jumbo v5, "\u6587\u4ef6\u540d\u53d8\u66f4\u6210\u529f  \u539f\u540d\uff1a%1$s \u66f4\u6539\u540e\u6587\u4ef6\u540d\uff1a%2$s"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mFullFilename:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 373
    invoke-static {v4, v5}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .end local v0           #file:Ljava/io/File;
    .end local v1           #indexDot:I
    :cond_0
    :goto_0
    return v2

    .line 377
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #indexDot:I
    :cond_1
    const-string/jumbo v4, "DiagnoseLogUntil"

    .line 378
    const-string/jumbo v5, "\u6587\u4ef6\u540d\u53d8\u66f4\u5931\u8d25  \u539f\u540d\uff1a%1$s \u66f4\u6539\u540e\u6587\u4ef6\u540d\uff1a%2$s"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mFullFilename:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 377
    invoke-static {v4, v5}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 685
    iget-boolean v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mDiagnoseLogSwitch:Z

    if-nez v3, :cond_1

    .line 745
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mLogLinkedList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 690
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mLogLinkedList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;

    .line 691
    .local v2, logPackage:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;
    if-eqz v2, :cond_1

    .line 693
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeContent(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;Z)V
    :try_end_0
    .catch Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$FileSizeOverflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 688
    .end local v2           #logPackage:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mStopFlag:Z

    if-eqz v3, :cond_0

    .line 712
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mLogLinkedList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 729
    :goto_3
    :try_start_1
    iget v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_5

    .line 730
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeToOutputStream()V

    .line 735
    :goto_4
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 740
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->renameDiagnoseLog()Z

    .line 741
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->this$0:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    monitor-enter v4

    .line 742
    :try_start_2
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->this$0:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 741
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 744
    const-string/jumbo v3, "DiagnoseLogUntil"

    const-string/jumbo v4, "LogRecordThread has stoped"

    invoke-static {v3, v4}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 694
    .restart local v2       #logPackage:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;
    :catch_0
    move-exception v0

    .line 695
    .local v0, e:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$FileSizeOverflowException;
    invoke-direct {p0, v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->doAfterFileSizeOverflowException(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$FileSizeOverflowException;)V

    goto :goto_2

    .line 698
    .end local v0           #e:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$FileSizeOverflowException;
    :catch_1
    move-exception v1

    .line 699
    .local v1, e1:Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->doAfterIOException(Ljava/io/IOException;)V

    goto :goto_0

    .line 705
    .end local v1           #e1:Ljava/io/IOException;
    .end local v2           #logPackage:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;
    :cond_3
    const-wide/16 v3, 0x3e8

    :try_start_3
    invoke-static {v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 706
    :catch_2
    move-exception v0

    .line 707
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 713
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mLogLinkedList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;

    .line 714
    .restart local v2       #logPackage:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;
    if-eqz v2, :cond_2

    .line 716
    const/4 v3, 0x0

    :try_start_4
    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeContent(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;Z)V
    :try_end_4
    .catch Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$FileSizeOverflowException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 717
    :catch_3
    move-exception v0

    .line 718
    .local v0, e:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$FileSizeOverflowException;
    invoke-direct {p0, v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->doAfterFileSizeOverflowException(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$FileSizeOverflowException;)V

    goto :goto_3

    .line 721
    .end local v0           #e:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$FileSizeOverflowException;
    :catch_4
    move-exception v1

    .line 722
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->doAfterIOException(Ljava/io/IOException;)V

    goto :goto_0

    .line 732
    .end local v1           #e1:Ljava/io/IOException;
    .end local v2           #logPackage:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;
    :cond_5
    :try_start_5
    iget v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    if-eqz v3, :cond_6

    .line 733
    :cond_6
    iget v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mSrcMatrixBufferPosition:I

    invoke-direct {p0, v3}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->writeToOutputStream(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 736
    :catch_5
    move-exception v0

    .line 737
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->doAfterIOException(Ljava/io/IOException;)V

    goto/16 :goto_0

    .line 741
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->mStopFlag:Z

    .line 424
    return-void
.end method
