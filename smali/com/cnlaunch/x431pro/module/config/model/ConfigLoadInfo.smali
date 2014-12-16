.class public Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "ConfigLoadInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x51b470a0cb82557fL


# instance fields
.field private configlan:Ljava/lang/String;

.field private configurl:Ljava/lang/String;

.field private country_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->configurl:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->configlan:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getConfiglan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->configlan:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->configurl:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->country_id:Ljava/lang/String;

    return-object v0
.end method

.method public setConfiglan(Ljava/lang/String;)V
    .locals 0
    .parameter "configlan"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->configlan:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setConfigurl(Ljava/lang/String;)V
    .locals 0
    .parameter "configurl"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->configurl:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setCountry_id(Ljava/lang/String;)V
    .locals 0
    .parameter "country_id"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->country_id:Ljava/lang/String;

    .line 42
    return-void
.end method
