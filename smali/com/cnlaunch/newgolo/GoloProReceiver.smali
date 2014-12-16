.class public Lcom/cnlaunch/newgolo/GoloProReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GoloProReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    const-string/jumbo v0, "GoloProReceiver"

    iput-object v0, p0, Lcom/cnlaunch/newgolo/GoloProReceiver;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/newgolo/GoloProReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GoloProReceiver onReceive action: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cnlaunch/newgolo/service/GoloProService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v1, service:Landroid/content/Intent;
    const-string/jumbo v2, "action_login"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    .end local v1           #service:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    const-string/jumbo v2, "IDIAG_GOLO_BACK_CHAT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    iget-object v2, p0, Lcom/cnlaunch/newgolo/GoloProReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IDIAG_GOLO_BACK_CHAT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 26
    :cond_2
    const-string/jumbo v2, "IDIAG_GOLO_CHAT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    iget-object v2, p0, Lcom/cnlaunch/newgolo/GoloProReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IDIAG_GOLO_CHAT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
