.class public Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "RemoteServiceInfoResponse.java"


# static fields
.field private static final serialVersionUID:J = 0xb6cee966c35f157L


# instance fields
.field private data:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;->data:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;

    return-object v0
.end method

.method public setData(Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;->data:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;

    .line 23
    return-void
.end method
