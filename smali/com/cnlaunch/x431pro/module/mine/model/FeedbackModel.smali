.class public Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "FeedbackModel.java"


# static fields
.field private static final serialVersionUID:J = 0x64736d2c4be99370L


# instance fields
.field private auto_code:Ljava/lang/String;

.field private nick_name:Ljava/lang/String;

.field private review_level:Ljava/lang/String;

.field private serial_no:Ljava/lang/String;

.field private thumb_url:Ljava/lang/String;

.field private updated:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 90
    const-wide v0, 0x64736d2c4be99370L

    return-wide v0
.end method


# virtual methods
.method public getAuto_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->auto_code:Ljava/lang/String;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getReview_level()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->review_level:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->serial_no:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->thumb_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAuto_code(Ljava/lang/String;)V
    .locals 0
    .parameter "auto_code"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->auto_code:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0
    .parameter "nick_name"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->nick_name:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setReview_level(Ljava/lang/String;)V
    .locals 0
    .parameter "review_level"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->review_level:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSerial_no(Ljava/lang/String;)V
    .locals 0
    .parameter "serial_no"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->serial_no:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setThumb_url(Ljava/lang/String;)V
    .locals 0
    .parameter "thumb_url"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->thumb_url:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setUpdated(Ljava/lang/String;)V
    .locals 0
    .parameter "updated"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->updated:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .parameter "user_id"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->user_id:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0
    .parameter "user_name"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->user_name:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FeedbackModel [serial_no="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->serial_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", auto_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->auto_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->updated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", review_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->review_level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", user_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nick_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->nick_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumb_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;->thumb_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
