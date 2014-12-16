.class Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$1;
.super Landroid/os/Handler;
.source "OrientationSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;

    .line 116
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 130
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->currentType:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->access$0(Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;)I

    move-result v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->oldType:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->access$1(Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->btnApply:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->access$2(Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->btnApply:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->access$2(Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
