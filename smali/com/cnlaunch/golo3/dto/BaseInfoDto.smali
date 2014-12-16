.class public Lcom/cnlaunch/golo3/dto/BaseInfoDto;
.super Ljava/lang/Object;
.source "BaseInfoDto.java"


# instance fields
.field private code:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private jsonObject:Lorg/json/JSONObject;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->code:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->data:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "jsonObject"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->jsonObject:Lorg/json/JSONObject;

    .line 54
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/BaseInfoDto;->msg:Ljava/lang/String;

    .line 46
    return-void
.end method
