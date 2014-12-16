.class public Lcom/cnlaunch/golo3/dto/InfoDto1;
.super Ljava/lang/Object;
.source "InfoDto1.java"


# instance fields
.field private code:I

.field private data:Ljava/lang/String;

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
    .line 36
    iget v0, p0, Lcom/cnlaunch/golo3/dto/InfoDto1;->code:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/InfoDto1;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/InfoDto1;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 44
    iput p1, p0, Lcom/cnlaunch/golo3/dto/InfoDto1;->code:I

    .line 45
    return-void
.end method

.method public setContactInfo()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/cnlaunch/golo3/dto/InfoDto1;->code:I

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/InfoDto1;->data:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/InfoDto1;->msg:Ljava/lang/String;

    .line 53
    return-void
.end method
