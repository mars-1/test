.class public Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "UpLoadReportInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x7163930972fb8d3dL


# instance fields
.field private car_lat:Ljava/lang/String;

.field private car_lon:Ljava/lang/String;

.field private cars:Ljava/lang/String;

.field private conclusion:Ljava/lang/String;

.field private data_flow:Ljava/lang/String;

.field private diagnosis_time:Ljava/lang/String;

.field private diagnosis_time_long:Ljava/lang/String;

.field private fault_codes:Ljava/lang/String;

.field private goloId:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private messagelist:Ljava/lang/String;

.field private pro_serial_no:Ljava/lang/String;

.field private serial_no:Ljava/lang/String;

.field private technician_lat:Ljava/lang/String;

.field private technician_lon:Ljava/lang/String;

.field private theme:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->theme:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->fault_codes:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->data_flow:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->conclusion:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->diagnosis_time:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->serial_no:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->goloId:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->type:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->cars:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->language:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->diagnosis_time_long:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->technician_lon:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->technician_lat:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->car_lon:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->car_lat:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->messagelist:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->vin:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->pro_serial_no:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getCar_lat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->car_lat:Ljava/lang/String;

    return-object v0
.end method

.method public getCar_lon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->car_lon:Ljava/lang/String;

    return-object v0
.end method

.method public getCars()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->cars:Ljava/lang/String;

    return-object v0
.end method

.method public getConclusion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->conclusion:Ljava/lang/String;

    return-object v0
.end method

.method public getData_flow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->data_flow:Ljava/lang/String;

    return-object v0
.end method

.method public getDiagnosis_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->diagnosis_time:Ljava/lang/String;

    return-object v0
.end method

.method public getDiagnosis_time_long()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->diagnosis_time_long:Ljava/lang/String;

    return-object v0
.end method

.method public getFault_codes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->fault_codes:Ljava/lang/String;

    return-object v0
.end method

.method public getGoloId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->goloId:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMessagelist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->messagelist:Ljava/lang/String;

    return-object v0
.end method

.method public getPro_serial_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->pro_serial_no:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->serial_no:Ljava/lang/String;

    return-object v0
.end method

.method public getTechnician_lat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->technician_lat:Ljava/lang/String;

    return-object v0
.end method

.method public getTechnician_lon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->technician_lon:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->theme:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setCar_lat(Ljava/lang/String;)V
    .locals 0
    .parameter "car_lat"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->car_lat:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setCar_lon(Ljava/lang/String;)V
    .locals 0
    .parameter "car_lon"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->car_lon:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setCars(Ljava/lang/String;)V
    .locals 0
    .parameter "cars"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->cars:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setConclusion(Ljava/lang/String;)V
    .locals 0
    .parameter "conclusion"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->conclusion:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setData_flow(Ljava/lang/String;)V
    .locals 0
    .parameter "data_flow"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->data_flow:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setDiagnosis_time(Ljava/lang/String;)V
    .locals 0
    .parameter "diagnosis_time"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->diagnosis_time:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDiagnosis_time_long(Ljava/lang/String;)V
    .locals 0
    .parameter "diagnosis_time_long"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->diagnosis_time_long:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setFault_codes(Ljava/lang/String;)V
    .locals 0
    .parameter "fault_codes"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->fault_codes:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setGoloId(Ljava/lang/String;)V
    .locals 0
    .parameter "goloId"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->goloId:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->language:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setMessagelist(Ljava/lang/String;)V
    .locals 0
    .parameter "messagelist"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->messagelist:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setPro_serial_no(Ljava/lang/String;)V
    .locals 0
    .parameter "pro_serial_no"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->pro_serial_no:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setSerial_no(Ljava/lang/String;)V
    .locals 0
    .parameter "serial_no"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->serial_no:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTechnician_lat(Ljava/lang/String;)V
    .locals 0
    .parameter "technician_lat"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->technician_lat:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setTechnician_lon(Ljava/lang/String;)V
    .locals 0
    .parameter "technician_lon"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->technician_lon:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setTheme(Ljava/lang/String;)V
    .locals 0
    .parameter "theme"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->theme:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->type:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0
    .parameter "vin"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->vin:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UpLoadReportInfo [theme="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->theme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fault_codes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->fault_codes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data_flow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->data_flow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conclusion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->conclusion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", diagnosis_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->diagnosis_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serial_no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->serial_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", goloId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->goloId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->cars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", diagnosis_time_long="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->diagnosis_time_long:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", technician_lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->technician_lon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", technician_lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->technician_lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", car_lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->car_lon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", car_lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->car_lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
