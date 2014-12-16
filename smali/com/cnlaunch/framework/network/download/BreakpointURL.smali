.class public Lcom/cnlaunch/framework/network/download/BreakpointURL;
.super Ljava/lang/Object;
.source "BreakpointURL.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x51cd10e388f8447dL


# instance fields
.field private code:I

.field private data:Lcom/cnlaunch/framework/network/download/Data;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/cnlaunch/framework/network/download/BreakpointURL;->code:I

    return v0
.end method

.method public getData()Lcom/cnlaunch/framework/network/download/Data;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/BreakpointURL;->data:Lcom/cnlaunch/framework/network/download/Data;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/BreakpointURL;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 17
    iput p1, p0, Lcom/cnlaunch/framework/network/download/BreakpointURL;->code:I

    .line 18
    return-void
.end method

.method public setData(Lcom/cnlaunch/framework/network/download/Data;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cnlaunch/framework/network/download/BreakpointURL;->data:Lcom/cnlaunch/framework/network/download/Data;

    .line 25
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cnlaunch/framework/network/download/BreakpointURL;->message:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BreakpointURL [code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget v1, p0, Lcom/cnlaunch/framework/network/download/BreakpointURL;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/BreakpointURL;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
