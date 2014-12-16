.class Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$3;
.super Ljava/lang/Object;
.source "BluetoothActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "arg1"
    .parameter "index"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    .line 57
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->setState(I)V

    .line 58
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->connectBluetoothDevice(I)V

    .line 60
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    .line 61
    .local v2, info:Lcom/cnlaunch/physics/entity/BluetoothListDto;
    invoke-virtual {v2}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->getBluetoothName()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    const-string/jumbo v6, "SHARE_DATA"

    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 64
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 65
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "bluetooth_address"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    const-string/jumbo v5, "bluetooth_name"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void
.end method
