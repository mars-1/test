.class Lcom/cnlaunch/newgolo/task/SendTask$3;
.super Ljava/lang/Object;
.source "SendTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/task/SendTask;->sendTextMessage(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/cnlaunch/newgolo/model/ICallback;

.field private final synthetic val$pubId:J

.field private final synthetic val$pubName:Ljava/lang/String;

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$userIds:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$text:Ljava/lang/String;

    iput-wide p2, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$pubId:J

    iput-object p4, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$pubName:Ljava/lang/String;

    iput-object p5, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$userIds:Ljava/util/List;

    iput-object p6, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$callback:Lcom/cnlaunch/newgolo/model/ICallback;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 322
    :try_start_0
    new-instance v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-direct {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;-><init>()V

    .line 323
    .local v1, message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    sget-object v3, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    iput-object v3, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomType:Lcom/cnlaunch/newgolo/model/ChatType;

    .line 324
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    .line 325
    sget-object v3, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->init:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    iput-object v3, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    .line 326
    sget-object v3, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->read:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    iput-object v3, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->flag:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    .line 327
    iget-object v3, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    iget-object v3, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v4, "text"

    iget-object v5, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$text:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    iget-object v3, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v4, "pub_id"

    iget-wide v5, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$pubId:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 330
    iget-object v3, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v4, "pub_name"

    iget-object v5, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$pubName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    iget-object v3, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$userIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_2

    .line 352
    .end local v1           #message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$callback:Lcom/cnlaunch/newgolo/model/ICallback;

    if-eqz v3, :cond_1

    .line 353
    iget-object v3, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$callback:Lcom/cnlaunch/newgolo/model/ICallback;

    invoke-interface {v3}, Lcom/cnlaunch/newgolo/model/ICallback;->sendSuccessfully()V

    .line 355
    :cond_1
    return-void

    .line 331
    .restart local v1       #message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 332
    .local v2, userId:Ljava/lang/String;
    iput-object v2, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    .line 335
    #calls: Lcom/cnlaunch/newgolo/task/SendTask;->initMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    invoke-static {v1}, Lcom/cnlaunch/newgolo/task/SendTask;->access$0(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 336
    #calls: Lcom/cnlaunch/newgolo/task/SendTask;->sendPacket(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    invoke-static {v1}, Lcom/cnlaunch/newgolo/task/SendTask;->access$2(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 338
    .end local v1           #message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    .end local v2           #userId:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 341
    iget-object v3, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$callback:Lcom/cnlaunch/newgolo/model/ICallback;

    if-eqz v3, :cond_0

    .line 342
    iget-object v3, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$callback:Lcom/cnlaunch/newgolo/model/ICallback;

    invoke-interface {v3}, Lcom/cnlaunch/newgolo/model/ICallback;->sendFailed()V

    goto :goto_1

    .line 344
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 346
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 347
    iget-object v3, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$callback:Lcom/cnlaunch/newgolo/model/ICallback;

    if-eqz v3, :cond_0

    .line 348
    iget-object v3, p0, Lcom/cnlaunch/newgolo/task/SendTask$3;->val$callback:Lcom/cnlaunch/newgolo/model/ICallback;

    invoke-interface {v3}, Lcom/cnlaunch/newgolo/model/ICallback;->sendFailed()V

    goto :goto_1
.end method
