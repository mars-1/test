.class public Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
.super Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;
.source "GoloRepairInfo.java"


# instance fields
.field private carinfo_id:Ljava/lang/String;

.field private contact_name:Ljava/lang/String;

.field private contact_phone:Ljava/lang/String;

.field private created:Ljava/lang/String;

.field private face:Ljava/lang/String;

.field private face_hd:Ljava/lang/String;

.field private is_accept:Ljava/lang/String;

.field private pub_id:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private reserve_id:Ljava/lang/String;

.field private reserve_time:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private send_id:Ljava/lang/String;

.field private shedule_time:Ljava/lang/String;

.field private user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;-><init>()V

    return-void
.end method

.method public static filledData(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, source:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;>;"
    .local p1, sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;>;"
    if-nez p0, :cond_1

    .line 152
    :cond_0
    return-void

    .line 128
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    .line 129
    .local v0, c:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getNick_name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getNick_name()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, name:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    .line 131
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getInstance()Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, pinyin:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string/jumbo v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 136
    :cond_3
    const-string/jumbo v5, "#"

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setSortKey(Ljava/lang/String;)V

    .line 138
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #pinyin:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getUser_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 141
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #pinyin:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, sortString:Ljava/lang/String;
    const-string/jumbo v5, "[A-Z]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 143
    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setSortKey(Ljava/lang/String;)V

    .line 147
    :goto_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_6
    const-string/jumbo v5, "#"

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setSortKey(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getCarinfo_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->carinfo_id:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->contact_name:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_phone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->contact_phone:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getFace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->face:Ljava/lang/String;

    return-object v0
.end method

.method public getFace_hd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->face_hd:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_accept()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->is_accept:Ljava/lang/String;

    return-object v0
.end method

.method public getPub_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->pub_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getReserve_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->reserve_id:Ljava/lang/String;

    return-object v0
.end method

.method public getReserve_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->reserve_time:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getSend_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->send_id:Ljava/lang/String;

    return-object v0
.end method

.method public getShedule_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->shedule_time:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public setCarinfo_id(Ljava/lang/String;)V
    .locals 0
    .parameter "carinfo_id"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->carinfo_id:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setContact_name(Ljava/lang/String;)V
    .locals 0
    .parameter "contact_name"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->contact_name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setContact_phone(Ljava/lang/String;)V
    .locals 0
    .parameter "contact_phone"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->contact_phone:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->created:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setFace(Ljava/lang/String;)V
    .locals 0
    .parameter "face"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->face:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setFace_hd(Ljava/lang/String;)V
    .locals 0
    .parameter "face_hd"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->face_hd:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setIs_accept(Ljava/lang/String;)V
    .locals 0
    .parameter "is_accept"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->is_accept:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPub_id(Ljava/lang/String;)V
    .locals 0
    .parameter "pub_id"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->pub_id:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .parameter "remark"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->remark:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setReserve_id(Ljava/lang/String;)V
    .locals 0
    .parameter "reserve_id"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->reserve_id:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setReserve_time(Ljava/lang/String;)V
    .locals 0
    .parameter "reserve_time"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->reserve_time:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->response:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSend_id(Ljava/lang/String;)V
    .locals 0
    .parameter "send_id"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->send_id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setShedule_time(Ljava/lang/String;)V
    .locals 0
    .parameter "shedule_time"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->shedule_time:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0
    .parameter "user_name"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->user_name:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GoloReqairInfo [reserve_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->reserve_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", send_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->send_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contact_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->contact_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contact_phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->contact_phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reserve_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->reserve_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", shedule_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->shedule_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is_accept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->is_accept:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", carinfo_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->carinfo_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->created:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pub_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", remark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-string/jumbo v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", user_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", face="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->face:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", face_hd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->face_hd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
