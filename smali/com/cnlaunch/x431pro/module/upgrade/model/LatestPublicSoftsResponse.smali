.class public Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "LatestPublicSoftsResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x34d9799dfbae856L


# instance fields
.field private x431PadSoftList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getX431PadSoftList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;->x431PadSoftList:Ljava/util/List;

    return-object v0
.end method

.method public setX431PadSoftList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, x431PadSoftList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;->x431PadSoftList:Ljava/util/List;

    .line 36
    return-void
.end method
