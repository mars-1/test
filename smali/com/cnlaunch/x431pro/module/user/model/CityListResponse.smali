.class public Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "CityListResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x19e78b57ec2967f7L


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/user/model/City;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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
            "Lcom/cnlaunch/x431pro/module/user/model/City;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;->data:Ljava/util/List;

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
            "Lcom/cnlaunch/x431pro/module/user/model/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/user/model/City;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;->data:Ljava/util/List;

    .line 34
    return-void
.end method
