.class Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BluetoothListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field bluetoothAddress:Landroid/widget/TextView;

.field bluetoothName:Landroid/widget/TextView;

.field bluetoothStatus:Landroid/widget/ImageView;

.field connStatus:Landroid/widget/TextView;

.field pairStatus:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
