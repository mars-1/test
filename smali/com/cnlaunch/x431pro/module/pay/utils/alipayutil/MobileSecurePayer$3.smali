.class Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;
.super Ljava/lang/Object;
.source "MobileSecurePayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

.field private final synthetic val$callback:Landroid/os/Handler;

.field private final synthetic val$myWhat:I

.field private final synthetic val$strOrderInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->val$strOrderInfo:Ljava/lang/String;

    iput p3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->val$myWhat:I

    iput-object p4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->val$callback:Landroid/os/Handler;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

    iget-object v4, v3, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->lock:Ljava/lang/Integer;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    if-nez v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->lock:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 99
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

    #getter for: Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->access$0(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;)Lcom/alipay/android/app/IRemoteServiceCallback;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 110
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->val$strOrderInfo:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, strRet:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mbPaying:Z

    .line 118
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

    #getter for: Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->access$0(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;)Lcom/alipay/android/app/IRemoteServiceCallback;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 119
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 120
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

    #getter for: Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->access$1(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;)Landroid/content/ServiceConnection;

    move-result-object v4

    .line 119
    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 124
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 125
    .local v1, msg:Landroid/os/Message;
    iget v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->val$myWhat:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 126
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->val$callback:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    .end local v2           #strRet:Ljava/lang/String;
    :goto_0
    return-void

    .line 99
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 134
    .restart local v1       #msg:Landroid/os/Message;
    iget v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->val$myWhat:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;->val$callback:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
