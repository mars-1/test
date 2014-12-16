.class public Lcom/cnlaunch/golo3/dto/AreaInfoDto;
.super Ljava/lang/Object;
.source "AreaInfoDto.java"


# instance fields
.field private code:I

.field private jsonArray:Lorg/json/JSONArray;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/cnlaunch/golo3/dto/AreaInfoDto;->code:I

    return v0
.end method

.method public getJsonArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/AreaInfoDto;->jsonArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/AreaInfoDto;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 32
    iput p1, p0, Lcom/cnlaunch/golo3/dto/AreaInfoDto;->code:I

    .line 33
    return-void
.end method

.method public setJsonArray(Lorg/json/JSONArray;)V
    .locals 0
    .parameter "jsonArray"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/AreaInfoDto;->jsonArray:Lorg/json/JSONArray;

    .line 49
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/AreaInfoDto;->msg:Ljava/lang/String;

    .line 41
    return-void
.end method
