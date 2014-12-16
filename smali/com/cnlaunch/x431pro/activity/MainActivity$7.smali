.class Lcom/cnlaunch/x431pro/activity/MainActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    .line 767
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const v10, 0x7f0d02de

    const/4 v9, 0x1

    .line 770
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v7, "show_update"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 772
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const v8, 0x7f0d02da

    invoke-virtual {v7, v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    const-string/jumbo v7, "show_remotediag"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 775
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const v8, 0x7f0d02d8

    invoke-virtual {v7, v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    .line 776
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 777
    .local v1, bundle:Landroid/os/Bundle;
    new-instance v3, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-direct {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;-><init>()V

    .line 778
    .local v3, info:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    invoke-virtual {v3, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setInfo(Landroid/os/Bundle;)V

    .line 779
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "LaunchRemoteDiag"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    .local v4, intentNew:Landroid/content/Intent;
    const-string/jumbo v7, "RemoteDiagInfo"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 781
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    invoke-virtual {v7, v4}, Lcom/cnlaunch/x431pro/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 782
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #info:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    .end local v4           #intentNew:Landroid/content/Intent;
    :cond_2
    const-string/jumbo v7, "show_Setting"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 783
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$6(Lcom/cnlaunch/x431pro/activity/MainActivity;)I

    move-result v8

    #setter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I
    invoke-static {v7, v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$7(Lcom/cnlaunch/x431pro/activity/MainActivity;I)V

    .line 784
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #setter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I
    invoke-static {v7, v10}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$8(Lcom/cnlaunch/x431pro/activity/MainActivity;I)V

    .line 785
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->radioSetting:Landroid/widget/RadioButton;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$9(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/widget/RadioButton;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 786
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const-class v8, Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V
    invoke-static {v7, v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$10(Lcom/cnlaunch/x431pro/activity/MainActivity;Ljava/lang/Class;)V

    .line 787
    const-string/jumbo v7, "luoli"

    new-array v8, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "show_Setting "

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 788
    :cond_3
    const-string/jumbo v7, "show_PrintSetting"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 789
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$6(Lcom/cnlaunch/x431pro/activity/MainActivity;)I

    move-result v8

    #setter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I
    invoke-static {v7, v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$7(Lcom/cnlaunch/x431pro/activity/MainActivity;I)V

    .line 790
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #setter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I
    invoke-static {v7, v10}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$8(Lcom/cnlaunch/x431pro/activity/MainActivity;I)V

    .line 791
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->radioSetting:Landroid/widget/RadioButton;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$9(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/widget/RadioButton;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 792
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const-class v8, Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V
    invoke-static {v7, v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$10(Lcom/cnlaunch/x431pro/activity/MainActivity;Ljava/lang/Class;)V

    .line 793
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "replace_printSetFragmet"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    .local v5, intentShowSetting:Landroid/content/Intent;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    invoke-virtual {v7, v5}, Lcom/cnlaunch/x431pro/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 795
    .end local v5           #intentShowSetting:Landroid/content/Intent;
    :cond_4
    const-string/jumbo v7, "Golo_new_tip_wran"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 796
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Golo_new_tip_wran"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v7, -0x1

    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;->onChange(I)V

    goto/16 :goto_0

    .line 798
    :cond_5
    const-string/jumbo v7, "show_golo_chatroom"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 799
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const v8, 0x7f0d02db

    invoke-virtual {v7, v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    .line 800
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "chatroom"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/newgolo/model/ChatRoom;

    .line 801
    .local v2, chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "serialNo_Prefix"

    invoke-virtual {v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 802
    .local v6, prefix:Ljava/lang/String;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->startImActivity(Lcom/cnlaunch/newgolo/model/ChatRoom;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
