.class public Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "GoloAttentionResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x12c45981fbea1069L


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;->data:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;->data:Ljava/util/List;

    .line 25
    return-void
.end method
