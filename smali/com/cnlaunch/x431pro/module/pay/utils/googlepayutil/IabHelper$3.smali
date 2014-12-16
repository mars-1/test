.class Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$multiListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;

.field private final synthetic val$purchases:Ljava/util/List;

.field private final synthetic val$singleListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;Ljava/util/List;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->val$singleListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->val$multiListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 941
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v2, results:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;>;"
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 956
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->flagEndAsync()V

    .line 957
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->val$singleListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;

    if-eqz v3, :cond_1

    .line 958
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3$1;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->val$singleListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3$1;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 965
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->val$multiListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v3, :cond_2

    .line 966
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3$2;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->val$multiListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3$2;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 973
    :cond_2
    return-void

    .line 942
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;

    .line 944
    .local v1, purchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    if-eqz v1, :cond_0

    .line 945
    :try_start_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    invoke-virtual {v4, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->consume(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    .line 946
    new-instance v4, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    .line 947
    const/4 v5, 0x0

    .line 948
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Successful consume of sku "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 948
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 946
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, ex:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;->getResult()Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
