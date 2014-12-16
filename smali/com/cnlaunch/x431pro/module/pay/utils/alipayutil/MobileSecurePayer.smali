.class public Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;
.super Ljava/lang/Object;
.source "MobileSecurePayer.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field lock:Ljava/lang/Integer;

.field mActivity:Landroid/app/Activity;

.field mAlixPay:Lcom/alipay/android/app/IAlixPay;

.field private mAlixPayConnection:Landroid/content/ServiceConnection;

.field private mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;

.field mbPaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "MobileSecurePayer"

    sput-object v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->lock:Ljava/lang/Integer;

    .line 32
    iput-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    .line 33
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mbPaying:Z

    .line 35
    iput-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    .line 38
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$1;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;

    .line 148
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$2;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;)Lcom/alipay/android/app/IRemoteServiceCallback;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z
    .locals 4
    .parameter "strOrderInfo"
    .parameter "callback"
    .parameter "myWhat"
    .parameter "activity"

    .prologue
    const/4 v0, 0x1

    .line 70
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mbPaying:Z

    if-eqz v1, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    .line 72
    :cond_0
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mbPaying:Z

    .line 75
    iput-object p4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    .line 79
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 84
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alipay/android/app/IAlixPay;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;

    .line 83
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 90
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer$3;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
