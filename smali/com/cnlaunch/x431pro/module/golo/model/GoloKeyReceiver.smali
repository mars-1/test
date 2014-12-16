.class public Lcom/cnlaunch/x431pro/module/golo/model/GoloKeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GoloKeyReceiver.java"


# static fields
.field public static final ACTION_GOLO_LONG_PRESS:Ljava/lang/String; = "com.android.action.golo_long_press"

.field public static final ACTION_GOLO_PRESS:Ljava/lang/String; = "com.android.action.golo_press"

.field private static final TAG:Ljava/lang/String; = "GoloKeyReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.action.golo_press"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const-string/jumbo v1, "GoloKeyReceiver"

    const-string/jumbo v2, "ACTION_GOLO_PRESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/MainActivity;->isRemoteFlag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, goloIntent:Landroid/content/Intent;
    const-string/jumbo v1, "Setting"

    const-string/jumbo v2, "startgolo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string/jumbo v1, "Customer_type"

    const-string/jumbo v2, "Customer_type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    invoke-static {}, Lcom/cnlaunch/newgolo/manager/GoloLightManager;->close()V

    .line 42
    .end local v0           #goloIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.action.golo_long_press"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const-string/jumbo v1, "GoloKeyReceiver"

    const-string/jumbo v2, "ACTION_GOLO_LONG_PRESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
