.class Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;
.super Ljava/lang/Object;
.source "NoticeMessageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->displayNotice(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

.field private final synthetic val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    iput-object p2, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 83
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    #calls: Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->getMessageContent(Lcom/cnlaunch/newgolo/model/ChatMessage;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->access$0(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;Lcom/cnlaunch/newgolo/model/ChatMessage;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, content:Ljava/lang/String;
    const/4 v2, 0x0

    .line 85
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getNickName()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v2

    .line 89
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-object v2, v4, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    .line 92
    :cond_1
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    #getter for: Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->access$1(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 94
    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 98
    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 99
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 100
    sget v5, Lcom/cnlaunch/golo3/message/R$drawable;->golo3_launcher:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 101
    iget-object v5, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    iget-object v6, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    #calls: Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->getPendingIntent(Lcom/cnlaunch/newgolo/model/ChatMessage;)Landroid/app/PendingIntent;
    invoke-static {v5, v6}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->access$2(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;Lcom/cnlaunch/newgolo/model/ChatMessage;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 103
    sget v5, Lcom/cnlaunch/golo3/message/R$drawable;->notic_icon:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 104
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 105
    .local v3, notification:Landroid/app/Notification;
    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 106
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    #getter for: Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->nManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->access$3(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 108
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    #getter for: Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->access$4(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;)Lcom/cnlaunch/newgolo/model/LightDownTimer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 109
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    #getter for: Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->access$4(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;)Lcom/cnlaunch/newgolo/model/LightDownTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/model/LightDownTimer;->close()V

    .line 110
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    #getter for: Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->access$4(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;)Lcom/cnlaunch/newgolo/model/LightDownTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/model/LightDownTimer;->cancel()V

    .line 111
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    const/4 v5, 0x0

    #setter for: Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;
    invoke-static {v4, v5}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->access$5(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;Lcom/cnlaunch/newgolo/model/LightDownTimer;)V

    .line 114
    :cond_2
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    new-instance v5, Lcom/cnlaunch/newgolo/model/LightDownTimer;

    const-wide/16 v6, 0x7530

    const-wide/16 v8, 0x3e8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/cnlaunch/newgolo/model/LightDownTimer;-><init>(JJ)V

    #setter for: Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;
    invoke-static {v4, v5}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->access$5(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;Lcom/cnlaunch/newgolo/model/LightDownTimer;)V

    .line 115
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    #getter for: Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->access$4(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;)Lcom/cnlaunch/newgolo/model/LightDownTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/model/LightDownTimer;->open()V

    .line 116
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    #getter for: Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->access$4(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;)Lcom/cnlaunch/newgolo/model/LightDownTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/model/LightDownTimer;->start()Landroid/os/CountDownTimer;

    .line 118
    const-string/jumbo v4, "NoticeMessageHandler"

    const-string/jumbo v5, "has a notice."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method
