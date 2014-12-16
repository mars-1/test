.class public Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;
.super Landroid/os/Handler;
.source "SetupWifiUtilHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadHandler"
.end annotation


# instance fields
.field public final RECEIVER_READ_DATA:I

.field readNullCount:I

.field final synthetic this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;

    .line 290
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 286
    const/16 v0, 0x64

    iput v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->RECEIVER_READ_DATA:I

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->readNullCount:I

    .line 291
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 295
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 297
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 299
    .local v0, readData:[B
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;

    #calls: Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->parserValue([B)V
    invoke-static {v1, v0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->access$0(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;[B)V

    .line 303
    const/4 v1, 0x0

    iput v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->readNullCount:I

    goto :goto_0

    .line 305
    :cond_1
    iget v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->readNullCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->readNullCount:I

    .line 306
    iget v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->readNullCount:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 308
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;

    const/16 v2, 0xe4

    const/4 v3, 0x0

    #calls: Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->access$1(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;ILjava/lang/Object;)V

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
