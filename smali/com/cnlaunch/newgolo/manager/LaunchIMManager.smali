.class public Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
.super Ljava/lang/Object;
.source "LaunchIMManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;,
        Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;,
        Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;,
        Lcom/cnlaunch/newgolo/manager/LaunchIMManager$VOnCompletionListener;,
        Lcom/cnlaunch/newgolo/manager/LaunchIMManager$VOnErrorListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LunchIMManager"

.field public static context:Landroid/content/Context;

.field private static mIntance:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;


# instance fields
.field private endTime:J

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private mCacheRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

.field private mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnVoiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

.field private mRecorder:Lcom/cnlaunch/golo3/utils/RecorderHelper;

.field private mRemoteDiagnoseHandleListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;

.field private posCache:I

.field private startTime:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/cnlaunch/golo3/utils/RecorderHelper;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/utils/RecorderHelper;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mRecorder:Lcom/cnlaunch/golo3/utils/RecorderHelper;

    .line 339
    new-instance v0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$1;-><init>(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mOnVoiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    .line 61
    sput-object p1, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;
    .locals 1
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mOnVoiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private creatVoiceStartTask(Ljava/lang/String;I)Ljava/lang/Runnable;
    .locals 1
    .parameter "voicePath"
    .parameter "pos"

    .prologue
    .line 390
    new-instance v0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$4;-><init>(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;Ljava/lang/String;I)V

    return-object v0
.end method

.method private creatVoiceStopTask(I)Ljava/lang/Runnable;
    .locals 1
    .parameter "pos"

    .prologue
    .line 375
    new-instance v0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$3;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$3;-><init>(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;I)V

    return-object v0
.end method

.method public static getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    sget-object v0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mIntance:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mIntance:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    .line 74
    :cond_0
    sget-object v0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mIntance:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    return-object v0
.end method

.method private saveUserInfoToDB(Lcom/cnlaunch/newgolo/model/LoginEntity;)V
    .locals 2
    .parameter "loginEntity"

    .prologue
    .line 228
    new-instance v0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;-><init>(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;Lcom/cnlaunch/newgolo/model/LoginEntity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 267
    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 268
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/cnlaunch/newgolo/model/event/EventListener;)V
    .locals 0
    .parameter "eventListener"

    .prologue
    .line 329
    invoke-static {p1}, Lcom/cnlaunch/newgolo/manager/EventListensers;->addEventListener(Lcom/cnlaunch/newgolo/model/event/EventListener;)V

    .line 330
    return-void
.end method

.method public addMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V
    .locals 0
    .parameter "messageHandler"

    .prologue
    .line 314
    invoke-static {p1}, Lcom/cnlaunch/newgolo/manager/MessageListensers;->addMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V

    .line 315
    return-void
.end method

.method public copyMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 435
    sget-object v1, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 436
    .local v0, clip:Landroid/content/ClipboardManager;
    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 437
    return-void
.end method

.method public delMessag(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 425
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 427
    :cond_0
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/model/ChatManager;->delDB(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 429
    return-void
.end method

.method public exitCommondCode(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    invoke-interface {v0, p1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;->exitCommondCode(I)V

    .line 565
    :cond_0
    return-void
.end method

.method public getMaxAmplitude()I
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, amp:I
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mRecorder:Lcom/cnlaunch/golo3/utils/RecorderHelper;

    invoke-virtual {v2}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->getMaxAmplitude()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 200
    :goto_0
    return v0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRecorder()Landroid/media/MediaRecorder;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mRecorder:Lcom/cnlaunch/golo3/utils/RecorderHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->getRecorder()Landroid/media/MediaRecorder;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/newgolo/model/LoginCallback;)V
    .locals 1
    .parameter "context"
    .parameter "userid"
    .parameter "pwd"
    .parameter "loginCallback"

    .prologue
    .line 293
    new-instance v0, Lcom/cnlaunch/newgolo/model/LoginLogic;

    invoke-direct {v0, p4}, Lcom/cnlaunch/newgolo/model/LoginLogic;-><init>(Lcom/cnlaunch/newgolo/model/LoginCallback;)V

    .line 295
    .local v0, mLoginLogic:Lcom/cnlaunch/newgolo/model/LoginLogic;
    return-void
.end method

.method public loginIM(Ljava/lang/String;)V
    .locals 5
    .parameter "loginInfo"

    .prologue
    .line 214
    const-string/jumbo v2, "LunchIMManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loginInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Lcom/cnlaunch/newgolo/model/LoginEntity;

    invoke-direct {v0, p1}, Lcom/cnlaunch/newgolo/model/LoginEntity;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, mUserLoginInfo:Lcom/cnlaunch/newgolo/model/LoginEntity;
    sget-object v2, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/cnlaunch/newgolo/bean/User;->setUser(Landroid/content/Context;Lcom/cnlaunch/newgolo/model/LoginEntity;)V

    .line 217
    sget-object v2, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/cnlaunch/newgolo/bean/User;->saveConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    const-class v3, Lcom/cnlaunch/newgolo/service/GoloProService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string/jumbo v2, "action_login"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    sget-object v2, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 221
    const-string/jumbo v2, "LunchIMManager"

    const-string/jumbo v3, "loginIM end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public logoutIM()V
    .locals 3

    .prologue
    .line 277
    sget-object v1, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/model/LoginMgr;->deleteLoginInfo(Landroid/content/Context;)V

    .line 278
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    const-class v2, Lcom/cnlaunch/newgolo/service/GoloProService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v0, serviceIntent:Landroid/content/Intent;
    sget-object v1, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 283
    return-void
.end method

.method public palyVoice(Ljava/lang/String;I)V
    .locals 3
    .parameter "voicePath"
    .parameter "pos"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 354
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 357
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 359
    :cond_1
    const-string/jumbo v0, "LunchIMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "playVoice pos:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->executorService:Ljava/util/concurrent/ExecutorService;

    iget v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->posCache:I

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->creatVoiceStopTask(I)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 362
    const-string/jumbo v0, "LunchIMManager"

    const-string/jumbo v1, "isplaying to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    return-void

    .line 365
    :cond_2
    iput p2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->posCache:I

    .line 366
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$VOnCompletionListener;

    invoke-direct {v1, p0, p2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$VOnCompletionListener;-><init>(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;I)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 367
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$VOnErrorListener;

    invoke-direct {v1, p0, p2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$VOnErrorListener;-><init>(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;I)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 368
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->creatVoiceStartTask(Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public recordVoice(Landroid/view/MotionEvent;ILcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;)V
    .locals 6
    .parameter "event"
    .parameter "mintime"
    .parameter "recorderStatusCallback"

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 146
    :pswitch_1
    if-eqz p3, :cond_1

    .line 147
    :try_start_0
    invoke-interface {p3}, Lcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;->start()V

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mRecorder:Lcom/cnlaunch/golo3/utils/RecorderHelper;

    sget-object v3, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->startRecording(Landroid/content/Context;)V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->startTime:J

    .line 151
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->endTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    if-eqz p3, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;->recordError(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    if-eqz p3, :cond_2

    .line 166
    :try_start_1
    invoke-interface {p3}, Lcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;->end()V

    .line 168
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mRecorder:Lcom/cnlaunch/golo3/utils/RecorderHelper;

    invoke-virtual {v2}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->stopRecording()Ljava/io/File;

    move-result-object v1

    .line 169
    .local v1, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->endTime:J

    .line 170
    iget-wide v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->endTime:J

    iget-wide v4, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->startTime:J

    sub-long/2addr v2, v4

    int-to-long v4, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 171
    if-eqz p3, :cond_3

    .line 172
    invoke-interface {p3}, Lcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;->lessMinTime()V

    .line 174
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 183
    .end local v1           #file:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 184
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    if-eqz p3, :cond_0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;->recordError(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #file:Ljava/io/File;
    :cond_4
    if-eqz p3, :cond_0

    .line 180
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;->recordfinish(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public releasePlayVoice()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 495
    :cond_0
    return-void
.end method

.method public remoteDiagnoseHandle(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "userId"
    .parameter "requestId"
    .parameter "currentStatus"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mRemoteDiagnoseHandleListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mRemoteDiagnoseHandleListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;->sendDiagnoseStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 601
    :cond_0
    return-void
.end method

.method public remoteReport(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    invoke-interface {v0, p1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;->remoteReport(Ljava/lang/String;)V

    .line 583
    :cond_0
    return-void
.end method

.method public remoteReport_PDF(Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 1
    .parameter "filePath"
    .parameter "callback"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;->remoteReport_PDF(Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V

    .line 595
    :cond_0
    return-void
.end method

.method public removeEventListener(Lcom/cnlaunch/newgolo/model/event/EventListener;)V
    .locals 0
    .parameter "eventListener"

    .prologue
    .line 336
    invoke-static {p1}, Lcom/cnlaunch/newgolo/manager/EventListensers;->removeEventListener(Lcom/cnlaunch/newgolo/model/event/EventListener;)V

    .line 337
    return-void
.end method

.method public removeFloatingWindow()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    invoke-interface {v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;->removeFloatingWindow()V

    .line 589
    :cond_0
    return-void
.end method

.method public removeMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V
    .locals 0
    .parameter "messageHandler"

    .prologue
    .line 321
    invoke-static {p1}, Lcom/cnlaunch/newgolo/manager/MessageListensers;->removeMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V

    .line 322
    return-void
.end method

.method public sendMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 97
    invoke-static {p1}, Lcom/cnlaunch/newgolo/task/SendTask;->send(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 98
    return-void
.end method

.method public sendPDFMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 0
    .parameter "message"
    .parameter "callback"

    .prologue
    .line 100
    invoke-static {p1, p2}, Lcom/cnlaunch/newgolo/task/SendTask;->sendPDF(Lcom/cnlaunch/newgolo/model/ChatMessage;Lcom/cnlaunch/newgolo/model/ICallback;)V

    .line 101
    return-void
.end method

.method public sendRemoteDiagnoseStatus(Ljava/lang/String;I)V
    .locals 2
    .parameter "requestId"
    .parameter "currentStatus"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mRemoteDiagnoseHandleListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mRemoteDiagnoseHandleListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1, p1, p2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;->sendDiagnoseStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 612
    :cond_0
    return-void
.end method

.method public sendTxtMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)Z
    .locals 7
    .parameter "content"
    .parameter "roomId"
    .parameter "pubId"
    .parameter "pubName"
    .parameter "callback"

    .prologue
    .line 110
    const/4 v6, 0x0

    .line 111
    .local v6, result:Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, userIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, p1

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 113
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/newgolo/task/SendTask;->sendTextMessage(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V

    .line 114
    return v6
.end method

.method public sendVoiceMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)Z
    .locals 6
    .parameter "path"
    .parameter "roomId"
    .parameter "pubId"
    .parameter "pubName"
    .parameter "callback"

    .prologue
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, userIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, p1

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 130
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/newgolo/task/SendTask;->sendVoiceMessage(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V

    .line 131
    const/4 v1, 0x0

    return v1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 78
    sput-object p1, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public setCurrentChatRoom(Lcom/cnlaunch/newgolo/model/ChatRoom;)V
    .locals 0
    .parameter "chatRoom"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mCacheRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    .line 499
    return-void
.end method

.method public setDiagnoseStatusListener(Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;)V
    .locals 0
    .parameter "diagnoseStatusListener"

    .prologue
    .line 551
    iput-object p1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    .line 552
    return-void
.end method

.method public setGoloContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 82
    sput-object p1, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public setOnVoiceListener(Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mOnVoiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    .line 444
    return-void
.end method

.method public setRemoteDiagnoseHandleListener(Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;)V
    .locals 0
    .parameter "remoteDiagnoseHandleListener"

    .prologue
    .line 616
    iput-object p1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mRemoteDiagnoseHandleListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;

    .line 617
    return-void
.end method

.method public startDefaultImActivity()V
    .locals 3

    .prologue
    .line 538
    const-string/jumbo v1, "LunchIMManager"

    const-string/jumbo v2, "startDefaultImActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mCacheRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    if-nez v1, :cond_0

    .line 541
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cache ChatRoom is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.cnlaunch.newgolo.activity.MessageActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 545
    const-string/jumbo v1, "chatroom"

    iget-object v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mCacheRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 546
    sget-object v1, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 547
    return-void
.end method

.method public startGoloWithMiniDiag(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "ip"
    .parameter "port"
    .parameter "domain"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;->startGoloWithMiniDiag(Ljava/lang/String;ILjava/lang/String;)V

    .line 577
    :cond_0
    return-void
.end method

.method public startImActivity(Lcom/cnlaunch/newgolo/model/ChatRoom;Ljava/lang/String;)V
    .locals 2
    .parameter "chatRoom"
    .parameter "prefix"

    .prologue
    .line 530
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.cnlaunch.newgolo.activity.MessageActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 532
    const-string/jumbo v1, "chatroom"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 533
    const-string/jumbo v1, "prefix"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    sget-object v1, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 535
    return-void
.end method

.method public startImService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 301
    const-string/jumbo v1, "LunchIMManager"

    const-string/jumbo v2, "startImService start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cnlaunch/newgolo/service/GoloProService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string/jumbo v1, "action_login"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 305
    const-string/jumbo v1, "LunchIMManager"

    const-string/jumbo v2, "startImService end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public startMessageFromCustomer(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ChatType;JLjava/lang/String;)V
    .locals 5
    .parameter "id"
    .parameter "name"
    .parameter "type"
    .parameter "pub_id"
    .parameter "pub_name"

    .prologue
    .line 510
    sget-object v2, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 511
    new-instance v1, Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-direct {v1, p1, p2, p3}, Lcom/cnlaunch/newgolo/model/ChatRoom;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ChatType;)V

    .line 512
    .local v1, room:Lcom/cnlaunch/newgolo/model/ChatRoom;
    iput-wide p4, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 513
    iput-object p6, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    .line 514
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    const-class v3, Lcom/cnlaunch/newgolo/activity/MessageActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 515
    .local v0, intentChat:Landroid/content/Intent;
    const-string/jumbo v2, "ChatRoom"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 516
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 517
    sget-object v2, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 523
    .end local v0           #intentChat:Landroid/content/Intent;
    .end local v1           #room:Lcom/cnlaunch/newgolo/model/ChatRoom;
    :goto_0
    return-void

    .line 519
    :cond_0
    sget-object v2, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    .line 520
    sget-object v3, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cnlaunch/golo3/message/R$string;->restart_IM:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 521
    const/4 v4, 0x0

    .line 519
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 521
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public stopToConnect()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    invoke-interface {v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;->stopToConnect()V

    .line 571
    :cond_0
    return-void
.end method
