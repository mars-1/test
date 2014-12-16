.class public Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "WifiPrintSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;,
        Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$reciverUdpMulticastThread;,
        Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$sendUDPMulticastThread;
    }
.end annotation


# static fields
.field public static final FAILURE_CONNECT:I = 0x1

.field public static final SUCCESS_CONNECT:I = 0x0

.field public static final TIMEOUT:I = 0x2710


# instance fields
.field private attachprintButton:Landroid/widget/Button;

.field private connectresult:Landroid/widget/TextView;

.field private destAddressStr:Ljava/lang/String;

.field private destPortInt:I

.field private handler:Landroid/os/Handler;

.field private mWiFiChangeBroadcastReceiver:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;

.field private multicastSocket:Ljava/net/MulticastSocket;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private printerIP:Ljava/lang/String;

.field private selectwifiButton:Landroid/widget/Button;

.field private setprintButton:Landroid/widget/Button;

.field private testprintButton:Landroid/widget/Button;

.field private wifiname:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 54
    const-string/jumbo v0, "224.0.0.1"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->destAddressStr:Ljava/lang/String;

    .line 55
    const/16 v0, 0x3dc

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->destPortInt:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->multicastSocket:Ljava/net/MulticastSocket;

    .line 60
    const-string/jumbo v0, "ip"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->printerIP:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->destAddressStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Ljava/net/MulticastSocket;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->multicastSocket:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->attachprintButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->testprintButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->destPortInt:I

    return v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->wifiname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->printerIP:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Lcom/cnlaunch/framework/common/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->printerIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->connectresult:Landroid/widget/TextView;

    return-object v0
.end method

.method private getInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 241
    .local v3, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 242
    .local v0, info:Landroid/net/wifi/WifiInfo;
    const-string/jumbo v2, ""

    .line 243
    .local v2, status:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 245
    const-string/jumbo v2, "WIFI_STATE_ENABLED"

    .line 247
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, ssid:Ljava/lang/String;
    return-object v1
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 91
    const v2, 0x7f0706ab

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->setTitle(I)V

    .line 92
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020525

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 94
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c04f7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->wifiname:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c04fa

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->connectresult:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c04f8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->selectwifiButton:Landroid/widget/Button;

    .line 97
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->selectwifiButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c04f9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->attachprintButton:Landroid/widget/Button;

    .line 99
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->attachprintButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c04f6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->setprintButton:Landroid/widget/Button;

    .line 101
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->setprintButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c04fb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->testprintButton:Landroid/widget/Button;

    .line 103
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->testprintButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->isWifiConnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->wifiname:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.cnlaunch.wifiprinter"

    invoke-static {v2, v3}, Lcom/cnlaunch/diagnosemodule/utils/SystemAppTools;->getAppsIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->setprintButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    :goto_0
    :try_start_0
    new-instance v2, Ljava/net/MulticastSocket;

    invoke-direct {v2}, Ljava/net/MulticastSocket;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->multicastSocket:Ljava/net/MulticastSocket;

    .line 115
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->multicastSocket:Ljava/net/MulticastSocket;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_1
    new-instance v2, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->handler:Landroid/os/Handler;

    .line 142
    new-instance v2, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;-><init>(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->mWiFiChangeBroadcastReceiver:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;

    .line 143
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v1, mFilter:Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->mWiFiChangeBroadcastReceiver:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void

    .line 110
    .end local v1           #mFilter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->setprintButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 3
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 253
    packed-switch p1, :pswitch_data_0

    .line 258
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 255
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->printerIP:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/print/PrintDataUtils;->printDataPicNotitle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 256
    .local v0, result:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x4e2d
        :pswitch_0
    .end packed-switch
.end method

.method public isWifiConnect()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 229
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 230
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 231
    .local v1, mWifi:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 233
    const/4 v2, 0x0

    .line 235
    :cond_0
    return v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->initViews()V

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 185
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 152
    :pswitch_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->attachprintButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->attachprintButton:Landroid/widget/Button;

    const v4, 0x7f07009f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 154
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->connectresult:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v3, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$reciverUdpMulticastThread;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$reciverUdpMulticastThread;-><init>(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)V

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$reciverUdpMulticastThread;->start()V

    .line 158
    const-wide/16 v3, 0xc8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    new-instance v3, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$sendUDPMulticastThread;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$sendUDPMulticastThread;-><init>(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)V

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$sendUDPMulticastThread;->start()V

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 161
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 167
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.WIFI_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    :pswitch_3
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.cnlaunch.wifiprinter"

    invoke-static {v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/SystemAppTools;->getAppsIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.cnlaunch.wifiprinter"

    .line 172
    const-string/jumbo v4, "com.cnlaunch.wifiprinter.MainActivity"

    .line 171
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v0, comp:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 181
    .end local v0           #comp:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_4
    const/16 v3, 0x4e2d

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->request(I)V

    .line 182
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0706b9

    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x7f0c04f6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 71
    const v0, 0x7f0301bd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroyView()V

    .line 77
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->mWiFiChangeBroadcastReceiver:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$WiFiChangeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 278
    packed-switch p1, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 280
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 281
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0706a8

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 282
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->testprintButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x4e2d
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->isWifiConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->wifiname:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 88
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->wifiname:Landroid/widget/TextView;

    const v1, 0x7f0700ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 264
    packed-switch p1, :pswitch_data_0

    .line 274
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 266
    .restart local p2
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 267
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->resultToast(Landroid/content/Context;I)V

    .line 268
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xfff

    if-ne v0, v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070009

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 270
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->testprintButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x4e2d
        :pswitch_0
    .end packed-switch
.end method
