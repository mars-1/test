.class public Lcom/cnlaunch/newgolo/task/SendTask;
.super Lcom/cnlaunch/newgolo/task/MessageTask;
.source "SendTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SendTask"

.field private static threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/newgolo/task/SendTask;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/task/MessageTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p0}, Lcom/cnlaunch/newgolo/task/SendTask;->initMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p0}, Lcom/cnlaunch/newgolo/task/SendTask;->upload(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    invoke-static {p0}, Lcom/cnlaunch/newgolo/task/SendTask;->sendPacket(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/newgolo/model/ChatMessage;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-static {p0, p1}, Lcom/cnlaunch/newgolo/task/SendTask;->sendPDFMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;Lcom/cnlaunch/newgolo/model/ICallback;)V

    return-void
.end method

.method private static initMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 17
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 158
    :goto_0
    :pswitch_0
    return-void

    .line 93
    :pswitch_1
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v13, voice:Ljava/io/File;
    sget-object v14, Lcom/cnlaunch/newgolo/task/SendTask;->context:Landroid/content/Context;

    .line 95
    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    .line 94
    invoke-static {v14, v15}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v12

    .line 96
    .local v12, player:Landroid/media/MediaPlayer;
    invoke-virtual {v12}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x447a

    div-float v2, v14, v15

    .line 97
    .local v2, duration:F
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v14, "#0.0"

    invoke-direct {v1, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, decimalFormat:Ljava/text/DecimalFormat;
    float-to-double v14, v2

    invoke-virtual {v1, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, length:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, "\'\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setText(Ljava/lang/String;)V

    .line 101
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v15, "auto"

    const-string/jumbo v16, "auto"

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    const-string/jumbo v14, "audio/*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setMIME(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v12}, Landroid/media/MediaPlayer;->release()V

    .line 150
    .end local v1           #decimalFormat:Ljava/text/DecimalFormat;
    .end local v2           #duration:F
    .end local v6           #length:Ljava/lang/String;
    .end local v12           #player:Landroid/media/MediaPlayer;
    .end local v13           #voice:Ljava/io/File;
    :goto_2
    :pswitch_2
    sget-object v14, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-ne v14, v15, :cond_3

    .line 151
    sget-object v14, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->init:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    .line 152
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/newgolo/task/SendTask;->notifyMessageListenerUpdate(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    goto :goto_0

    .line 102
    .restart local v1       #decimalFormat:Ljava/text/DecimalFormat;
    .restart local v2       #duration:F
    .restart local v6       #length:Ljava/lang/String;
    .restart local v12       #player:Landroid/media/MediaPlayer;
    .restart local v13       #voice:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 104
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v1           #decimalFormat:Ljava/text/DecimalFormat;
    .end local v2           #duration:F
    .end local v3           #e:Lorg/json/JSONException;
    .end local v6           #length:Ljava/lang/String;
    .end local v12           #player:Landroid/media/MediaPlayer;
    .end local v13           #voice:Ljava/io/File;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, path:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v8

    .line 117
    :goto_3
    const/16 v14, 0x12c

    invoke-static {v8, v14}, Lcom/cnlaunch/golo3/utils/BitmapTool;->decodeBitmapBySize(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 118
    .local v9, picture:Landroid/graphics/Bitmap;
    if-nez v9, :cond_1

    .line 119
    const-string/jumbo v14, "SendTask"

    const-string/jumbo v15, "picture is null"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 114
    .end local v9           #picture:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    .line 114
    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setName(Ljava/lang/String;)V

    goto :goto_3

    .line 122
    .restart local v9       #picture:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    const-string/jumbo v14, "face"

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 123
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setThumbPath(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v14, "image/jpeg"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setMIME(Ljava/lang/String;)V

    goto :goto_2

    .line 126
    :cond_2
    const/16 v14, 0x64

    invoke-static {v9, v14}, Lcom/cnlaunch/golo3/utils/BitmapTool;->createThumb(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 127
    .local v11, pictureThumb:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/cnlaunch/golo3/utils/FileTool;->getInstance()Lcom/cnlaunch/golo3/utils/FileTool;

    move-result-object v14

    .line 128
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 127
    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/golo3/utils/FileTool;->createThumbFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 129
    .local v10, pictureFile:Ljava/io/File;
    invoke-static {v11, v10}, Lcom/cnlaunch/golo3/utils/BitmapTool;->saveToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 130
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setThumbPath(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v14, "image/jpeg"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setMIME(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 137
    .end local v8           #path:Ljava/lang/String;
    .end local v9           #picture:Landroid/graphics/Bitmap;
    .end local v10           #pictureFile:Ljava/io/File;
    .end local v11           #pictureThumb:Landroid/graphics/Bitmap;
    :pswitch_4
    const-string/jumbo v14, "SendTask"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "\\."

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, extension:[Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setName(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v14, "SendTask"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, v4

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget-object v16, v4, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lcom/cnlaunch/newgolo/Tool/MimeTool;->getInstance()Lcom/cnlaunch/newgolo/Tool/MimeTool;

    move-result-object v14

    array-length v15, v4

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Lcom/cnlaunch/newgolo/Tool/MimeTool;->getMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, mime:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setMIME(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 155
    .end local v4           #extension:[Ljava/lang/String;
    .end local v5           #file:Ljava/io/File;
    .end local v7           #mime:Ljava/lang/String;
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/newgolo/task/SendTask;->notifyMessageListenerAdd(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 156
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/cnlaunch/newgolo/model/ChatManager;->insertDB(Lcom/cnlaunch/newgolo/model/ChatMessage;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->id:J

    goto/16 :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static notifyMessageListenerAdd(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 300
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getMessageHandlers()Ljava/util/ArrayList;

    move-result-object v1

    .line 301
    .local v1, handlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/newgolo/handler/MessageHandler;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 306
    return-void

    .line 301
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/handler/MessageHandler;

    .line 302
    .local v0, handler:Lcom/cnlaunch/newgolo/handler/MessageHandler;
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, p0}, Lcom/cnlaunch/newgolo/handler/MessageHandler;->notifyMessageAdd(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    goto :goto_0
.end method

.method private static notifyMessageListenerUpdate(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 310
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getMessageHandlers()Ljava/util/ArrayList;

    move-result-object v1

    .line 311
    .local v1, handlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/newgolo/handler/MessageHandler;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 314
    return-void

    .line 311
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/handler/MessageHandler;

    .line 312
    .local v0, handler:Lcom/cnlaunch/newgolo/handler/MessageHandler;
    invoke-virtual {v0, p0}, Lcom/cnlaunch/newgolo/handler/MessageHandler;->notifyMessageUpdate(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    goto :goto_0
.end method

.method public static send(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 49
    sget-object v0, Lcom/cnlaunch/newgolo/task/SendTask;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cnlaunch/newgolo/task/SendTask$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/newgolo/task/SendTask$1;-><init>(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public static sendPDF(Lcom/cnlaunch/newgolo/model/ChatMessage;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 2
    .parameter "message"
    .parameter "callback"

    .prologue
    .line 72
    sget-object v0, Lcom/cnlaunch/newgolo/task/SendTask;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cnlaunch/newgolo/task/SendTask$2;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/newgolo/task/SendTask$2;-><init>(Lcom/cnlaunch/newgolo/model/ChatMessage;Lcom/cnlaunch/newgolo/model/ICallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method private static sendPDFMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 6
    .parameter "message"
    .parameter "callback"

    .prologue
    .line 266
    :try_start_0
    iget-object v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomType:Lcom/cnlaunch/newgolo/model/ChatType;

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    if-ne v4, v5, :cond_0

    .line 267
    sget-object v3, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 268
    .local v3, type:Lorg/jivesoftware/smack/packet/Message$Type;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/cnlaunch/newgolo/task/SendTask;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v5

    iget-object v5, v5, Lcom/cnlaunch/newgolo/model/LoginEntity;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, jid:Ljava/lang/String;
    :goto_0
    new-instance v2, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v2, v1, v3}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 274
    .local v2, msg:Lorg/jivesoftware/smack/packet/Message;
    iget-object v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 275
    sget-object v4, Lcom/cnlaunch/newgolo/task/SendTask;->connection:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    invoke-virtual {v4, v2}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->done:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    iput-object v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v1           #jid:Ljava/lang/String;
    .end local v2           #msg:Lorg/jivesoftware/smack/packet/Message;
    .end local v3           #type:Lorg/jivesoftware/smack/packet/Message$Type;
    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->done:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    invoke-virtual {v4, v5}, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    invoke-interface {p1}, Lcom/cnlaunch/newgolo/model/ICallback;->sendSuccessfully()V

    .line 294
    :goto_2
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/cnlaunch/newgolo/model/ChatManager;->updateDB(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 295
    invoke-static {p0}, Lcom/cnlaunch/newgolo/task/SendTask;->notifyMessageListenerUpdate(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 296
    return-void

    .line 270
    :cond_0
    :try_start_1
    sget-object v3, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 271
    .restart local v3       #type:Lorg/jivesoftware/smack/packet/Message$Type;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "@grouptalk."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/cnlaunch/newgolo/task/SendTask;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v5

    iget-object v5, v5, Lcom/cnlaunch/newgolo/model/LoginEntity;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #jid:Ljava/lang/String;
    goto :goto_0

    .line 278
    .restart local v2       #msg:Lorg/jivesoftware/smack/packet/Message;
    :cond_1
    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 279
    sget-object v4, Lcom/cnlaunch/newgolo/task/SendTask;->connection:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    invoke-virtual {v4, v2}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 280
    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->done:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    iput-object v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 285
    .end local v1           #jid:Ljava/lang/String;
    .end local v2           #msg:Lorg/jivesoftware/smack/packet/Message;
    .end local v3           #type:Lorg/jivesoftware/smack/packet/Message$Type;
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    iput-object v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    goto :goto_1

    .line 282
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #jid:Ljava/lang/String;
    .restart local v2       #msg:Lorg/jivesoftware/smack/packet/Message;
    .restart local v3       #type:Lorg/jivesoftware/smack/packet/Message$Type;
    :cond_2
    :try_start_2
    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    iput-object v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 292
    .end local v1           #jid:Ljava/lang/String;
    .end local v2           #msg:Lorg/jivesoftware/smack/packet/Message;
    .end local v3           #type:Lorg/jivesoftware/smack/packet/Message$Type;
    :cond_3
    invoke-interface {p1}, Lcom/cnlaunch/newgolo/model/ICallback;->sendFailed()V

    goto :goto_2
.end method

.method private static sendPacket(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 233
    :try_start_0
    iget-object v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomType:Lcom/cnlaunch/newgolo/model/ChatType;

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    if-ne v4, v5, :cond_0

    .line 234
    sget-object v3, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 235
    .local v3, type:Lorg/jivesoftware/smack/packet/Message$Type;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/cnlaunch/newgolo/task/SendTask;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v5

    iget-object v5, v5, Lcom/cnlaunch/newgolo/model/LoginEntity;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, jid:Ljava/lang/String;
    :goto_0
    new-instance v2, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v2, v1, v3}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 242
    .local v2, msg:Lorg/jivesoftware/smack/packet/Message;
    iget-object v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 243
    sget-object v4, Lcom/cnlaunch/newgolo/task/SendTask;->connection:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    invoke-virtual {v4, v2}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->done:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    iput-object v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v1           #jid:Ljava/lang/String;
    .end local v2           #msg:Lorg/jivesoftware/smack/packet/Message;
    .end local v3           #type:Lorg/jivesoftware/smack/packet/Message$Type;
    :goto_1
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/cnlaunch/newgolo/model/ChatManager;->updateDB(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 258
    invoke-static {p0}, Lcom/cnlaunch/newgolo/task/SendTask;->notifyMessageListenerUpdate(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 259
    return-void

    .line 237
    :cond_0
    :try_start_1
    sget-object v3, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 238
    .restart local v3       #type:Lorg/jivesoftware/smack/packet/Message$Type;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "@grouptalk."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 239
    sget-object v5, Lcom/cnlaunch/newgolo/task/SendTask;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v5

    iget-object v5, v5, Lcom/cnlaunch/newgolo/model/LoginEntity;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 238
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #jid:Ljava/lang/String;
    goto :goto_0

    .line 246
    .restart local v2       #msg:Lorg/jivesoftware/smack/packet/Message;
    :cond_1
    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 247
    sget-object v4, Lcom/cnlaunch/newgolo/task/SendTask;->connection:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    invoke-virtual {v4, v2}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->done:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    iput-object v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 253
    .end local v1           #jid:Ljava/lang/String;
    .end local v2           #msg:Lorg/jivesoftware/smack/packet/Message;
    .end local v3           #type:Lorg/jivesoftware/smack/packet/Message$Type;
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    iput-object v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    goto :goto_1

    .line 250
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #jid:Ljava/lang/String;
    .restart local v2       #msg:Lorg/jivesoftware/smack/packet/Message;
    .restart local v3       #type:Lorg/jivesoftware/smack/packet/Message$Type;
    :cond_2
    :try_start_2
    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    iput-object v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public static sendTextMessage(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 8
    .parameter
    .parameter "text"
    .parameter "pubId"
    .parameter "pubName"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/newgolo/model/ICallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, userIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lcom/cnlaunch/newgolo/task/SendTask;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/cnlaunch/newgolo/task/SendTask$3;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cnlaunch/newgolo/task/SendTask$3;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Lcom/cnlaunch/newgolo/model/ICallback;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method public static sendVoiceMessage(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 8
    .parameter
    .parameter "path"
    .parameter "pubId"
    .parameter "pubName"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/newgolo/model/ICallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, userIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lcom/cnlaunch/newgolo/task/SendTask;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/cnlaunch/newgolo/task/SendTask$4;

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cnlaunch/newgolo/task/SendTask$4;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/cnlaunch/newgolo/model/ICallback;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method

.method private static upload(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 17
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v6, 0x0

    .line 163
    .local v6, key:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v4}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 164
    .local v4, entity:Lorg/apache/http/entity/mime/MultipartEntity;
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 166
    :pswitch_1
    const-string/jumbo v11, "2"

    .line 167
    .local v11, type:Ljava/lang/String;
    sget-object v6, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->FILE_UPLOAD:Ljava/lang/String;

    .line 168
    const-string/jumbo v13, "type"

    new-instance v14, Lorg/apache/http/entity/mime/content/StringBody;

    const-string/jumbo v15, "2"

    invoke-direct {v14, v15}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 169
    const-string/jumbo v13, "file"

    new-instance v14, Lorg/apache/http/entity/mime/content/FileBody;

    new-instance v15, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v13, v14}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 201
    :goto_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v7, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v13, "type"

    invoke-interface {v7, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Lcom/cnlaunch/newgolo/Http/HttpHelper;->getInstance()Lcom/cnlaunch/newgolo/Http/HttpHelper;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Lcom/cnlaunch/newgolo/Http/HttpHelper;->getURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 204
    .local v12, url:Ljava/lang/String;
    const-string/jumbo v13, "SendTask"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "url:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->getInstance()Lcom/cnlaunch/newgolo/Http/HttpExecutor;

    move-result-object v13

    invoke-virtual {v13, v12, v4}, Lcom/cnlaunch/newgolo/Http/HttpExecutor;->upload(Ljava/lang/String;Lorg/apache/http/entity/mime/MultipartEntity;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, content:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 207
    sget-object v13, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    .line 208
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/cnlaunch/newgolo/model/ChatManager;->updateDB(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 209
    invoke-static/range {p0 .. p0}, Lcom/cnlaunch/newgolo/task/SendTask;->notifyMessageListenerUpdate(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    goto :goto_0

    .line 172
    .end local v2           #content:Ljava/lang/String;
    .end local v7           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #type:Ljava/lang/String;
    .end local v12           #url:Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v11, "1"

    .line 173
    .restart local v11       #type:Ljava/lang/String;
    sget-object v6, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->FILE_UPLOAD:Ljava/lang/String;

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, path:Ljava/lang/String;
    const-string/jumbo v13, "SendTask"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "picture path:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-nez v9, :cond_1

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getThumbPath()Ljava/lang/String;

    move-result-object v9

    .line 179
    :cond_1
    const/16 v13, 0x12c

    invoke-static {v9, v13}, Lcom/cnlaunch/golo3/utils/BitmapTool;->decodeBitmapBySize(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 180
    .local v10, picture:Landroid/graphics/Bitmap;
    const-string/jumbo v14, "SendTask"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "pic:"

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v10, :cond_2

    const-string/jumbo v13, "null"

    :goto_2
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz v10, :cond_0

    .line 184
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 185
    .local v8, out:Ljava/io/ByteArrayOutputStream;
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v10, v13, v14, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 186
    const-string/jumbo v13, "type"

    new-instance v14, Lorg/apache/http/entity/mime/content/StringBody;

    const-string/jumbo v15, "1"

    invoke-direct {v14, v15}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 189
    const-string/jumbo v13, "file"

    new-instance v14, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    const-string/jumbo v16, "picture"

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 190
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    goto/16 :goto_1

    .line 180
    .end local v8           #out:Ljava/io/ByteArrayOutputStream;
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 193
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #picture:Landroid/graphics/Bitmap;
    .end local v11           #type:Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v11, "0"

    .line 194
    .restart local v11       #type:Ljava/lang/String;
    sget-object v6, Lcom/cnlaunch/golo3/dto/InterfaceConfig;->FILE_UPLOAD:Ljava/lang/String;

    .line 195
    const-string/jumbo v13, "type"

    new-instance v14, Lorg/apache/http/entity/mime/content/StringBody;

    const-string/jumbo v15, "0"

    invoke-direct {v14, v15}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 196
    const-string/jumbo v13, "file"

    new-instance v14, Lorg/apache/http/entity/mime/content/FileBody;

    new-instance v15, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v13, v14}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto/16 :goto_1

    .line 211
    .restart local v2       #content:Ljava/lang/String;
    .restart local v7       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12       #url:Ljava/lang/String;
    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    .local v5, json:Lorg/json/JSONObject;
    const-string/jumbo v13, "SendTask"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "response:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string/jumbo v13, "code"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 214
    const-string/jumbo v13, "code"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 215
    .local v1, code:I
    if-nez v1, :cond_4

    .line 216
    const-string/jumbo v13, "data"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 217
    .local v3, data:Lorg/json/JSONObject;
    const-string/jumbo v13, "url"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setURL(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v13, "thumb"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 219
    const-string/jumbo v13, "thumb"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setThumb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    .end local v3           #data:Lorg/json/JSONObject;
    :cond_4
    new-instance v13, Ljava/lang/Exception;

    const-string/jumbo v14, "msg"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
