.class public Ltest/utils/DiagnoseLogUtilTestCase;
.super Ljunit/framework/TestCase;
.source "DiagnoseLogUtilTestCase.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DiagnoseLog Until TestCase"


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

.method public testdecryptionFile()V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "Log/DiagnoseLog"

    aput-object v6, v5, v9

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/comcom_ENC.pdf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, sFile:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "Log/DiagnoseLog"

    aput-object v6, v5, v9

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/comcom_DEC.pdf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, tFile:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "DiagnoseLog Until TestCase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "decryptionFile start"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;

    invoke-direct {v2}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;-><init>()V

    .line 45
    .local v2, safeMatrix:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;
    invoke-virtual {v2, v1, v3}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->decryptionFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v4, "DiagnoseLog Until TestCase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "decryptionFile end"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const/4 v4, 0x0

    invoke-static {v4}, Ltest/utils/DiagnoseLogUtilTestCase;->assertFalse(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v2           #safeMatrix:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v4, "DiagnoseLog Until TestCase"

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "encryptionFile Exception "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-static {v9}, Ltest/utils/DiagnoseLogUtilTestCase;->assertFalse(Z)V

    goto :goto_0
.end method

.method public testdecryptionProductInformationFile()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "product_information.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, sFile:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "dec"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "product_information.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, tFile:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "DiagnoseLog Until TestCase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "decryptionFile start"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;

    invoke-direct {v2}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;-><init>()V

    .line 59
    .local v2, safeMatrix:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;
    invoke-virtual {v2, v1, v3}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->decryptionFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v4, "DiagnoseLog Until TestCase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "decryptionFile end"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const/4 v4, 0x0

    invoke-static {v4}, Ltest/utils/DiagnoseLogUtilTestCase;->assertFalse(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v2           #safeMatrix:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v4, "DiagnoseLog Until TestCase"

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "encryptionFile Exception "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-static {v9}, Ltest/utils/DiagnoseLogUtilTestCase;->assertFalse(Z)V

    goto :goto_0
.end method

.method public testencryptionFile()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLogsPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/comcom.pdf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, sFile:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLogsPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/comcom_ENC.pdf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, tFile:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;

    invoke-direct {v2}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;-><init>()V

    .line 30
    .local v2, safeMatrix:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;
    const-string/jumbo v4, "DiagnoseLog Until TestCase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "encryptionFile start"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v2, v1, v3}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->encryptionFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v4, "DiagnoseLog Until TestCase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "encryptionFile end"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    const/4 v4, 0x0

    invoke-static {v4}, Ltest/utils/DiagnoseLogUtilTestCase;->assertFalse(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v2           #safeMatrix:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v4, "DiagnoseLog Until TestCase"

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "encryptionFile Exception "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-static {v9}, Ltest/utils/DiagnoseLogUtilTestCase;->assertFalse(Z)V

    goto :goto_0
.end method
