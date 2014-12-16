.class Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;
.super Landroid/os/Handler;
.source "WLANManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/physics/wifi/WLANManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadHandler"
.end annotation


# instance fields
.field D:Z

.field buffer:[B

.field bytes:I

.field dataStreamBuff:[B

.field dataStreamCurrTotal:I

.field fullBuffer:[B

.field final synthetic this$0:Lcom/cnlaunch/physics/wifi/WLANManager;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/physics/wifi/WLANManager;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    const/4 v1, 0x0

    .line 143
    iput-object p1, p0, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;->this$0:Lcom/cnlaunch/physics/wifi/WLANManager;

    .line 144
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    const/16 v0, 0x1400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;->dataStreamBuff:[B

    .line 137
    iput v1, p0, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;->dataStreamCurrTotal:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;->D:Z

    .line 139
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;->buffer:[B

    .line 140
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;->fullBuffer:[B

    .line 145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 150
    :try_start_0
    sget-object v4, Lcom/cnlaunch/physics/wifi/WLANManager;->inputStream:Ljava/io/InputStream;

    if-nez v4, :cond_1

    .line 151
    iget-object v4, p0, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;->this$0:Lcom/cnlaunch/physics/wifi/WLANManager;

    invoke-virtual {v4}, Lcom/cnlaunch/physics/wifi/WLANManager;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    :try_start_1
    new-instance v0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    sget-object v4, Lcom/cnlaunch/physics/wifi/WLANManager;->instance:Lcom/cnlaunch/physics/wifi/WLANManager;

    sget-object v5, Lcom/cnlaunch/physics/wifi/WLANManager;->inputStream:Ljava/io/InputStream;

    sget-object v6, Lcom/cnlaunch/physics/wifi/WLANManager;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v0, v4, v5, v6}, Lcom/cnlaunch/physics/utils/ReadByteDataStream;-><init>(Lcom/cnlaunch/physics/impl/IPhysics;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 156
    .local v0, dynamic:Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .end local v0           #dynamic:Ljava/lang/Runnable;
    .end local v3           #t:Ljava/lang/Thread;
    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;->this$0:Lcom/cnlaunch/physics/wifi/WLANManager;

    #getter for: Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandler:Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;
    invoke-static {v4}, Lcom/cnlaunch/physics/wifi/WLANManager;->access$1(Lcom/cnlaunch/physics/wifi/WLANManager;)Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 169
    iget-object v4, p0, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;->this$0:Lcom/cnlaunch/physics/wifi/WLANManager;

    #getter for: Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandler:Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;
    invoke-static {v4}, Lcom/cnlaunch/physics/wifi/WLANManager;->access$1(Lcom/cnlaunch/physics/wifi/WLANManager;)Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 161
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 163
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    iget-object v4, p0, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;->this$0:Lcom/cnlaunch/physics/wifi/WLANManager;

    #calls: Lcom/cnlaunch/physics/wifi/WLANManager;->close()V
    invoke-static {v4}, Lcom/cnlaunch/physics/wifi/WLANManager;->access$0(Lcom/cnlaunch/physics/wifi/WLANManager;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 164
    :catch_2
    move-exception v2

    .line 165
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
