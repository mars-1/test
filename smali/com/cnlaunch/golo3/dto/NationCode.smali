.class public Lcom/cnlaunch/golo3/dto/NationCode;
.super Ljava/lang/Object;
.source "NationCode.java"


# instance fields
.field private code:Ljava/lang/String;

.field private jsonObject:Lorg/json/JSONObject;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/golo3/dto/NationCodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/NationCode;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/NationCode;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/golo3/dto/NationCodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/NationCode;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/NationCode;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/NationCode;->code:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "jsonObject"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/NationCode;->jsonObject:Lorg/json/JSONObject;

    .line 23
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/golo3/dto/NationCodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/NationCodeInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/NationCode;->list:Ljava/util/List;

    .line 29
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/NationCode;->msg:Ljava/lang/String;

    .line 41
    return-void
.end method
