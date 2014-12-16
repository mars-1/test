.class public Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "RemoteServiceInfoData.java"


# static fields
.field private static final serialVersionUID:J = -0x1e9239c9d02e63b7L


# instance fields
.field private domain:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;->port:I

    return v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .parameter "domain"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;->domain:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;->ip:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 28
    iput p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;->port:I

    .line 29
    return-void
.end method
