.class public Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "ProductsRegDateResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x671375204a89489aL


# instance fields
.field private productsRegDateDTOs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductsRegDateDTOs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;->productsRegDateDTOs:Ljava/util/List;

    return-object v0
.end method

.method public setProductsRegDateDTOs(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, productsRegDateDTOs:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;->productsRegDateDTOs:Ljava/util/List;

    .line 29
    return-void
.end method
