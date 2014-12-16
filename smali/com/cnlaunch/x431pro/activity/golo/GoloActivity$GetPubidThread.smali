.class Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;
.super Ljava/lang/Thread;
.source "GoloActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPubidThread"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->name:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 149
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "user_id"

    invoke-virtual {v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, user_id:Ljava/lang/String;
    const/4 v5, 0x0

    .line 151
    .local v5, result:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    new-instance v0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    invoke-direct {v0, v7}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;
    :try_start_0
    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->pidByt(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 158
    :goto_0
    if-eqz v5, :cond_2

    .line 159
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    move-result-object v1

    .line 160
    .local v1, data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;
    if-eqz v1, :cond_2

    .line 161
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->getPub_id()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, pub_id:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->getPub_name()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, pub_name:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "null"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 164
    :cond_0
    move-object v4, v3

    .line 166
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "null"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 167
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "USER_PUBLIC_ID"

    invoke-virtual {v7, v8, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "USER_PUBLIC_NAME"

    invoke-virtual {v7, v8, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->golo_pub_id:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->golo_pub_name:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->access$2(Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 172
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 190
    .end local v1           #data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;
    .end local v3           #pub_id:Ljava/lang/String;
    .end local v4           #pub_name:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 191
    return-void

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    .line 156
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 174
    .end local v2           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .restart local v1       #data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;
    .restart local v3       #pub_id:Ljava/lang/String;
    .restart local v4       #pub_name:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 177
    :cond_4
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "USER_PUBLIC_ID"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "USER_PUBLIC_NAME"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->golo_pub_id:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->golo_pub_name:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->access$2(Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 182
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 184
    :cond_5
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
