.class public Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;
.super Ljava/lang/Object;
.source "ContentEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private contentString:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private mileageID:Ljava/lang/String;

.field private serialNo:Ljava/lang/String;

.field private thumb:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->contentString:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->fileName:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->url:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->type:I

    .line 30
    iput-object v1, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->itemId:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->thumb:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->serialNo:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->time:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->mileageID:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getContentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->contentString:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getMileage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->mileageID:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public parseJsonString(Ljava/lang/String;)Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;
    .locals 3
    .parameter "jsonString"

    .prologue
    .line 119
    if-eqz p1, :cond_8

    .line 121
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, jsonObject:Lorg/json/JSONObject;
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->type:I

    .line 125
    :cond_0
    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->contentString:Ljava/lang/String;

    .line 128
    :cond_1
    const-string/jumbo v2, "filename"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    const-string/jumbo v2, "filename"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->fileName:Ljava/lang/String;

    .line 131
    :cond_2
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->url:Ljava/lang/String;

    .line 134
    :cond_3
    const-string/jumbo v2, "thumb"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    const-string/jumbo v2, "thumb"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->thumb:Ljava/lang/String;

    .line 137
    :cond_4
    const-string/jumbo v2, "item_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    const-string/jumbo v2, "item_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->itemId:Ljava/lang/String;

    .line 140
    :cond_5
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 141
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->time:Ljava/lang/String;

    .line 143
    :cond_6
    const-string/jumbo v2, "serial_no"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 144
    const-string/jumbo v2, "serial_no"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->serialNo:Ljava/lang/String;

    .line 146
    :cond_7
    const-string/jumbo v2, "mileage_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 147
    const-string/jumbo v2, "mileage_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->mileageID:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    :cond_8
    :goto_0
    return-object p0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setContentString(Ljava/lang/String;)V
    .locals 0
    .parameter "contentString"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->contentString:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->fileName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .parameter "itemId"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->itemId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setMileage(Ljava/lang/String;)V
    .locals 0
    .parameter "mileageID"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->mileageID:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0
    .parameter "serialNo"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->serialNo:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->thumb:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->time:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 101
    iput p1, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->type:I

    .line 102
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->url:Ljava/lang/String;

    .line 94
    return-void
.end method
