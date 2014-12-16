.class Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;
.super Landroid/os/Handler;
.source "WifiPrintSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    .line 120
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const v4, 0x7f0706b2

    const/4 v3, 0x1

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->printerIP:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$6(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$7(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/x431pro/common/Constants;->printerIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->printerIP:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$8(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->connectresult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$9(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0706b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->attachprintButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$10(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->attachprintButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$10(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->testprintButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$11(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->connectresult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$9(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0706b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->attachprintButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$10(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->attachprintButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$10(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->testprintButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$11(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
