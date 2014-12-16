.class Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;

.field private final synthetic val$multiListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;

.field private final synthetic val$purchases:Ljava/util/List;

.field private final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3$2;->this$1:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3$2;->val$multiListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;

    iput-object p3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3$2;->val$purchases:Ljava/util/List;

    iput-object p4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3$2;->val$results:Ljava/util/List;

    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 968
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3$2;->val$multiListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3$2;->val$purchases:Ljava/util/List;

    .line 969
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3$2;->val$results:Ljava/util/List;

    .line 968
    invoke-interface {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    .line 970
    return-void
.end method
