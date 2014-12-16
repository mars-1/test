.class public Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "ReadResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x6f4af0f7db0b5b72L


# instance fields
.field private data:Ljava/lang/String;

.field private trace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;->trace:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;->data:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTrace(Ljava/lang/String;)V
    .locals 0
    .parameter "trace"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;->trace:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ReadResponse [data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;->trace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
