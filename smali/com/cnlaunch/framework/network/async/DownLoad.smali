.class public Lcom/cnlaunch/framework/network/async/DownLoad;
.super Ljava/lang/Object;
.source "DownLoad.java"


# instance fields
.field isCheckNetwork:Z

.field private isRefresh:Z

.field private listener:Lcom/cnlaunch/framework/network/async/OnDataListener;

.field private requestCode:I

.field private result:Ljava/lang/Object;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(IZLcom/cnlaunch/framework/network/async/OnDataListener;)V
    .locals 0
    .parameter "requestCode"
    .parameter "isCheckNetwork"
    .parameter "listener"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->requestCode:I

    .line 45
    iput-boolean p2, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->isCheckNetwork:Z

    .line 46
    iput-object p3, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->listener:Lcom/cnlaunch/framework/network/async/OnDataListener;

    .line 47
    return-void
.end method


# virtual methods
.method public getListener()Lcom/cnlaunch/framework/network/async/OnDataListener;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->listener:Lcom/cnlaunch/framework/network/async/OnDataListener;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->requestCode:I

    return v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->state:I

    return v0
.end method

.method public isCheckNetwork()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->isCheckNetwork:Z

    return v0
.end method

.method public isRefresh()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->isRefresh:Z

    return v0
.end method

.method public setCheckNetwork(Z)V
    .locals 0
    .parameter "isCheckNetwork"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->isCheckNetwork:Z

    .line 87
    return-void
.end method

.method public setListener(Lcom/cnlaunch/framework/network/async/OnDataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->listener:Lcom/cnlaunch/framework/network/async/OnDataListener;

    .line 95
    return-void
.end method

.method public setRefresh(Z)V
    .locals 0
    .parameter "isRefresh"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->isRefresh:Z

    .line 63
    return-void
.end method

.method public setRequestCode(I)V
    .locals 0
    .parameter "requestCode"

    .prologue
    .line 54
    iput p1, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->requestCode:I

    .line 55
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->result:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 70
    iput p1, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->state:I

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DownLoad [requestCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->requestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    iget-boolean v1, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->isRefresh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string/jumbo v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/framework/network/async/DownLoad;->listener:Lcom/cnlaunch/framework/network/async/OnDataListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
