.class public Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "DownLoadReportInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x5505444ad0dfaa6fL


# instance fields
.field private diagnosis_time:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private theme:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiagnosis_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->diagnosis_time:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->theme:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDiagnosis_time(Ljava/lang/String;)V
    .locals 0
    .parameter "diagnosis_time"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->diagnosis_time:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->id:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setTheme(Ljava/lang/String;)V
    .locals 0
    .parameter "theme"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->theme:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 45
    iput p1, p0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->type:I

    .line 46
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->url:Ljava/lang/String;

    .line 32
    return-void
.end method
