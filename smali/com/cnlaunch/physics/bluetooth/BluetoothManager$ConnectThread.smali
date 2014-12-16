.class Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectThread"
.end annotation


# instance fields
.field private mSocketType:Ljava/lang/String;

.field private final mmDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mmSocket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter
    .parameter "device"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 425
    const-string/jumbo v2, "Insecure"

    iput-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mSocketType:Ljava/lang/String;

    .line 428
    const-string/jumbo v2, "BluetoothManager"

    const-string/jumbo v3, "ConnectThread construct"

    invoke-static {v2, v3}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iput-object p2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    .line 430
    const/4 v1, 0x0

    .line 431
    .local v1, tmp:Landroid/bluetooth/BluetoothSocket;
    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I
    invoke-static {p1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$5(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 433
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 434
    iget-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    .line 435
    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->MY_UUID:Ljava/util/UUID;
    invoke-static {p1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$7(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 448
    :goto_0
    iput-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    .line 449
    return-void

    .line 437
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    .line 438
    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->MY_UUID:Ljava/util/UUID;
    invoke-static {p1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$7(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 437
    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v2, "BluetoothManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Socket Type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 442
    const-string/jumbo v4, " create() failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 441
    invoke-static {v2, v3}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v1, 0x0

    .line 445
    goto :goto_0

    .line 446
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->createBluetoothSocket(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    goto :goto_0
.end method

.method private createBluetoothSocket(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .parameter "device"

    .prologue
    .line 455
    const/4 v2, 0x0

    .line 458
    .local v2, tmp:Landroid/bluetooth/BluetoothSocket;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "createRfcommSocket"

    .line 459
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 458
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 460
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 461
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 460
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tmp:Landroid/bluetooth/BluetoothSocket;
    check-cast v2, Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .end local v1           #method:Ljava/lang/reflect/Method;
    .restart local v2       #tmp:Landroid/bluetooth/BluetoothSocket;
    :goto_0
    return-object v2

    .line 462
    .end local v2           #tmp:Landroid/bluetooth/BluetoothSocket;
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 464
    .restart local v2       #tmp:Landroid/bluetooth/BluetoothSocket;
    const-string/jumbo v3, "BluetoothChatService"

    .line 465
    const-string/jumbo v4, "Could not create Insecure RFComm Connection"

    .line 464
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 512
    const-string/jumbo v1, "BluetoothManager"

    const-string/jumbo v2, "cancel ConnectThread "

    invoke-static {v1, v2}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v1, "BluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "close() of connect "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 519
    const-string/jumbo v3, " socket failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 518
    invoke-static {v1, v2}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 471
    const-string/jumbo v2, "BluetoothManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "BEGIN mConnectThread SocketType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ConnectThread"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->setName(Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    if-nez v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #calls: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->connectionFailed()V
    invoke-static {v2}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$8(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)V

    .line 508
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 484
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    iget-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    iget-object v4, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    #calls: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->connected(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3, v4}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$10(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 495
    :goto_1
    const-string/jumbo v2, "BluetoothManager"

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unable to connect() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-static {v2, v3}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #calls: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->connectionFailed()V
    invoke-static {v2}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$8(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)V

    goto :goto_0

    .line 489
    :catch_1
    move-exception v1

    .line 490
    .local v1, e2:Ljava/io/IOException;
    const-string/jumbo v2, "BluetoothManager"

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unable to close() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 492
    const-string/jumbo v4, " socket during connection failure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 493
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 491
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-static {v2, v3}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
