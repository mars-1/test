.class public Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;
.super Lcom/cnlaunch/newgolo/handler/MessageHandler;
.source "NoticeMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;
    }
.end annotation


# static fields
.field private static final NOTICE_TIME:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NoticeMessageHandler"

.field private static showNoNoticeCount:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastOneTask:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;

.field private mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;

.field private nManager:Landroid/app/NotificationManager;

.field private noticeTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "looper"
    .parameter "handler"

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lcom/cnlaunch/newgolo/handler/MessageHandler;-><init>(Landroid/os/Looper;)V

    .line 39
    iput-object p1, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mHandler:Landroid/os/Handler;

    .line 41
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->nManager:Landroid/app/NotificationManager;

    .line 42
    new-instance v0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;-><init>(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mLastOneTask:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;Lcom/cnlaunch/newgolo/model/ChatMessage;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->getMessageContent(Lcom/cnlaunch/newgolo/model/ChatMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;Lcom/cnlaunch/newgolo/model/ChatMessage;)Landroid/app/PendingIntent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->getPendingIntent(Lcom/cnlaunch/newgolo/model/ChatMessage;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->nManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;)Lcom/cnlaunch/newgolo/model/LightDownTimer;
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;Lcom/cnlaunch/newgolo/model/LightDownTimer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mLightDownTimer:Lcom/cnlaunch/newgolo/model/LightDownTimer;

    return-void
.end method

.method public static addCount()V
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->showNoNoticeCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->showNoNoticeCount:I

    .line 50
    return-void
.end method

.method private getMessageContent(Lcom/cnlaunch/newgolo/model/ChatMessage;)Ljava/lang/String;
    .locals 6
    .parameter "message"

    .prologue
    .line 151
    const-string/jumbo v3, ""

    .line 152
    .local v3, result:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 173
    :pswitch_0
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v3

    .line 176
    :goto_0
    return-object v3

    .line 154
    :pswitch_1
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mContext:Landroid/content/Context;

    sget v5, Lcom/cnlaunch/golo3/message/R$string;->file_str:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 155
    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mContext:Landroid/content/Context;

    sget v5, Lcom/cnlaunch/golo3/message/R$string;->img_str:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    goto :goto_0

    .line 160
    :pswitch_3
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mContext:Landroid/content/Context;

    sget v5, Lcom/cnlaunch/golo3/message/R$string;->sound_str:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 161
    goto :goto_0

    .line 163
    :pswitch_4
    const-string/jumbo v2, "(\\[@){1}[0-9]+[\\]]{1}"

    .line 164
    .local v2, regex:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 165
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 166
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mContext:Landroid/content/Context;

    sget v5, Lcom/cnlaunch/golo3/message/R$string;->look_str:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v3

    .line 171
    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPendingIntent(Lcom/cnlaunch/newgolo/model/ChatMessage;)Landroid/app/PendingIntent;
    .locals 13
    .parameter "msg"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    .line 124
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mContext:Landroid/content/Context;

    const-class v6, Lcom/cnlaunch/newgolo/activity/MessageActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    iget-object v5, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "SHARE_DATA"

    invoke-virtual {v5, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 127
    .local v4, sp:Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    .line 128
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getNickName()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getName()Ljava/lang/String;

    move-result-object v3

    .line 132
    :cond_0
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v5, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    iget-object v6, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomType:Lcom/cnlaunch/newgolo/model/ChatType;

    invoke-direct {v0, v5, v3, v6}, Lcom/cnlaunch/newgolo/model/ChatRoom;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ChatType;)V

    .line 133
    .local v0, chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    const-string/jumbo v5, "USER_PUBLIC_ID"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, id:Ljava/lang/String;
    const-string/jumbo v5, "NoticeMessageHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "USER_PUBLIC_ID:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "null"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 136
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 140
    :goto_0
    const-string/jumbo v5, "USER_PUBLIC_NAME"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v0, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    cmp-long v5, v8, v11

    if-nez v5, :cond_2

    const-string/jumbo v5, ""

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    .line 141
    const-string/jumbo v5, "chatroom"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    iget-object v5, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mContext:Landroid/content/Context;

    const/high16 v6, 0x800

    invoke-static {v5, v10, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    return-object v5

    .line 138
    :cond_1
    iput-wide v11, v0, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    goto :goto_0

    .line 140
    :cond_2
    iget-wide v8, v0, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_1
.end method

.method public static subCount()V
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->showNoNoticeCount:I

    if-lez v0, :cond_0

    .line 56
    sget v0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->showNoNoticeCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->showNoNoticeCount:I

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method protected displayNotice(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$2;-><init>(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method public onMessageAdd(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 62
    sget v0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->showNoNoticeCount:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    iget-object v1, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$1;-><init>(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->noticeTask:Ljava/lang/Runnable;

    .line 72
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->mLastOneTask:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->noticeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;->schedule(Ljava/lang/Runnable;J)V

    .line 73
    const-string/jumbo v0, "NoticeMessageHandler"

    const-string/jumbo v1, "onMessageAdd start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void
.end method

.method public onMessageCountUpdate()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public onMessageUpdate(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 182
    return-void
.end method
