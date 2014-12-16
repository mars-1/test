.class public Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiPrintSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WiFiChangeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->isWifiConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->wifiname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$4(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getInfo()Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$5(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->wifiname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$4(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
