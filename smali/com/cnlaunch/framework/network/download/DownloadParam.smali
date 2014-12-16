.class public Lcom/cnlaunch/framework/network/download/DownloadParam;
.super Ljava/lang/Object;
.source "DownloadParam.java"


# instance fields
.field private context:Landroid/content/Context;

.field private downPath:Ljava/lang/String;

.field private enable_breakpoint:Z

.field private fileName:Ljava/lang/String;

.field private fileSize:J

.field private params:Lcom/cnlaunch/framework/network/http/RequestParams;

.field private url:Ljava/lang/String;

.field private versionNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->enable_breakpoint:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDownPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->downPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableBreakpoint()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->enable_breakpoint:Z

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->fileSize:J

    return-wide v0
.end method

.method public getParams()Lcom/cnlaunch/framework/network/http/RequestParams;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->versionNo:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public setDownPath(Ljava/lang/String;)V
    .locals 0
    .parameter "downPath"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->downPath:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setEnableBreakpoint(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->enable_breakpoint:Z

    .line 90
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->fileName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->fileSize:J

    .line 86
    return-void
.end method

.method public setParams(Lcom/cnlaunch/framework/network/http/RequestParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 46
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->url:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setVersionNo(Ljava/lang/String;)V
    .locals 0
    .parameter "versionNo"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cnlaunch/framework/network/download/DownloadParam;->versionNo:Ljava/lang/String;

    .line 54
    return-void
.end method
