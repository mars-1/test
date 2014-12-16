.class Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$1;
.super Ljava/lang/Object;
.source "DownloadBinActivity.java"

# interfaces
.implements Lcom/cnlaunch/physics/listener/OnDownloadBinListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDownloadBinCmdListener(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 171
    return-void
.end method

.method public OnDownloadBinListener(IJJ)V
    .locals 5
    .parameter "state"
    .parameter "progress"
    .parameter "length"

    .prologue
    .line 155
    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    .line 156
    long-to-float v2, p2

    long-to-float v3, p4

    div-float v1, v2, v3

    .line 157
    .local v1, num:F
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v2, 0x42c8

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 158
    .local v0, b:Ljava/math/BigDecimal;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    #setter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->currentDownloadBin:F
    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$0(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;F)V

    .line 160
    .end local v0           #b:Ljava/math/BigDecimal;
    .end local v1           #num:F
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$1(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    return-void
.end method

.method public OnDownloadBinListener(ILjava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "version"

    .prologue
    .line 166
    return-void
.end method
