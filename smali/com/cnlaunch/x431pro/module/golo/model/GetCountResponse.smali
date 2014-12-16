.class public Lcom/cnlaunch/x431pro/module/golo/model/GetCountResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "GetCountResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x6a9a90631cf74bc2L


# instance fields
.field private data:Lcom/cnlaunch/x431pro/module/golo/model/CountData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/cnlaunch/x431pro/module/golo/model/CountData;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GetCountResponse;->data:Lcom/cnlaunch/x431pro/module/golo/model/CountData;

    return-object v0
.end method

.method public setData(Lcom/cnlaunch/x431pro/module/golo/model/CountData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GetCountResponse;->data:Lcom/cnlaunch/x431pro/module/golo/model/CountData;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GetCountResponse [data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GetCountResponse;->data:Lcom/cnlaunch/x431pro/module/golo/model/CountData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
