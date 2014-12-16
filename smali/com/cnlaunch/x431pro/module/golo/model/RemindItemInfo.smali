.class public Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;
.super Ljava/lang/Object;
.source "RemindItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;
    }
.end annotation


# instance fields
.field private goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

.field private goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

.field private history:Lcom/cnlaunch/x431pro/module/golo/model/History;

.field private isExpend:Z

.field private remindDetail:Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;

.field private type:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoloRemoteOrderInfo()Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    return-object v0
.end method

.method public getGoloRepairInfo()Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    return-object v0
.end method

.method public getHistory()Lcom/cnlaunch/x431pro/module/golo/model/History;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->history:Lcom/cnlaunch/x431pro/module/golo/model/History;

    return-object v0
.end method

.method public getRemindDetail()Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->remindDetail:Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;

    return-object v0
.end method

.method public getType()Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->type:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    return-object v0
.end method

.method public isExpend()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->isExpend:Z

    return v0
.end method

.method public setExpend(Z)V
    .locals 0
    .parameter "isExpend"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->isExpend:Z

    .line 43
    return-void
.end method

.method public setGoloRemoteOrderInfo(Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;)V
    .locals 0
    .parameter "goloRemoteOrderInfo"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .line 18
    return-void
.end method

.method public setGoloRepairInfo(Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;)V
    .locals 0
    .parameter "goloRepairInfo"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    .line 24
    return-void
.end method

.method public setHistory(Lcom/cnlaunch/x431pro/module/golo/model/History;)V
    .locals 0
    .parameter "history"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->history:Lcom/cnlaunch/x431pro/module/golo/model/History;

    .line 30
    return-void
.end method

.method public setRemindDetail(Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;)V
    .locals 0
    .parameter "remindDetail"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->remindDetail:Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;

    .line 49
    return-void
.end method

.method public setType(Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->type:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    .line 37
    return-void
.end method
