.class public Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;
.super Lcom/cnlaunch/x431pro/module/base/BaseAction;
.source "SettingAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public sendDiagnosticLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/setting/model/UploadDiagnosticLogResponse;
    .locals 5
    .parameter "serialNo"
    .parameter "vehicleType"
    .parameter "remark"
    .parameter "logFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 62
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->sendDiagnosticLog:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, requestUrl:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "serialNo"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v3, "sign"

    invoke-virtual {p0, p4}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v3, "vehicleType"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v3, "remark"

    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0, v2, v1, p4}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;->uploadFile(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, json:Ljava/lang/String;
    const-class v3, Lcom/cnlaunch/x431pro/module/setting/model/UploadDiagnosticLogResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/module/setting/model/UploadDiagnosticLogResponse;

    return-object v3
.end method

.method public sendServerCheckLog(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/setting/model/UploadServerCheckLogResponse;
    .locals 5
    .parameter "serialNo"
    .parameter "logFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 36
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->send_Server_Check_Log:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, requestUrl:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "serialNo"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v3, "sign"

    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0, v2, v1, p2}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;->uploadFile(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, json:Ljava/lang/String;
    const-class v3, Lcom/cnlaunch/x431pro/module/setting/model/UploadServerCheckLogResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/module/setting/model/UploadServerCheckLogResponse;

    return-object v3
.end method
