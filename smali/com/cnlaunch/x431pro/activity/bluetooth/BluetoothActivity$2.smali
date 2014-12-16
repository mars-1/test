.class Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$2;
.super Landroid/os/Handler;
.source "BluetoothActivity.java"


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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    .line 141
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 145
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 147
    :sswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothListAdapter:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$0(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothListAdapter:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$0(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 153
    :sswitch_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBtnScan:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$9(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBtnScan:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$9(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 157
    :sswitch_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBtnScan:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$9(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 158
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBtnScan:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->access$9(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_1
        0xa0 -> :sswitch_2
        0xaa -> :sswitch_3
    .end sparse-switch
.end method
