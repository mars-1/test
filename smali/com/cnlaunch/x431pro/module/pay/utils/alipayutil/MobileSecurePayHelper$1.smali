.class Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$1;
.super Landroid/os/Handler;
.source "MobileSecurePayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

    .line 297
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 300
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 302
    :pswitch_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

    #calls: Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->closeProgress()V
    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->access$0(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;)V

    .line 303
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 304
    .local v0, cachePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

    #getter for: Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->access$1(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->showInstallConfirmDialog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v0           #cachePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 308
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
