.class public Ltest/module/setting/TestUploadFileAction;
.super Ltest/BaseTestCase;
.source "TestUploadFileAction.java"


# instance fields
.field private logFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ltest/BaseTestCase;-><init>()V

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Ltest/module/setting/TestUploadFileAction;->logFilePath:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public sendServerCheckLog()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;

    invoke-virtual {p0}, Ltest/module/setting/TestUploadFileAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, action:Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;
    const-string/jumbo v2, "982690424200"

    iget-object v3, p0, Ltest/module/setting/TestUploadFileAction;->logFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;->sendServerCheckLog(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/setting/model/UploadServerCheckLogResponse;

    move-result-object v1

    .line 31
    .local v1, response:Lcom/cnlaunch/x431pro/module/setting/model/UploadServerCheckLogResponse;
    if-eqz v1, :cond_0

    .line 32
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/setting/model/UploadServerCheckLogResponse;->getCode()I

    move-result v3

    invoke-static {v2, v3}, Ltest/module/setting/TestUploadFileAction;->assertEquals(II)V

    .line 34
    :cond_0
    return-void
.end method
