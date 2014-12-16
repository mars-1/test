.class public Lcom/cnlaunch/x431pro/activity/setting/SettingLaunchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingLaunchReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 16
    .local v7, tag:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 17
    .local v2, inTime:J
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "com.cnlaunch.intent.action.SETTINGS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 18
    sget-boolean v5, Lcom/cnlaunch/x431pro/common/Constants;->STAT_SETTING_FLAG:Z

    .line 19
    .local v5, statFlag:Z
    if-eqz v5, :cond_1

    .line 20
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v6, tIntent:Landroid/content/Intent;
    const-class v8, Lcom/cnlaunch/x431pro/activity/MainActivity;

    invoke-virtual {v6, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 22
    const-string/jumbo v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const/high16 v8, 0x1400

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    const-string/jumbo v8, "Setting"

    const-string/jumbo v9, "SettingLaunchReceiver"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 26
    const/4 v8, 0x0

    sput-boolean v8, Lcom/cnlaunch/x431pro/common/Constants;->STAT_SETTING_FLAG:Z

    .line 32
    .end local v5           #statFlag:Z
    .end local v6           #tIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v2

    .line 33
    .local v0, allTime:J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 28
    .end local v0           #allTime:J
    .restart local v5       #statFlag:Z
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "show_Setting"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v4, intentShowSetting:Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
