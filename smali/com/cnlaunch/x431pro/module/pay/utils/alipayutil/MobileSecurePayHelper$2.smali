.class Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$2;
.super Ljava/lang/Object;
.source "MobileSecurePayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->detectMobile_sp()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

.field private final synthetic val$cachePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$2;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$2;->val$cachePath:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 69
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$2;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

    #getter for: Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->access$1(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$2;->val$cachePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 70
    .local v0, apkInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$2;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

    invoke-virtual {v3, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->checkNewUpdate(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, newApkdlUrl:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 74
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$2;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$2;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

    #getter for: Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->access$1(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$2;->val$cachePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->retrieveApkFromNet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 79
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 80
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$2;->val$cachePath:Ljava/lang/String;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$2;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

    #getter for: Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->access$2(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    return-void
.end method
