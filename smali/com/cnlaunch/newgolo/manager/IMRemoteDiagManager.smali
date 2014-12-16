.class public abstract Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;
.super Ljava/lang/Object;
.source "IMRemoteDiagManager.java"


# static fields
.field public static final ACTION_DIAGNOSE_INIT:Ljava/lang/String; = "com.launch.iDiagServive.initRemoteDiag"

.field public static final ACTION_DIAGNOSE_START:Ljava/lang/String; = "com.launch.iDiagServive.startRemoteDiag"

.field public static final APPINFO:Ljava/lang/String; = "A-pro"

.field public static final CMD_ACCEPT:Ljava/lang/String; = "accept"

.field public static final CMD_ASKFOR:Ljava/lang/String; = "askfor"

.field public static final CMD_FAIL:Ljava/lang/String; = "fail"

.field public static final CMD_INVITE:Ljava/lang/String; = "invite"

.field public static final CMD_REFUSE:Ljava/lang/String; = "refuse"

.field public static final CMD_START:Ljava/lang/String; = "start"

.field public static final CMD_STOP:Ljava/lang/String; = "stop"

.field public static final CurrentVer:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IMRemoteDiagManager"

.field private static final V1:I = 0x1

.field private static final V2:I = 0x2


# instance fields
.field private lat:Ljava/lang/String;

.field private lon:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private otherVer:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->lat:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->lon:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->otherVer:I

    .line 49
    iput-object p1, p0, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private getVersion(Lcom/cnlaunch/newgolo/model/ChatMessage;)I
    .locals 7
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, jsonObject:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 162
    .local v3, returnInt:I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .local v2, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v5, "ver"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v4, "ver"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :goto_0
    move-object v1, v2

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    move v4, v3

    .line 174
    :goto_1
    return v4

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Lorg/json/JSONException;
    const-string/jumbo v5, "Sanda"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_0
    move v3, v4

    .line 170
    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    .line 172
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleMessageOld(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    .line 88
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, strContent:Ljava/lang/String;
    const-string/jumbo v2, "accept"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p0, v3}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onNeedUpdateListener(I)V

    .line 113
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {p0, v3}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onNeedUpdateListener(I)V

    goto :goto_0

    .line 94
    :cond_1
    const-string/jumbo v2, "refuse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onRefuseListener(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    const-string/jumbo v2, "fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onFailListener()V

    goto :goto_0

    .line 98
    :cond_3
    const-string/jumbo v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onStopListener()V

    goto :goto_0

    .line 100
    :cond_4
    const-string/jumbo v2, "askfor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, item:[Ljava/lang/String;
    aget-object v2, v0, v3

    invoke-virtual {p0, v2}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onAskForListener(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->setLat(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->setLon(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v0           #item:[Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, "invite"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 108
    invoke-virtual {p0, v3}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onNeedUpdateListener(I)V

    goto :goto_0

    .line 111
    :cond_6
    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onErrorListener(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleMessageV2(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 11
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, strContent:Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, srcData:Lorg/json/JSONObject;
    const-string/jumbo v8, "IMRemoteDiagManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "srcData:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string/jumbo v8, "cmd"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, strKey:Ljava/lang/String;
    const-string/jumbo v8, "accept"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 127
    const-string/jumbo v8, "snkey"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "snkey"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, snKey:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onAcceptListener(Ljava/lang/String;)V

    .line 150
    .end local v0           #snKey:Ljava/lang/String;
    :goto_1
    return-void

    .line 127
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 129
    :cond_1
    const-string/jumbo v8, "start"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 130
    const-string/jumbo v8, "ip"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "ip"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, strIP:Ljava/lang/String;
    :goto_2
    const-string/jumbo v8, "port"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "port"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, strPort:Ljava/lang/String;
    :goto_3
    const-string/jumbo v8, "domain"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "domain"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, strDomain:Ljava/lang/String;
    :goto_4
    invoke-virtual {p0, v4, v6, v3}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onStartListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    .end local v3           #strDomain:Ljava/lang/String;
    .end local v4           #strIP:Ljava/lang/String;
    .end local v6           #strPort:Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    goto :goto_2

    .line 131
    .restart local v4       #strIP:Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, ""

    goto :goto_3

    .line 132
    .restart local v6       #strPort:Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, ""

    goto :goto_4

    .line 134
    .end local v4           #strIP:Ljava/lang/String;
    .end local v6           #strPort:Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "refuse"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 135
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onRefuseListener(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_6
    const-string/jumbo v8, "fail"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 137
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onFailListener()V

    goto :goto_1

    .line 138
    :cond_7
    const-string/jumbo v8, "stop"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 139
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onStopListener()V

    goto :goto_1

    .line 140
    :cond_8
    const-string/jumbo v8, "askfor"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 141
    const-string/jumbo v8, "snkey"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string/jumbo v8, "snkey"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, strSNKey:Ljava/lang/String;
    :goto_5
    invoke-virtual {p0, v7}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onAskForListener(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getLatitude()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->setLat(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getLongitude()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->setLon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 141
    .end local v7           #strSNKey:Ljava/lang/String;
    :cond_9
    const-string/jumbo v7, ""

    goto :goto_5

    .line 145
    :cond_a
    const-string/jumbo v8, "invite"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 146
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onInviteListener()V

    goto/16 :goto_1

    .line 148
    :cond_b
    invoke-virtual {p0, v2}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onErrorListener(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public CreateStartCMD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "ip"
    .parameter "port"
    .parameter "domain"

    .prologue
    const/4 v4, 0x2

    .line 287
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->getOtherVer()I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v3, "start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v3

    .line 296
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 298
    .local v1, mJson:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "ver"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 299
    const-string/jumbo v3, "app"

    const-string/jumbo v4, "A-pro"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string/jumbo v3, "cmd"

    const-string/jumbo v4, "start"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string/jumbo v3, "ip"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string/jumbo v3, "port"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string/jumbo v3, "domain"

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_1
    const-string/jumbo v3, "Sanda"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Create Start :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public clearLocation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 436
    iput-object v0, p0, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->lon:Ljava/lang/String;

    .line 437
    iput-object v0, p0, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->lat:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public creatDiagnoseMsg(Lcom/cnlaunch/newgolo/model/ChatRoom;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage;
    .locals 2
    .parameter "chatRoom"
    .parameter "publicGroupId"
    .parameter "publicGroupName"
    .parameter "txt"
    .parameter "content"

    .prologue
    .line 388
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->createMessage(I)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    .line 389
    .local v0, textMsg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-virtual {v0, p5}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setText(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0, p6}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setContent(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, p2, p3}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupId(J)V

    .line 392
    invoke-virtual {v0, p4}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupName(Ljava/lang/String;)V

    .line 393
    return-object v0
.end method

.method public createAcceptCMD()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 262
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->getOtherVer()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 263
    const-string/jumbo v2, "accept"

    .line 273
    :goto_0
    return-object v2

    .line 265
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 267
    .local v1, mJson:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "ver"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 268
    const-string/jumbo v2, "app"

    const-string/jumbo v3, "A-pro"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string/jumbo v2, "cmd"

    const-string/jumbo v3, "accept"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public createAskForCMD(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "snkey"

    .prologue
    .line 243
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 245
    .local v1, mJson:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "ver"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    const-string/jumbo v2, "app"

    const-string/jumbo v3, "A-pro"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string/jumbo v2, "cmd"

    const-string/jumbo v3, "askfor"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string/jumbo v2, "snkey"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public createFailCMD()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 403
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->getOtherVer()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 404
    const-string/jumbo v2, "fail"

    .line 415
    :goto_0
    return-object v2

    .line 406
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 408
    .local v1, mJson:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "ver"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 409
    const-string/jumbo v2, "app"

    const-string/jumbo v3, "A-pro"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    const-string/jumbo v2, "cmd"

    const-string/jumbo v3, "fail"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public createInviteCMD()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 341
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->getOtherVer()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 342
    const-string/jumbo v2, "invite"

    .line 352
    :goto_0
    return-object v2

    .line 344
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 346
    .local v1, mJson:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "ver"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    const-string/jumbo v2, "app"

    const-string/jumbo v3, "A-pro"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string/jumbo v2, "cmd"

    const-string/jumbo v3, "invite"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public createRefuseCMD()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 319
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->getOtherVer()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 320
    const-string/jumbo v2, "refuse"

    .line 330
    :goto_0
    return-object v2

    .line 322
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 324
    .local v1, mJson:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "ver"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    const-string/jumbo v2, "app"

    const-string/jumbo v3, "A-pro"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string/jumbo v2, "cmd"

    const-string/jumbo v3, "refuse"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public createStopCMD()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 362
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->getOtherVer()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 363
    const-string/jumbo v2, "stop"

    .line 373
    :goto_0
    return-object v2

    .line 365
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 367
    .local v1, mJson:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "ver"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 368
    const-string/jumbo v2, "app"

    const-string/jumbo v3, "A-pro"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    const-string/jumbo v2, "cmd"

    const-string/jumbo v3, "stop"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public disposeMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 62
    const-string/jumbo v1, "IMRemoteDiagManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "messge:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->getVersion(Lcom/cnlaunch/newgolo/model/ChatMessage;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->setOtherVer(I)V

    .line 64
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->getOtherVer()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 76
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->error_im_ver:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->onErrorListener(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->handleMessageOld(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    goto :goto_0

    .line 70
    :pswitch_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->handleMessageV2(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->lon:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherVer()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onAcceptListener(Ljava/lang/String;)V
.end method

.method public abstract onAskForListener(Ljava/lang/String;)V
.end method

.method public abstract onErrorListener(Ljava/lang/String;)V
.end method

.method public abstract onFailListener()V
.end method

.method public abstract onInviteListener()V
.end method

.method public abstract onNeedUpdateListener(I)V
.end method

.method public abstract onRefuseListener(Ljava/lang/String;)V
.end method

.method public abstract onStartListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onStopListener()V
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0
    .parameter "lat"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->lat:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public setLon(Ljava/lang/String;)V
    .locals 0
    .parameter "lon"

    .prologue
    .line 432
    iput-object p1, p0, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->lon:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public setOtherVer(I)V
    .locals 0
    .parameter "otherVer"

    .prologue
    .line 58
    iput p1, p0, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;->otherVer:I

    .line 59
    return-void
.end method
