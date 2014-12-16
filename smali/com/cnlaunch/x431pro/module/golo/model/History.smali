.class public Lcom/cnlaunch/x431pro/module/golo/model/History;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "History.java"


# static fields
.field private static final serialVersionUID:J = -0x50f84068605c0c4aL


# instance fields
.field private alarm_type:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private is_read:Ljava/lang/String;

.field private item_id:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private serial_no:Ljava/lang/String;

.field private technician_id:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarm_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->alarm_type:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_read()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->is_read:Ljava/lang/String;

    return-object v0
.end method

.method public getItem_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->item_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->serial_no:Ljava/lang/String;

    return-object v0
.end method

.method public getTechnician_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->technician_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setAlarm_type(Ljava/lang/String;)V
    .locals 0
    .parameter "alarm_type"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->alarm_type:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->content:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->id:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setIs_read(Ljava/lang/String;)V
    .locals 0
    .parameter "is_read"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->is_read:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setItem_id(Ljava/lang/String;)V
    .locals 0
    .parameter "item_id"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->item_id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->msg:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSerial_no(Ljava/lang/String;)V
    .locals 0
    .parameter "serial_no"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->serial_no:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setTechnician_id(Ljava/lang/String;)V
    .locals 0
    .parameter "technician_id"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->technician_id:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->time:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "History [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", item_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->item_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", alarm_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->alarm_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    const-string/jumbo v1, ", serial_no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->serial_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", technician_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->technician_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is_read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/History;->is_read:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
