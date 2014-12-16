.class Lcom/cnlaunch/newgolo/task/ReceiveTask$3;
.super Ljava/lang/Object;
.source "ReceiveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/task/ReceiveTask;->receive(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/task/ReceiveTask;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;

    iput-object p2, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->val$context:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 56
    iget-object v9, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;

    #getter for: Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-static {v9}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->access$2(Lcom/cnlaunch/newgolo/task/ReceiveTask;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;

    #getter for: Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-static {v9}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->access$2(Lcom/cnlaunch/newgolo/task/ReceiveTask;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v9

    iget-object v5, v9, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    .line 62
    .local v5, id:Ljava/lang/String;
    const-string/jumbo v9, "600000"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "golo_sys"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "200000"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 63
    const-string/jumbo v9, "608833"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 64
    :cond_2
    const-string/jumbo v9, "golo_sys"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 65
    const-string/jumbo v9, "ReceiveTask"

    const-string/jumbo v10, "golo_sys.equals(id)"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;-><init>()V

    .line 67
    .local v0, contentParse:Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;
    iget-object v9, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;

    #getter for: Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-static {v9}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->access$2(Lcom/cnlaunch/newgolo/task/ReceiveTask;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v9

    iget-object v6, v9, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    .line 68
    .local v6, jsonObject:Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->parseJsonString(Ljava/lang/String;)Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;

    move-result-object v4

    .line 69
    .local v4, entity:Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;
    const-string/jumbo v9, "ReceiveTask"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "jsonObject.toString():"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v8, warnIntent:Landroid/content/Intent;
    const-string/jumbo v9, "Golo_new_tip_wran"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string/jumbo v9, "serial_no"

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;->getSerialNo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v9, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->val$context:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 90
    .end local v0           #contentParse:Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;
    .end local v4           #entity:Lcom/cnlaunch/newgolo/data/dao/messageLog/ContentEntity;
    .end local v5           #id:Ljava/lang/String;
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .end local v8           #warnIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 91
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 78
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #id:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->val$context:Landroid/content/Context;

    iget-object v10, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;

    #getter for: Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-static {v10}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->access$2(Lcom/cnlaunch/newgolo/task/ReceiveTask;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v10

    iget-object v10, v10, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/cnlaunch/newgolo/bean/UserInfo;->getUserinfo(Landroid/content/Context;Ljava/lang/String;)Lcom/cnlaunch/newgolo/bean/UserInfo;

    move-result-object v7

    .line 79
    .local v7, uInfo:Lcom/cnlaunch/newgolo/bean/UserInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 80
    .local v1, currentTime:J
    if-eqz v7, :cond_4

    iget-wide v9, v7, Lcom/cnlaunch/newgolo/bean/UserInfo;->time:J

    sub-long/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0x5265c00

    cmp-long v9, v9, v11

    if-lez v9, :cond_6

    .line 81
    :cond_4
    iget-object v9, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->val$context:Landroid/content/Context;

    iget-object v10, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;

    #getter for: Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-static {v10}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->access$2(Lcom/cnlaunch/newgolo/task/ReceiveTask;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v10

    iget-object v10, v10, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/cnlaunch/newgolo/bean/UserInfo;->getUserinfoFormServer(Landroid/content/Context;Ljava/lang/String;)Lcom/cnlaunch/newgolo/bean/UserInfo;

    move-result-object v7

    .line 82
    if-eqz v7, :cond_5

    .line 83
    iget-object v9, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->val$context:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/cnlaunch/newgolo/bean/UserInfo;->update(Landroid/content/Context;Lcom/cnlaunch/newgolo/bean/UserInfo;)V

    .line 84
    iget-object v9, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;

    #getter for: Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-static {v9}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->access$2(Lcom/cnlaunch/newgolo/task/ReceiveTask;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v9

    iget-object v10, v7, Lcom/cnlaunch/newgolo/bean/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setNickName(Ljava/lang/String;)V

    .line 89
    :cond_5
    :goto_1
    iget-object v9, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;

    iget-object v10, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->val$context:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->initMessage(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 87
    :cond_6
    iget-object v9, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;->this$0:Lcom/cnlaunch/newgolo/task/ReceiveTask;

    #getter for: Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-static {v9}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->access$2(Lcom/cnlaunch/newgolo/task/ReceiveTask;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v9

    iget-object v10, v7, Lcom/cnlaunch/newgolo/bean/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setNickName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
