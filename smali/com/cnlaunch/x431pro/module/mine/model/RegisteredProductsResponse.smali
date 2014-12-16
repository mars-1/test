.class public Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
.super Lcom/cnlaunch/x431pro/module/base/BaseResponse;
.source "RegisteredProductsResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x195185a3065f39d1L


# instance fields
.field private productDTOs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductDTOs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->productDTOs:Ljava/util/List;

    return-object v0
.end method

.method public setProductDTOs(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, productDTOs:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ProductDTO;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->productDTOs:Ljava/util/List;

    .line 31
    return-void
.end method
