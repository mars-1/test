.class public Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "ReportBackInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x1e784be46a63e1a8L


# instance fields
.field private id:Ljava/lang/String;

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
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;->id:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;->url:Ljava/lang/String;

    .line 24
    return-void
.end method
