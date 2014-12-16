.class public Lcom/cnlaunch/newgolo/task/ReceiveTask;
.super Lcom/cnlaunch/newgolo/task/MessageTask;
.source "ReceiveTask.java"


# static fields
.field private static final AUTO_VOICE:I = 0x66

.field private static final BUNDING_NEW:Ljava/lang/String; = "bunding_new"

.field private static final BUNDING_RM:Ljava/lang/String; = "bunding_remove"

.field private static final MSG_GOLO_LIGHT:I = 0xb

.field private static final REMOTE_REQ:Ljava/lang/String; = "remote_req"

.field private static final REMOTE_STATUS:Ljava/lang/String; = "remote_status_change"

.field protected static final TAG:Ljava/lang/String; = "ReceiveTask"

.field public static isAutoPlay:Z

.field public static mPlayer:Landroid/media/MediaPlayer;

.field private static playListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field public static voiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/model/ChatMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field private mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;

.field private message:Lcom/cnlaunch/newgolo/model/ChatMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 339
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->voiceList:Ljava/util/ArrayList;

    .line 343
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->isAutoPlay:Z

    .line 383
    new-instance v0, Lcom/cnlaunch/newgolo/task/ReceiveTask$2;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/task/ReceiveTask$2;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->playListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 403
    return-void
.end method

.method public constructor <init>(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/task/MessageTask;-><init>()V

    .line 348
    new-instance v0, Lcom/cnlaunch/newgolo/task/ReceiveTask$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/task/ReceiveTask$1;-><init>(Lcom/cnlaunch/newgolo/task/ReceiveTask;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/task/ReceiveTask;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->startPlayVoice()V

    return-void
.end method

.method static synthetic access$1()Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->playListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/newgolo/task/ReceiveTask;)Lcom/cnlaunch/newgolo/model/ChatMessage;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    return-object v0
.end method

.method private getMessageType(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .parameter "msg"

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, result:Ljava/lang/String;
    const-string/jumbo v2, "diag_uid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    :try_start_0
    const-string/jumbo v2, "acttype"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const-string/jumbo v3, "acttype"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 312
    const-string/jumbo v1, "bunding_new"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_0
    const-string/jumbo v2, "ReceiveTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "msg type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-object v1

    .line 313
    :cond_1
    :try_start_1
    const-string/jumbo v2, "acttype"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "acttype"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 315
    const-string/jumbo v1, "bunding_remove"

    .line 316
    goto :goto_0

    :cond_2
    const-string/jumbo v2, "diag_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    const-string/jumbo v1, "remote_status_change"

    .line 318
    goto :goto_0

    :cond_3
    const-string/jumbo v2, "diag_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    const-string/jumbo v1, "remote_req"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getPendingIntent(Landroid/content/Context;Lcom/cnlaunch/newgolo/model/ChatMessage;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"
    .parameter "message2"
    .parameter "type"

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.action.golo_press"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, goloIntent:Landroid/content/Intent;
    const-string/jumbo v2, "Customer_type"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 299
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private notifyBindDeviceChange(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 236
    const-string/jumbo v0, ""

    .line 237
    .local v0, content:Ljava/lang/String;
    const-string/jumbo v2, "binding_dev"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    :try_start_0
    const-string/jumbo v2, "binding_dev"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cnlaunch/golo3/message/R$string;->bindingdev_notify:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 250
    :cond_0
    :goto_0
    const-string/jumbo v2, "bunding_new"

    invoke-direct {p0, p1, v0, v2}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->notifyContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void

    .line 242
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cnlaunch/golo3/message/R$string;->unbindingdev_notify:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 247
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private notifyContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "content"
    .parameter "type"

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x0

    .line 254
    const-string/jumbo v2, ""

    .line 255
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getNickName()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    iget-object v4, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v2

    .line 259
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    iget-object v4, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-object v2, v4, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    .line 262
    :cond_1
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    .local v0, mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 264
    invoke-virtual {v4, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 268
    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 269
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 270
    sget v5, Lcom/cnlaunch/golo3/message/R$drawable;->golo3_launcher:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 271
    iget-object v5, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-direct {p0, p1, v5, p3}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->getPendingIntent(Landroid/content/Context;Lcom/cnlaunch/newgolo/model/ChatMessage;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/cnlaunch/golo3/message/R$drawable;->notic_icon:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 272
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 273
    .local v3, notification:Landroid/app/Notification;
    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 274
    const-string/jumbo v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 275
    .local v1, nManager:Landroid/app/NotificationManager;
    invoke-virtual {v1, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 276
    iget-object v4, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 277
    iget-object v4, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x32

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 279
    return-void
.end method

.method private notifyCustemorChange(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 223
    const-string/jumbo v0, ""

    .line 224
    .local v0, content:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->getMessageType(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, type:Ljava/lang/String;
    const-string/jumbo v2, "bunding_new"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cnlaunch/golo3/message/R$string;->bunding_notify:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-direct {p0, p1, v0, v1}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->notifyContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const-string/jumbo v2, "remote_req"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cnlaunch/golo3/message/R$string;->remote_notify:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-direct {p0, p1, v0, v1}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->notifyContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startPlayVoice()V
    .locals 4

    .prologue
    .line 370
    :try_start_0
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 371
    sget-object v2, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->voiceList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 372
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/cnlaunch/newgolo/task/ReceiveTask;->playListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 373
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 374
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 375
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->voiceList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setHasPlayed(Z)V

    .line 376
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v2

    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->voiceList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/newgolo/model/ChatManager;->updateDB(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 377
    sget-object v1, Lcom/cnlaunch/newgolo/task/ReceiveTask;->voiceList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static stopVoice()V
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->voiceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 407
    sget-object v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 410
    :cond_0
    return-void
.end method


# virtual methods
.method protected initMessage(Landroid/content/Context;)V
    .locals 25
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    const-string/jumbo v19, "ReceiveTask"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "message.getType():"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/cnlaunch/newgolo/model/ChatManager;->insertDB(Lcom/cnlaunch/newgolo/model/ChatMessage;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->id:J

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->notifyMessageListener()V

    .line 220
    :goto_1
    return-void

    .line 101
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getBindingDev()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 102
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;->getInstance()Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 104
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->notifyBindDeviceChange(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 107
    :pswitch_2
    const-string/jumbo v19, "ReceiveTask"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string/jumbo v19, "ReceiveTask"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "text:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "diag_uid"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 110
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->getInstance()Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->notifyCustemorChange(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 114
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "report"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    const/16 v20, 0xd

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setType(I)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "report"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPath(Ljava/lang/String;)V

    .line 119
    .end local v9           #path:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "news"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setType(I)V

    .line 121
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "news"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, array:Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 123
    .local v9, path:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-lt v7, v0, :cond_4

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_4
    invoke-static {}, Lcom/cnlaunch/golo3/utils/FileTool;->getInstance()Lcom/cnlaunch/golo3/utils/FileTool;

    move-result-object v19

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/golo3/utils/FileTool;->createThumbFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 125
    .local v16, thumb:Ljava/io/File;
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "pic_url"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 126
    .local v17, thumbUrl:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->getInstance()Lcom/cnlaunch/newgolo/Http/HttpExecutor;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->download(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v7, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 123
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 133
    .end local v3           #array:Lorg/json/JSONArray;
    .end local v7           #i:I
    .end local v9           #path:Lorg/json/JSONArray;
    .end local v16           #thumb:Ljava/io/File;
    .end local v17           #thumbUrl:Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v19, "ReceiveTask"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Lcom/cnlaunch/golo3/utils/FileTool;->getInstance()Lcom/cnlaunch/golo3/utils/FileTool;

    move-result-object v19

    .line 135
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 134
    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/golo3/utils/FileTool;->createVoiceFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 136
    .local v18, voice:Ljava/io/File;
    invoke-static {}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->getInstance()Lcom/cnlaunch/newgolo/Http/HttpExecutor;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getURL()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->download(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPath(Ljava/lang/String;)V

    .line 139
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    .line 138
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v14

    .line 140
    .local v14, player:Landroid/media/MediaPlayer;
    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x447a

    div-float v5, v19, v20

    .line 141
    .local v5, duration:F
    new-instance v4, Ljava/text/DecimalFormat;

    const-string/jumbo v19, "#0.0"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 142
    .local v4, decimalFormat:Ljava/text/DecimalFormat;
    float-to-double v0, v5

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, length:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v21, "\'\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setText(Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    const-string/jumbo v20, "audio/*"

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setMIME(Ljava/lang/String;)V

    .line 145
    sget-boolean v19, Lcom/cnlaunch/newgolo/task/ReceiveTask;->isAutoPlay:Z

    if-eqz v19, :cond_0

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 150
    .end local v4           #decimalFormat:Ljava/text/DecimalFormat;
    .end local v5           #duration:F
    .end local v8           #length:Ljava/lang/String;
    .end local v14           #player:Landroid/media/MediaPlayer;
    .end local v18           #voice:Ljava/io/File;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getThumb()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5

    const-string/jumbo v19, "face"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 152
    invoke-static {}, Lcom/cnlaunch/golo3/utils/FileTool;->getInstance()Lcom/cnlaunch/golo3/utils/FileTool;

    move-result-object v19

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 152
    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/golo3/utils/FileTool;->createPictureFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 154
    .local v11, pictureDownload:Ljava/io/File;
    invoke-static {}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->getInstance()Lcom/cnlaunch/newgolo/Http/HttpExecutor;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getURL()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->download(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setThumbPath(Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    const-string/jumbo v20, "image/jpeg"

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setMIME(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .end local v11           #pictureDownload:Ljava/io/File;
    :cond_5
    invoke-static {}, Lcom/cnlaunch/golo3/utils/FileTool;->getInstance()Lcom/cnlaunch/golo3/utils/FileTool;

    move-result-object v19

    .line 159
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 159
    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/golo3/utils/FileTool;->createPictureFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 161
    .restart local v11       #pictureDownload:Ljava/io/File;
    invoke-static {}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->getInstance()Lcom/cnlaunch/newgolo/Http/HttpExecutor;

    move-result-object v19

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getThumb()Ljava/lang/String;

    move-result-object v20

    .line 161
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->download(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setThumbPath(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    const-string/jumbo v20, "image/jpeg"

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setMIME(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    .end local v11           #pictureDownload:Ljava/io/File;
    :cond_6
    invoke-static {}, Lcom/cnlaunch/golo3/utils/FileTool;->getInstance()Lcom/cnlaunch/golo3/utils/FileTool;

    move-result-object v19

    .line 168
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 168
    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/golo3/utils/FileTool;->createPictureFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 170
    .restart local v11       #pictureDownload:Ljava/io/File;
    invoke-static {}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->getInstance()Lcom/cnlaunch/newgolo/Http/HttpExecutor;

    move-result-object v19

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getURL()Ljava/lang/String;

    move-result-object v20

    .line 170
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->download(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPath(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x400

    .line 173
    invoke-static/range {v19 .. v20}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->decodeBitmapBySize(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 175
    .local v10, picture:Landroid/graphics/Bitmap;
    const/16 v19, 0x64

    move/from16 v0, v19

    invoke-static {v10, v0}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->createThumb(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 176
    .local v13, pictureThumb:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/cnlaunch/golo3/utils/FileTool;->getInstance()Lcom/cnlaunch/golo3/utils/FileTool;

    move-result-object v19

    .line 177
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 176
    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/golo3/utils/FileTool;->createThumbFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 178
    .local v12, pictureFile:Ljava/io/File;
    invoke-static {v13, v12}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->saveToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setThumbPath(Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    const-string/jumbo v20, "image/jpeg"

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setMIME(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 186
    .end local v10           #picture:Landroid/graphics/Bitmap;
    .end local v11           #pictureDownload:Ljava/io/File;
    .end local v12           #pictureFile:Ljava/io/File;
    .end local v13           #pictureThumb:Landroid/graphics/Bitmap;
    :pswitch_5
    const/4 v6, 0x0

    .line 187
    .local v6, fileDownload:Ljava/io/File;
    const/4 v15, 0x1

    .line 188
    .local v15, suffix_no:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_a

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 190
    invoke-static {}, Lcom/cnlaunch/golo3/utils/FileTool;->getInstance()Lcom/cnlaunch/golo3/utils/FileTool;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/golo3/utils/FileTool;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 191
    :goto_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_8

    .line 212
    :cond_7
    :goto_4
    invoke-static {}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->getInstance()Lcom/cnlaunch/newgolo/Http/HttpExecutor;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getURL()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->download(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v19, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_8
    invoke-static {}, Lcom/cnlaunch/golo3/utils/FileTool;->getInstance()Lcom/cnlaunch/golo3/utils/FileTool;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/golo3/utils/FileTool;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 193
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 196
    :cond_9
    invoke-static {}, Lcom/cnlaunch/golo3/utils/FileTool;->getInstance()Lcom/cnlaunch/golo3/utils/FileTool;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/golo3/utils/FileTool;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 197
    :goto_5
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 198
    invoke-static {}, Lcom/cnlaunch/golo3/utils/FileTool;->getInstance()Lcom/cnlaunch/golo3/utils/FileTool;

    move-result-object v19

    .line 199
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v21

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v22

    .line 204
    const-string/jumbo v23, "."

    .line 203
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    .line 202
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 199
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 198
    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/golo3/utils/FileTool;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 205
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 209
    :cond_a
    invoke-static {}, Lcom/cnlaunch/golo3/utils/FileTool;->getInstance()Lcom/cnlaunch/golo3/utils/FileTool;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getURL()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/cnlaunch/golo3/utils/SignatureTool;->signByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 209
    invoke-virtual/range {v19 .. v21}, Lcom/cnlaunch/golo3/utils/FileTool;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    goto/16 :goto_4

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public notifyMessageListener()V
    .locals 4

    .prologue
    .line 329
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getMessageHandlers()Ljava/util/ArrayList;

    move-result-object v1

    .line 330
    .local v1, handlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/newgolo/handler/MessageHandler;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 334
    return-void

    .line 330
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/handler/MessageHandler;

    .line 331
    .local v0, handler:Lcom/cnlaunch/newgolo/handler/MessageHandler;
    iget-object v3, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/handler/MessageHandler;->notifyMessageAdd(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 332
    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/handler/MessageHandler;->notifyMessageConutUpdate()V

    goto :goto_0
.end method

.method public openGoloLight()V
    .locals 5

    .prologue
    .line 284
    iget-object v0, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/LightDownTimer;->close()V

    .line 286
    iget-object v0, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/LightDownTimer;->cancel()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;

    .line 290
    :cond_0
    new-instance v0, Lcom/cnlaunch/newgolo/model/LightDownTimer;

    const-wide/16 v1, 0x7530

    const-wide/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cnlaunch/newgolo/model/LightDownTimer;-><init>(JJ)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;

    .line 291
    iget-object v0, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/LightDownTimer;->open()V

    .line 292
    iget-object v0, p0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/LightDownTimer;->start()Landroid/os/CountDownTimer;

    .line 293
    return-void
.end method

.method public receive(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    sget-object v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/newgolo/task/ReceiveTask$3;-><init>(Lcom/cnlaunch/newgolo/task/ReceiveTask;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method
