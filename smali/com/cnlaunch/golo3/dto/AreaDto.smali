.class public Lcom/cnlaunch/golo3/dto/AreaDto;
.super Ljava/lang/Object;
.source "AreaDto.java"


# instance fields
.field ccode:Ljava/lang/String;

.field display:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ccode"
    .parameter "display"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/AreaDto;->ccode:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/cnlaunch/golo3/dto/AreaDto;->display:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getCcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/AreaDto;->ccode:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/AreaDto;->display:Ljava/lang/String;

    return-object v0
.end method

.method public setCcode(Ljava/lang/String;)V
    .locals 0
    .parameter "ccode"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/AreaDto;->ccode:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/AreaDto;->display:Ljava/lang/String;

    .line 22
    return-void
.end method
