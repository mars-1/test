.class public Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "PidBytResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x45846684b3b231a4L


# instance fields
.field private data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    return-object v0
.end method

.method public setData(Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PidBytResponse [data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
