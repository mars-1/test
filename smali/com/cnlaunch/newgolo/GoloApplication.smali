.class public Lcom/cnlaunch/newgolo/GoloApplication;
.super Landroid/app/Application;
.source "GoloApplication.java"


# static fields
.field public static APP_VERSION_TYPE:I

.field public static DIAGNOSE:Ljava/lang/String;

.field public static GOLO_GROUP:Ljava/lang/String;

.field public static LITTLE_HELP:Ljava/lang/String;

.field public static LITTLE_HELP_MSG:Ljava/lang/String;

.field public static OVER_SEA:I

.field private static activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static animation:Landroid/view/animation/AlphaAnimation;

.field public static context:Landroid/content/Context;

.field private static eventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/model/event/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private static listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/GoloHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static messageHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/handler/MessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field public static server_time_deviation:J

.field public static threadPools:Ljava/util/concurrent/ExecutorService;

.field public static uiHandler:Landroid/os/Handler;

.field public static final validChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->messageHandlers:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->listeners:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->eventListeners:Ljava/util/ArrayList;

    .line 37
    sput v1, Lcom/cnlaunch/newgolo/GoloApplication;->OVER_SEA:I

    .line 38
    sput v1, Lcom/cnlaunch/newgolo/GoloApplication;->APP_VERSION_TYPE:I

    .line 39
    const-string/jumbo v0, "golo_sys"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->LITTLE_HELP_MSG:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "100000"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->LITTLE_HELP:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "600000"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->GOLO_GROUP:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "600088"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->DIAGNOSE:Ljava/lang/String;

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/cnlaunch/newgolo/GoloApplication;->server_time_deviation:J

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->uiHandler:Landroid/os/Handler;

    .line 46
    const/16 v0, 0x42

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->validChars:[C

    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->threadPools:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 46
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2et 0x0t
        0x5ft 0x0t
        0x2dt 0x0t
        0x40t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static addActivities(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 118
    return-void
.end method

.method public static addEventListener(Lcom/cnlaunch/newgolo/model/event/EventListener;)V
    .locals 1
    .parameter "eventListener"

    .prologue
    .line 87
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public static addMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V
    .locals 1
    .parameter "messageHandler"

    .prologue
    .line 102
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->messageHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public static exit()V
    .locals 3

    .prologue
    .line 122
    sget-object v1, Lcom/cnlaunch/newgolo/GoloApplication;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, activity:Landroid/app/Activity;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    return-void

    .line 122
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #activity:Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 123
    .restart local v0       #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static getActivities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->activities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getEventListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/model/event/EventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->eventListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getHandlers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/GoloHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getMessageHandlers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/handler/MessageHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->messageHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    sget-object v1, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v0

    .line 130
    .local v0, entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/LoginEntity;->user_id:Ljava/lang/String;

    .line 137
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "123456"

    goto :goto_0
.end method

.method public static getUserMobile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    sget-object v1, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v0

    .line 163
    .local v0, entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/LoginEntity;->mobile:Ljava/lang/String;

    .line 167
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    sget-object v1, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v0

    .line 173
    .local v0, entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/LoginEntity;->user_name:Ljava/lang/String;

    .line 177
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getUserNickName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    sget-object v1, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v0

    .line 153
    .local v0, entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    if-eqz v0, :cond_0

    .line 155
    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/LoginEntity;->nick_name:Ljava/lang/String;

    .line 157
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getUserToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    sget-object v1, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v0

    .line 143
    .local v0, entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, v0, Lcom/cnlaunch/newgolo/model/LoginEntity;->token:Ljava/lang/String;

    .line 147
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private initAppVersionName()V
    .locals 3

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/GoloApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 221
    :try_start_0
    const-string/jumbo v2, "com.cnlaunch.padII"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.cnlaunch.maximus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.cnlaunch.MaxGo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    :cond_0
    const/4 v2, 0x0

    sput v2, Lcom/cnlaunch/newgolo/GoloApplication;->APP_VERSION_TYPE:I

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    const-string/jumbo v2, "com.cnlaunch.x431.pro3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "com.ifoer.expedition.pro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    :cond_3
    const/4 v2, 0x1

    sput v2, Lcom/cnlaunch/newgolo/GoloApplication;->APP_VERSION_TYPE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string/jumbo v2, "com.cnlaunch.ScanPad071"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "com.cnlaunch.ScanPad101"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 226
    :cond_5
    const/4 v2, 0x2

    sput v2, Lcom/cnlaunch/newgolo/GoloApplication;->APP_VERSION_TYPE:I

    goto :goto_0

    .line 227
    :cond_6
    const-string/jumbo v2, "com.cnlaunch.X431V"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "com.cnlaunch.X431VI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    :cond_7
    const/4 v2, 0x3

    sput v2, Lcom/cnlaunch/newgolo/GoloApplication;->APP_VERSION_TYPE:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private initPublicAccountNum()V
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/cnlaunch/newgolo/GoloApplication;->OVER_SEA:I

    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "golo_sys"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->LITTLE_HELP_MSG:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "100000"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->LITTLE_HELP:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "600000"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->GOLO_GROUP:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "600088"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->DIAGNOSE:Ljava/lang/String;

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string/jumbo v0, "608833"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->LITTLE_HELP_MSG:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "608833"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->LITTLE_HELP:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "608834"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->GOLO_GROUP:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "608835"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->DIAGNOSE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static reOpenApp(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 209
    invoke-static {p0}, Lcom/cnlaunch/newgolo/model/LoginMgr;->deleteLoginInfo(Landroid/content/Context;)V

    .line 210
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cnlaunch/newgolo/service/GoloProService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 214
    .local v0, i:Landroid/content/Intent;
    const v2, 0x14008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method public static registerHandler(Lcom/cnlaunch/newgolo/GoloHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 195
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public static removeEventListener(Lcom/cnlaunch/newgolo/model/event/EventListener;)V
    .locals 1
    .parameter "eventListener"

    .prologue
    .line 92
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public static removeMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V
    .locals 1
    .parameter "messageHandler"

    .prologue
    .line 107
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->messageHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public static setUser(Lcom/cnlaunch/newgolo/model/LoginEntity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 182
    if-eqz p0, :cond_0

    .line 184
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/cnlaunch/newgolo/model/LoginMgr;->saveLoginInfo(Landroid/content/Context;Lcom/cnlaunch/newgolo/model/LoginEntity;)V

    .line 186
    :cond_0
    return-void
.end method

.method public static unregisterHandler(Lcom/cnlaunch/newgolo/GoloHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 200
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 58
    sput-object p0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/GoloApplication;->initPublicAccountNum()V

    .line 63
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/GoloApplication;->initAppVersionName()V

    .line 64
    return-void
.end method
