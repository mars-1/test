.class Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo$1;
.super Landroid/os/Handler;
.source "AlixDemo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;

    .line 167
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 170
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 172
    .local v3, strRet:Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 190
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 194
    .end local v3           #strRet:Ljava/lang/String;
    :goto_1
    return-void

    .line 174
    .restart local v3       #strRet:Ljava/lang/String;
    :pswitch_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;

    #calls: Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->closeProgress()V
    invoke-static {v5}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;->access$0(Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :try_start_1
    const-string/jumbo v4, "resultStatus={"

    .line 178
    .local v4, tradeStatus:Ljava/lang/String;
    const-string/jumbo v5, "resultStatus="

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 179
    .local v2, imemoStart:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 180
    const-string/jumbo v5, "};memo="

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 181
    .local v1, imemoEnd:I
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 183
    .end local v1           #imemoEnd:I
    .end local v2           #imemoStart:I
    .end local v4           #tradeStatus:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/AlixDemo;

    const-string/jumbo v6, "\u63d0\u793a"

    const v7, 0x7f020395

    invoke-static {v5, v6, v3, v7}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/BaseHelper;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 191
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #strRet:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 192
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
