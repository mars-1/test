.class public Lcom/cnlaunch/golo3/dto/ReturnFalseCode;
.super Ljava/lang/Object;
.source "ReturnFalseCode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x616fa5883d971b27L


# instance fields
.field private code:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private full_image_url:Ljava/lang/String;

.field private image_url:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private verifycode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ReturnFalseCode;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ReturnFalseCode;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getFull_image_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ReturnFalseCode;->full_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImage_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ReturnFalseCode;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ReturnFalseCode;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifycode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ReturnFalseCode;->verifycode:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ReturnFalseCode;->code:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ReturnFalseCode;->data:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setFull_image_url(Ljava/lang/String;)V
    .locals 0
    .parameter "full_image_url"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ReturnFalseCode;->full_image_url:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setImage_url(Ljava/lang/String;)V
    .locals 0
    .parameter "image_url"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ReturnFalseCode;->image_url:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ReturnFalseCode;->msg:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setVerifycode(Ljava/lang/String;)V
    .locals 0
    .parameter "verifycode"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ReturnFalseCode;->verifycode:Ljava/lang/String;

    .line 24
    return-void
.end method
