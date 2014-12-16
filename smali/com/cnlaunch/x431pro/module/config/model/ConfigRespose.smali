.class public Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "ConfigRespose.java"


# static fields
.field private static final serialVersionUID:J = 0x171087e24588dc18L


# instance fields
.field private data:Lcom/cnlaunch/x431pro/module/config/model/ConfigData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/cnlaunch/x431pro/module/config/model/ConfigData;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->data:Lcom/cnlaunch/x431pro/module/config/model/ConfigData;

    return-object v0
.end method

.method public setData(Lcom/cnlaunch/x431pro/module/config/model/ConfigData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/config/model/ConfigRespose;->data:Lcom/cnlaunch/x431pro/module/config/model/ConfigData;

    .line 32
    return-void
.end method
