.class public Lcom/cnlaunch/golo3/dto/InfoDto;
.super Ljava/lang/Object;
.source "InfoDto.java"


# instance fields
.field private code:I

.field private jsonArray:Lorg/json/JSONArray;

.field private jsonObject:Lorg/json/JSONObject;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/cnlaunch/golo3/dto/InfoDto;->code:I

    return v0
.end method

.method public getJsonArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/InfoDto;->jsonArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/InfoDto;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/InfoDto;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 38
    iput p1, p0, Lcom/cnlaunch/golo3/dto/InfoDto;->code:I

    .line 39
    return-void
.end method

.method public setContactInfo()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/cnlaunch/golo3/dto/InfoDto;->code:I

    return v0
.end method

.method public setJsonArray(Lorg/json/JSONArray;)V
    .locals 0
    .parameter "jsonArray"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/InfoDto;->jsonArray:Lorg/json/JSONArray;

    .line 62
    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "jsonObject"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/InfoDto;->jsonObject:Lorg/json/JSONObject;

    .line 55
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/InfoDto;->msg:Ljava/lang/String;

    .line 47
    return-void
.end method
