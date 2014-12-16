.class public Lcom/cnlaunch/golo3/dto/NationCodeInfo;
.super Ljava/lang/Object;
.source "NationCodeInfo.java"


# instance fields
.field private display:Ljava/lang/String;

.field private is_sms:Ljava/lang/String;

.field private ncode:Ljava/lang/String;

.field private pre_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/NationCodeInfo;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_sms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/NationCodeInfo;->is_sms:Ljava/lang/String;

    return-object v0
.end method

.method public getNcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/NationCodeInfo;->ncode:Ljava/lang/String;

    return-object v0
.end method

.method public getPre_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/NationCodeInfo;->pre_code:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/NationCodeInfo;->display:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setIs_sms(Ljava/lang/String;)V
    .locals 0
    .parameter "is_sms"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/NationCodeInfo;->is_sms:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setNcode(Ljava/lang/String;)V
    .locals 0
    .parameter "ncode"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/NationCodeInfo;->ncode:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setPre_code(Ljava/lang/String;)V
    .locals 0
    .parameter "pre_code"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/NationCodeInfo;->pre_code:Ljava/lang/String;

    .line 37
    return-void
.end method
