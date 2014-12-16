.class public Ltest/utils/DiagnoseLogInfoSearchUtilTestCase;
.super Ljunit/framework/TestCase;
.source "DiagnoseLogInfoSearchUtilTestCase.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DiagnoseLogInfo Search Until TestCase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected setUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-super {p0}, Ljunit/framework/TestCase;->setUp()V

    .line 19
    return-void
.end method

.method protected tearDown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 24
    return-void
.end method

.method public testgetDiagnoseLogFile()V
    .locals 3

    .prologue
    .line 77
    const-string/jumbo v1, "smart"

    const-string/jumbo v2, "982690001100"

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil;->getDiagnoseLogFile(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    move-result-object v0

    .line 78
    .local v0, diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    invoke-static {v0}, Ltest/utils/DiagnoseLogInfoSearchUtilTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getDeviceSN()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "982690001100"

    invoke-static {v1, v2}, Ltest/utils/DiagnoseLogInfoSearchUtilTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "smart"

    invoke-static {v1, v2}, Ltest/utils/DiagnoseLogInfoSearchUtilTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public testgetDiagnoseLogFileList()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil;->getDiagnoseLogFileList()Ljava/util/Vector;

    move-result-object v0

    .line 72
    .local v0, diagnoseLogFileInfoList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ltest/utils/DiagnoseLogInfoSearchUtilTestCase;->assertEquals(II)V

    .line 73
    return-void
.end method

.method public testscanFiles()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 30
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 31
    .local v1, diagnoseLogFileVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/File;>;"
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLogsPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v7, root:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 33
    .local v3, files:[Ljava/io/File;
    array-length v10, v3

    move v8, v9

    :goto_0
    if-lt v8, v10, :cond_0

    .line 39
    const/4 v4, 0x0

    .line 40
    .local v4, flag:Ljava/io/File;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_2

    .line 52
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v5, v8, :cond_5

    .line 59
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil;->getDiagnoseLogFileList()Ljava/util/Vector;

    move-result-object v0

    .line 61
    .local v0, diagnoseLogFileInfoVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;>;"
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v5, v8, :cond_6

    .line 66
    invoke-static {v9}, Ltest/utils/DiagnoseLogInfoSearchUtilTestCase;->assertFalse(Z)V

    .line 67
    return-void

    .line 33
    .end local v0           #diagnoseLogFileInfoVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;>;"
    .end local v4           #flag:Ljava/io/File;
    .end local v5           #i:I
    :cond_0
    aget-object v2, v3, v8

    .line 34
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_1

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 41
    .end local v2           #file:Ljava/io/File;
    .restart local v4       #flag:Ljava/io/File;
    .restart local v5       #i:I
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #flag:Ljava/io/File;
    check-cast v4, Ljava/io/File;

    .line 42
    .restart local v4       #flag:Ljava/io/File;
    add-int/lit8 v6, v5, 0x1

    .local v6, j:I
    :goto_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v6, v8, :cond_3

    .line 40
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 44
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-lez v8, :cond_4

    .line 46
    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 45
    invoke-virtual {v1, v8, v5}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 47
    invoke-virtual {v1, v4, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 48
    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #flag:Ljava/io/File;
    check-cast v4, Ljava/io/File;

    .line 42
    .restart local v4       #flag:Ljava/io/File;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 53
    .end local v6           #j:I
    :cond_5
    const-string/jumbo v10, "DiagnoseLogInfo Search Until TestCase"

    .line 54
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v8, " last modify time is"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 56
    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 54
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 53
    invoke-static {v10, v8}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 62
    .restart local v0       #diagnoseLogFileInfoVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;>;"
    :cond_6
    const-string/jumbo v10, "DiagnoseLogInfo Search Until TestCase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getFilename()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v8, " last Create Date time is"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 64
    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getCreateDate()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 62
    invoke-static {v10, v8}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3
.end method
