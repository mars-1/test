.class public Lcom/cnlaunch/x431pro/module/golo/model/RemoteOrderAllCountResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "RemoteOrderAllCountResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x3c9ad3c70423776aL


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemoteOrderAllCountResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/RemoteOrderAllCountResponse;->data:Ljava/lang/String;

    .line 16
    return-void
.end method
