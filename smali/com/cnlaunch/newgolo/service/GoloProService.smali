.class public Lcom/cnlaunch/newgolo/service/GoloProService;
.super Landroid/app/Service;
.source "GoloProService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;
    }
.end annotation


# static fields
.field public static final ACTION_LOGIN:Ljava/lang/String; = "action_login"

.field protected static final TAG:Ljava/lang/String; = "GoloProService"


# instance fields
.field private final WHAT_LOGIN:I

.field private callback:Landroid/os/Handler$Callback;

.field private connection:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

.field private connectionReceiver:Landroid/content/BroadcastReceiver;

.field private connectionThread:Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;

.field private eventListener:Lcom/cnlaunch/newgolo/model/event/EventListener;

.field private handler:Landroid/os/Handler;

.field private loginExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private login_count:I

.field private mNoticeMessageHandler:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->mUIHandler:Landroid/os/Handler;

    .line 103
    const v0, 0x186a1

    iput v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->WHAT_LOGIN:I

    .line 105
    new-instance v0, Lcom/cnlaunch/newgolo/service/GoloProService$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/service/GoloProService$1;-><init>(Lcom/cnlaunch/newgolo/service/GoloProService;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->callback:Landroid/os/Handler$Callback;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->login_count:I

    .line 153
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->loginExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 194
    new-instance v0, Lcom/cnlaunch/newgolo/service/GoloProService$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/newgolo/service/GoloProService$2;-><init>(Lcom/cnlaunch/newgolo/service/GoloProService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->eventListener:Lcom/cnlaunch/newgolo/model/event/EventListener;

    .line 230
    new-instance v0, Lcom/cnlaunch/newgolo/service/GoloProService$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/service/GoloProService$3;-><init>(Lcom/cnlaunch/newgolo/service/GoloProService;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->connectionReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/service/GoloProService;)Lcom/cnlaunch/newgolo/Xmpp/XConnection;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->connection:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/newgolo/service/GoloProService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput p1, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->login_count:I

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/newgolo/service/GoloProService;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/service/GoloProService;->relogin()V

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/newgolo/service/GoloProService;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/service/GoloProService;->receiveMessage(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/newgolo/service/GoloProService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/service/GoloProService;->login(Z)V

    return-void
.end method

.method private checkNetwork()Z
    .locals 4

    .prologue
    .line 145
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/cnlaunch/newgolo/service/GoloProService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 146
    .local v1, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 147
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 148
    const/4 v2, 0x1

    .line 150
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private login(Z)V
    .locals 4
    .parameter "updateContact"

    .prologue
    .line 92
    sget-object v1, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {p0}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v0

    .line 96
    .local v0, entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    const-string/jumbo v2, "GoloProService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "entity "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string/jumbo v1, "is null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->handler:Landroid/os/Handler;

    const v2, 0x186a1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 96
    :cond_2
    const-string/jumbo v1, "not null"

    goto :goto_1
.end method

.method private receiveMessage(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 8
    .parameter "packet"

    .prologue
    const/4 v7, 0x0

    .line 165
    new-instance v2, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-direct {v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;-><init>()V

    .local v2, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    move-object v1, p1

    .line 166
    check-cast v1, Lorg/jivesoftware/smack/packet/Message;

    .line 167
    .local v1, message:Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v5

    sget-object v6, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    if-ne v5, v6, :cond_1

    .line 168
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    iput-object v5, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    .line 169
    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    iput-object v5, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomType:Lcom/cnlaunch/newgolo/model/ChatType;

    .line 170
    iget-object v5, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    iput-object v5, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    .line 179
    :cond_0
    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->done:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    iput-object v5, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    .line 180
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getStamp()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    .line 181
    new-instance v3, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;

    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    .local v3, spu:Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getStamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->saveLastMessageTime(Ljava/lang/Long;)V

    .line 183
    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->unread:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    iput-object v5, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->flag:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    .line 185
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v5, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    new-instance v4, Lcom/cnlaunch/newgolo/task/ReceiveTask;

    invoke-direct {v4, v2}, Lcom/cnlaunch/newgolo/task/ReceiveTask;-><init>(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 191
    .local v4, task:Lcom/cnlaunch/newgolo/task/ReceiveTask;
    invoke-virtual {v4, p0}, Lcom/cnlaunch/newgolo/task/ReceiveTask;->receive(Landroid/content/Context;)V

    .line 192
    .end local v3           #spu:Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;
    .end local v4           #task:Lcom/cnlaunch/newgolo/task/ReceiveTask;
    :goto_1
    return-void

    .line 172
    :cond_1
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    iput-object v5, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    .line 173
    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatType;->group:Lcom/cnlaunch/newgolo/model/ChatType;

    iput-object v5, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomType:Lcom/cnlaunch/newgolo/model/ChatType;

    .line 174
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    iput-object v5, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    .line 175
    iget-object v5, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 186
    .restart local v3       #spu:Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Lorg/json/JSONException;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, v2, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private relogin()V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/service/GoloProService;->checkNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->login_count:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cnlaunch/newgolo/service/GoloProService;->scheduleLogin(I)V

    .line 140
    :goto_0
    iget v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->login_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->login_count:I

    .line 142
    :cond_0
    return-void

    .line 135
    :cond_1
    iget v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->login_count:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_2

    .line 136
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/cnlaunch/newgolo/service/GoloProService;->scheduleLogin(I)V

    goto :goto_0

    .line 138
    :cond_2
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/cnlaunch/newgolo/service/GoloProService;->scheduleLogin(I)V

    goto :goto_0
.end method

.method private scheduleLogin(I)V
    .locals 5
    .parameter "second"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->loginExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/cnlaunch/newgolo/service/GoloProService$4;

    invoke-direct {v1, p0}, Lcom/cnlaunch/newgolo/service/GoloProService$4;-><init>(Lcom/cnlaunch/newgolo/service/GoloProService;)V

    .line 161
    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 156
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 162
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 54
    new-instance v1, Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;

    const-string/jumbo v2, "XMPP Connection"

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;-><init>(Lcom/cnlaunch/newgolo/service/GoloProService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->connectionThread:Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;

    .line 55
    iget-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->connectionThread:Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;->start()V

    .line 56
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->connectionThread:Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->callback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->handler:Landroid/os/Handler;

    .line 57
    invoke-static {}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->getInstance()Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->connection:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    .line 58
    iget-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->eventListener:Lcom/cnlaunch/newgolo/model/event/EventListener;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/GoloApplication;->addEventListener(Lcom/cnlaunch/newgolo/model/event/EventListener;)V

    .line 59
    new-instance v1, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->connectionThread:Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->mNoticeMessageHandler:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    .line 60
    iget-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->mNoticeMessageHandler:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/GoloApplication;->addMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->connectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/newgolo/service/GoloProService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    const-string/jumbo v1, "GoloProService"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->connectionThread:Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;->quit()Z

    .line 70
    iget-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->connectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/service/GoloProService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    iget-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->eventListener:Lcom/cnlaunch/newgolo/model/event/EventListener;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/GoloApplication;->removeEventListener(Lcom/cnlaunch/newgolo/model/event/EventListener;)V

    .line 72
    iget-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService;->mNoticeMessageHandler:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/GoloApplication;->removeMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 74
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 80
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 81
    .local v0, action:Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "GoloProService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v1, "action_login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/service/GoloProService;->login(Z)V

    .line 88
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 80
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showNotifyDialog(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 248
    invoke-static {p0}, Lcom/cnlaunch/newgolo/model/LoginMgr;->deleteLoginInfo(Landroid/content/Context;)V

    .line 249
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/service/GoloProService;->stopSelf()V

    .line 250
    return-void
.end method
