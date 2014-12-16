.class public Lcom/cnlaunch/golo3/dto/NationInfoDto;
.super Ljava/lang/Object;
.source "NationInfoDto.java"


# instance fields
.field code:Ljava/lang/String;

.field jsonArray:Lorg/json/JSONArray;

.field msg:Ljava/lang/String;


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
    .line 25
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/NationInfoDto;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/NationInfoDto;->jsonArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/NationInfoDto;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/NationInfoDto;->code:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setJsonArray(Lorg/json/JSONArray;)V
    .locals 0
    .parameter "jsonArray"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/NationInfoDto;->jsonArray:Lorg/json/JSONArray;

    .line 46
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/NationInfoDto;->msg:Ljava/lang/String;

    .line 38
    return-void
.end method
