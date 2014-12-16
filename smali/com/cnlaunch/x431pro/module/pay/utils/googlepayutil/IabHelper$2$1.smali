.class Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;

.field private final synthetic val$inv_f:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;

.field private final synthetic val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$result_f:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2$1;->this$1:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2$1;->val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;

    iput-object p3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2$1;->val$result_f:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    iput-object p4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2$1;->val$inv_f:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2$1;->val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2$1;->val$result_f:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2$1;->val$inv_f:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;)V

    .line 605
    return-void
.end method
