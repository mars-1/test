.class public Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
.super Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;
.source "GoloRemoteOrderInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x22690e4c1c8cbc24L


# instance fields
.field private auto_code:Ljava/lang/String;

.field private auto_logos:Ljava/lang/String;

.field private car_id:Ljava/lang/String;

.field private created:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private face_thumb:Ljava/lang/String;

.field private face_url:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mine_car_plate_num:Ljava/lang/String;

.field private online_status:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
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
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, source:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    .local p1, sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    if-nez p0, :cond_1

    .line 136
    :cond_0
    return-void

    .line 112
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

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .line 113
    .local v0, c:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getNick_name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getNick_name()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, name:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    .line 115
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getInstance()Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, pinyin:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string/jumbo v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 117
    :cond_3
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 118
    const-string/jumbo v5, "Z"

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setSortKey(Ljava/lang/String;)V

    .line 122
    :goto_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #pinyin:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 120
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #pinyin:Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "#"

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setSortKey(Ljava/lang/String;)V

    goto :goto_2

    .line 125
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, sortString:Ljava/lang/String;
    const-string/jumbo v5, "[A-Z]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 127
    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setSortKey(Ljava/lang/String;)V

    .line 131
    :goto_3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_7
    const-string/jumbo v5, "#"

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setSortKey(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public getAuto_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->auto_code:Ljava/lang/String;

    return-object v0
.end method

.method public getAuto_logos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->auto_logos:Ljava/lang/String;

    return-object v0
.end method

.method public getCar_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->car_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFace_thumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->face_thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getFace_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->face_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMine_car_plate_num()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->mine_car_plate_num:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->online_status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAuto_code(Ljava/lang/String;)V
    .locals 0
    .parameter "auto_code"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->auto_code:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setAuto_logos(Ljava/lang/String;)V
    .locals 0
    .parameter "auto_logos"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->auto_logos:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setCar_id(Ljava/lang/String;)V
    .locals 0
    .parameter "car_id"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->car_id:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->created:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->description:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setFace_thumb(Ljava/lang/String;)V
    .locals 0
    .parameter "face_thumb"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->face_thumb:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setFace_url(Ljava/lang/String;)V
    .locals 0
    .parameter "face_url"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->face_url:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMine_car_plate_num(Ljava/lang/String;)V
    .locals 0
    .parameter "mine_car_plate_num"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->mine_car_plate_num:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setOnline_status(Ljava/lang/String;)V
    .locals 0
    .parameter "online_status"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->online_status:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->status:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GoloRemoteOrderInfo [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", car_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->car_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string/jumbo v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string/jumbo v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->created:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", auto_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->auto_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string/jumbo v1, ", mine_car_plate_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->mine_car_plate_num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", face_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->face_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", face_thumb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->face_thumb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", auto_logos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->auto_logos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
