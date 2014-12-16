.class Lcom/cnlaunch/newgolo/service/GoloProService$2;
.super Lcom/cnlaunch/newgolo/model/event/EventListener;
.source "GoloProService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/service/GoloProService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code:[I


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/service/GoloProService;


# direct methods
.method static synthetic $SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code()[I
    .locals 3

    .prologue
    .line 194
    sget-object v0, Lcom/cnlaunch/newgolo/service/GoloProService$2;->$SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code:[I

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
    sput-object v0, Lcom/cnlaunch/newgolo/service/GoloProService$2;->$SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code:[I

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

.method constructor <init>(Lcom/cnlaunch/newgolo/service/GoloProService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/service/GoloProService$2;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    .line 194
    invoke-direct {p0, p2}, Lcom/cnlaunch/newgolo/model/event/EventListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onReceiveEvent(Lcom/cnlaunch/newgolo/model/event/Event;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 197
    instance-of v1, p1, Lcom/cnlaunch/newgolo/model/event/XmppEvent;

    if-eqz v1, :cond_0

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "XMPP_CONNECTION_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, x431iDiagIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    invoke-static {}, Lcom/cnlaunch/newgolo/service/GoloProService$2;->$SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code()[I

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent;->getCode()Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 227
    .end local v0           #x431iDiagIntent:Landroid/content/Intent;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 202
    .restart local v0       #x431iDiagIntent:Landroid/content/Intent;
    .restart local p1
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService$2;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    const/4 v2, 0x0

    #setter for: Lcom/cnlaunch/newgolo/service/GoloProService;->login_count:I
    invoke-static {v1, v2}, Lcom/cnlaunch/newgolo/service/GoloProService;->access$1(Lcom/cnlaunch/newgolo/service/GoloProService;I)V

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService$2;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    #calls: Lcom/cnlaunch/newgolo/service/GoloProService;->relogin()V
    invoke-static {v1}, Lcom/cnlaunch/newgolo/service/GoloProService;->access$2(Lcom/cnlaunch/newgolo/service/GoloProService;)V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService$2;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    #calls: Lcom/cnlaunch/newgolo/service/GoloProService;->relogin()V
    invoke-static {v1}, Lcom/cnlaunch/newgolo/service/GoloProService;->access$2(Lcom/cnlaunch/newgolo/service/GoloProService;)V

    goto :goto_0

    .line 213
    :pswitch_3
    iget-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService$2;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/service/GoloProService$2;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    sget v3, Lcom/cnlaunch/golo3/message/R$string;->pwd_error:I

    invoke-virtual {v2, v3}, Lcom/cnlaunch/newgolo/service/GoloProService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/service/GoloProService;->showNotifyDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_4
    iget-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService$2;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/service/GoloProService$2;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    sget v3, Lcom/cnlaunch/golo3/message/R$string;->another_device_login:I

    invoke-virtual {v2, v3}, Lcom/cnlaunch/newgolo/service/GoloProService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/service/GoloProService;->showNotifyDialog(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v1, "STATUS"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService$2;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/service/GoloProService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 223
    :pswitch_5
    iget-object v1, p0, Lcom/cnlaunch/newgolo/service/GoloProService$2;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    check-cast p1, Lcom/cnlaunch/newgolo/model/event/XmppEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent;->getPacket()Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    #calls: Lcom/cnlaunch/newgolo/service/GoloProService;->receiveMessage(Lorg/jivesoftware/smack/packet/Packet;)V
    invoke-static {v1, v2}, Lcom/cnlaunch/newgolo/service/GoloProService;->access$3(Lcom/cnlaunch/newgolo/service/GoloProService;Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
