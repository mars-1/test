.class public Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;
.super Ljava/lang/Object;
.source "Inventory.java"


# instance fields
.field mPurchaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field mSkuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->mSkuMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->mPurchaseMap:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method addPurchase(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method addSkuDetails(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/SkuDetails;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public erasePurchase(Ljava/lang/String;)V
    .locals 1
    .parameter "sku"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    return-void
.end method

.method getAllOwnedSkus()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllPurchases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPurchase(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    .locals 1
    .parameter "sku"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;

    return-object v0
.end method

.method public getSkuDetails(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/SkuDetails;
    .locals 1
    .parameter "sku"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/SkuDetails;

    return-object v0
.end method

.method public hasDetails(Ljava/lang/String;)Z
    .locals 1
    .parameter "sku"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPurchase(Ljava/lang/String;)Z
    .locals 1
    .parameter "sku"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
