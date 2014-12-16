.class public Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "ReportFileInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x1644a0dc22356da1L


# instance fields
.field private reportName:Ljava/lang/String;

.field private reportSerialnumber:Ljava/lang/String;

.field private reportTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getReportName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->reportName:Ljava/lang/String;

    return-object v0
.end method

.method public getReportSerialnumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->reportSerialnumber:Ljava/lang/String;

    return-object v0
.end method

.method public getReportTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->reportTime:Ljava/util/Date;

    return-object v0
.end method

.method public setReportName(Ljava/lang/String;)V
    .locals 0
    .parameter "reportName"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->reportName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setReportSerialnumber(Ljava/lang/String;)V
    .locals 0
    .parameter "reportSerialnumber"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->reportSerialnumber:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setReportTime(Ljava/util/Date;)V
    .locals 0
    .parameter "reportTime"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->reportTime:Ljava/util/Date;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ReportFileInfo [reportName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->reportName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reportSerialnumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->reportSerialnumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reportTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->reportTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
