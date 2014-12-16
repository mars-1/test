.class Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$moreSkus:Ljava/util/List;

.field private final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;->val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 589
    new-instance v3, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    const/4 v5, 0x0

    .line 590
    const-string/jumbo v6, "Inventory refresh successful."

    .line 589
    invoke-direct {v3, v5, v6}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 591
    .local v3, result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    const/4 v1, 0x0

    .line 593
    .local v1, inv:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    iget-boolean v6, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;
    :try_end_0
    .catch Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 598
    :goto_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->flagEndAsync()V

    .line 600
    move-object v4, v3

    .line 601
    .local v4, result_f:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    move-object v2, v1

    .line 602
    .local v2, inv_f:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2$1;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;->val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {v6, p0, v7, v4, v2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2$1;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    return-void

    .line 594
    .end local v2           #inv_f:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;
    .end local v4           #result_f:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    :catch_0
    move-exception v0

    .line 595
    .local v0, ex:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;->getResult()Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    move-result-object v3

    goto :goto_0
.end method
