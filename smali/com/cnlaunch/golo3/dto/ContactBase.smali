.class public Lcom/cnlaunch/golo3/dto/ContactBase;
.super Ljava/lang/Object;
.source "ContactBase.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private purikuraUrl:Ljava/lang/String;

.field private signature:Ljava/lang/String;


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
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ContactBase;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ContactBase;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ContactBase;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ContactBase;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurikuraUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ContactBase;->purikuraUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ContactBase;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ContactBase;->code:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ContactBase;->id:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ContactBase;->msg:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .parameter "nickName"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ContactBase;->nickName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPurikuraUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "purikuraUrl"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ContactBase;->purikuraUrl:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ContactBase;->signature:Ljava/lang/String;

    .line 54
    return-void
.end method
