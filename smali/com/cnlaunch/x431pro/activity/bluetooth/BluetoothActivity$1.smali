.class Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;
.super Ljava/lang/Object;
.source "BluetoothActivity.java"

# interfaces
.implements Lcom/cnlaunch/physics/listener/OnBluetoothListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetooth(Landroid/bluetooth/BluetoothAdapter;ILjava/util/ArrayList;Ljava/lang/Object;)V
    .locals 4
    .parameter "mAdapter"
    .parameter "state"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothAdapter;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/physics/entity/BluetoothListDto;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/physics/entity/BluetoothListDto;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothListAdapter:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$0(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$1(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->getBluetoothList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$2(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    #setter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothListAdapter:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$3(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;)V

    .line 97
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    const v2, 0x7f0c003e

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    #setter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLv:Landroid/widget/ListView;
    invoke-static {v1, v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$4(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;Landroid/widget/ListView;)V

    .line 98
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLv:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$5(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothListAdapter:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$0(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$6(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onBluetoothConnSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$1(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->getBluetoothList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLibPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$7(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LIB_PATH:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLibLanguage:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$8(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->finish()V

    .line 110
    return-void
.end method

.method public onBluetoothScanFinish()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$6(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method

.method public onBluetoothScanStart()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$6(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    return-void
.end method
