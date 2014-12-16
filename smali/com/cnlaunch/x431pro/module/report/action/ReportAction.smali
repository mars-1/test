.class public Lcom/cnlaunch/x431pro/module/report/action/ReportAction;
.super Lcom/cnlaunch/x431pro/module/base/BaseAction;
.source "ReportAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public queryReport(Ljava/lang/String;I)Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;
    .locals 8
    .parameter "techId"
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 85
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->report_query_diagnostic:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 87
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "page"

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "size"

    new-instance v5, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, p2, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "technician_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, response:Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    const-string/jumbo v3, "Sanda"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "queryReport="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const-class v3, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;

    .line 98
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;
    :cond_0
    return-object v1
.end method

.method public upLoadReport(Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;)Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;
    .locals 6
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 37
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->report_upload_diagnostic:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 39
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "language"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "type"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "technician_lon"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getTechnician_lon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "technician_lat"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getTechnician_lat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "car_lon"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getCar_lon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "car_lat"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getCar_lat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "diagnosis_time"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getDiagnosis_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "fault_codes"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getFault_codes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "conclusion"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getConclusion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "messagelist"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getMessagelist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "pro_serial_no"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getPro_serial_no()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getData_flow()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "data_flow"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getData_flow()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getSerial_no()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "serial_no"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getSerial_no()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getGoloId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 58
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "diagnostic_user_id"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getGoloId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getTheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 61
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "theme"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getTheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_3
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getCars()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 64
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "cars"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->getCars()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_4
    const/4 v1, 0x0

    .line 67
    .local v1, response:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 69
    const-string/jumbo v3, "Sanda"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const-class v3, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;

    .line 72
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;
    :cond_5
    return-object v1
.end method
