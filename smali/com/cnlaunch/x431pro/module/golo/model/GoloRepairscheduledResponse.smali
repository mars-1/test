.class public Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "GoloRepairscheduledResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x27c0002fedf9e698L


# instance fields
.field private data:Lcom/cnlaunch/x431pro/module/golo/model/GoloReqairsData;

.field private trace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/cnlaunch/x431pro/module/golo/model/GoloReqairsData;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;->data:Lcom/cnlaunch/x431pro/module/golo/model/GoloReqairsData;

    return-object v0
.end method

.method public getTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;->trace:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/cnlaunch/x431pro/module/golo/model/GoloReqairsData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;->data:Lcom/cnlaunch/x431pro/module/golo/model/GoloReqairsData;

    .line 17
    return-void
.end method

.method public setTrace(Ljava/lang/String;)V
    .locals 0
    .parameter "trace"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;->trace:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GoloRepairscheduledResponse [data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;->data:Lcom/cnlaunch/x431pro/module/golo/model/GoloReqairsData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;->trace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
