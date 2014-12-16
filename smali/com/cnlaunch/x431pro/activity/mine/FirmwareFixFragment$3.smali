.class Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$3;
.super Ljava/lang/Object;
.source "FirmwareFixFragment.java"

# interfaces
.implements Lcom/cnlaunch/physics/listener/OnDownloadBinListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDownloadBinCmdListener(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 323
    return-void
.end method

.method public OnDownloadBinListener(IJJ)V
    .locals 5
    .parameter "state"
    .parameter "progress"
    .parameter "length"

    .prologue
    const/4 v3, 0x6

    .line 305
    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    .line 306
    long-to-float v2, p2

    long-to-float v3, p4

    div-float v1, v2, v3

    .line 307
    .local v1, num:F
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v2, 0x42c8

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 308
    .local v0, b:Ljava/math/BigDecimal;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->currentDownloadBin:F
    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$20(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;F)V

    .line 312
    .end local v0           #b:Ljava/math/BigDecimal;
    .end local v1           #num:F
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$21(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 313
    return-void

    .line 309
    :cond_1
    if-ne p1, v3, :cond_0

    .line 310
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$21(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public OnDownloadBinListener(ILjava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "version"

    .prologue
    .line 318
    return-void
.end method
