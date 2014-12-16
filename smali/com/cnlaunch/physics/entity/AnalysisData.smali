.class public Lcom/cnlaunch/physics/entity/AnalysisData;
.super Ljava/lang/Object;
.source "AnalysisData.java"


# instance fields
.field private pReceiveBuffer:[B

.field private pRequestBuffer:[B

.field private requestWordStr:Ljava/lang/String;

.field private state:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/AnalysisData;->requestWordStr:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/cnlaunch/physics/entity/AnalysisData;->pRequestBuffer:[B

    .line 13
    iput-object v1, p0, Lcom/cnlaunch/physics/entity/AnalysisData;->pReceiveBuffer:[B

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/AnalysisData;->state:Ljava/lang/Boolean;

    .line 7
    return-void
.end method


# virtual methods
.method public getRequestWordStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/AnalysisData;->requestWordStr:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/AnalysisData;->state:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getpReceiveBuffer()[B
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/AnalysisData;->pReceiveBuffer:[B

    return-object v0
.end method

.method public getpRequestBuffer()[B
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/AnalysisData;->pRequestBuffer:[B

    return-object v0
.end method

.method public setRequestWordStr(Ljava/lang/String;)V
    .locals 0
    .parameter "requestWordStr"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/AnalysisData;->requestWordStr:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setState(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/AnalysisData;->state:Ljava/lang/Boolean;

    .line 48
    return-void
.end method

.method public setpReceiveBuffer([B)V
    .locals 0
    .parameter "pReceiveBuffer"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/AnalysisData;->pReceiveBuffer:[B

    .line 40
    return-void
.end method

.method public setpRequestBuffer([B)V
    .locals 0
    .parameter "pRequestBuffer"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/AnalysisData;->pRequestBuffer:[B

    .line 32
    return-void
.end method
