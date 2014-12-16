.class public Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
.super Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;
.source "GoloBindInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x174a1c7f30ed398L


# instance fields
.field private auto_code:Ljava/lang/String;

.field private auto_logos:Ljava/lang/String;

.field private face:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private if_pass:Ljava/lang/String;

.field private mine_car_plate_num:Ljava/lang/String;

.field private serial_no:Ljava/lang/String;

.field private unReadTipCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
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
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, source:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    .local p1, sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    if-nez p0, :cond_1

    .line 181
    :cond_0
    return-void

    .line 157
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

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    .line 158
    .local v0, c:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNick_name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNick_name()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, name:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    .line 160
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getInstance()Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, pinyin:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string/jumbo v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 162
    :cond_3
    const-string/jumbo v5, "1"

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getIf_pass()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 163
    const-string/jumbo v5, "Z"

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setSortKey(Ljava/lang/String;)V

    .line 167
    :goto_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #pinyin:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUser_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 165
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #pinyin:Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "#"

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setSortKey(Ljava/lang/String;)V

    goto :goto_2

    .line 170
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, sortString:Ljava/lang/String;
    const-string/jumbo v5, "[A-Z]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 172
    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setSortKey(Ljava/lang/String;)V

    .line 176
    :goto_3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_7
    const-string/jumbo v5, "#"

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setSortKey(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getUnreadNumber(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, guanzhuDateList2:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    const/4 v0, 0x0

    .line 185
    .local v0, result:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    return v0

    .line 185
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    .line 186
    .local v1, tmp:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNewMsgCount()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUnReadTipCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 187
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAuto_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->auto_code:Ljava/lang/String;

    return-object v0
.end method

.method public getAuto_logos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->auto_logos:Ljava/lang/String;

    return-object v0
.end method

.method public getFace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->face:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIf_pass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->if_pass:Ljava/lang/String;

    return-object v0
.end method

.method public getMine_car_plate_num()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->mine_car_plate_num:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->serial_no:Ljava/lang/String;

    return-object v0
.end method

.method public getUnReadTipCount()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->unReadTipCount:I

    return v0
.end method

.method public setAuto_code(Ljava/lang/String;)V
    .locals 0
    .parameter "auto_code"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->auto_code:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setAuto_logos(Ljava/lang/String;)V
    .locals 0
    .parameter "auto_logos"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->auto_logos:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setFace(Ljava/lang/String;)V
    .locals 0
    .parameter "face"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->face:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->id:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setIf_pass(Ljava/lang/String;)V
    .locals 0
    .parameter "if_pass"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->if_pass:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setMine_car_plate_num(Ljava/lang/String;)V
    .locals 0
    .parameter "mine_car_plate_num"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->mine_car_plate_num:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSerial_no(Ljava/lang/String;)V
    .locals 0
    .parameter "serial_no"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->serial_no:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setUnReadTipCount(I)V
    .locals 0
    .parameter "unReadTipCount"

    .prologue
    .line 50
    iput p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->unReadTipCount:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GoloBindInfo [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serial_no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->serial_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    const-string/jumbo v1, ", mine_car_plate_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->mine_car_plate_num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", if_pass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->if_pass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", auto_logos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->auto_logos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", auto_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->auto_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", unReadTipCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->unReadTipCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
