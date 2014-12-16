.class Lcom/cnlaunch/x431pro/activity/MainActivity$2;
.super Lcom/cnlaunch/newgolo/model/event/EventListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code:[I


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code()[I
    .locals 3

    .prologue
    .line 309
    sget-object v0, Lcom/cnlaunch/x431pro/activity/MainActivity$2;->$SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->values()[Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->conflict:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->connect_failed:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->connect_successfully:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ping_failed:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->pwd_error:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->receive_msg:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->receive_share:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->receive_upgrade_bin:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->send_failed:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/cnlaunch/x431pro/activity/MainActivity$2;->$SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/cnlaunch/x431pro/activity/MainActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    .line 309
    invoke-direct {p0, p2}, Lcom/cnlaunch/newgolo/model/event/EventListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onReceiveEvent(Lcom/cnlaunch/newgolo/model/event/Event;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 313
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "event :"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lcom/cnlaunch/newgolo/model/event/XmppEvent;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/event/XmppEvent;->getCode()Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    instance-of v2, p1, Lcom/cnlaunch/newgolo/model/event/XmppEvent;

    if-eqz v2, :cond_0

    .line 315
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/MainActivity$2;->$SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code()[I

    move-result-object v2

    check-cast p1, Lcom/cnlaunch/newgolo/model/event/XmppEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent;->getCode()Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 317
    :pswitch_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 318
    .local v0, nManager:Landroid/app/NotificationManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 320
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "login_cancle"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "logout"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$2(Lcom/cnlaunch/x431pro/activity/MainActivity;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "isconflict"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 327
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$2(Lcom/cnlaunch/x431pro/activity/MainActivity;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "login_password"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$2(Lcom/cnlaunch/x431pro/activity/MainActivity;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "login_state"

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$2(Lcom/cnlaunch/x431pro/activity/MainActivity;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "if_auto_login"

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v1, Lcom/cnlaunch/x431pro/module/user/model/User;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/module/user/model/User;-><init>()V

    .line 331
    .local v1, user:Lcom/cnlaunch/x431pro/module/user/model/User;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$2(Lcom/cnlaunch/x431pro/activity/MainActivity;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/Object;)V

    .line 332
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showConflict()V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
