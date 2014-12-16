.class Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$1;
.super Landroid/content/BroadcastReceiver;
.source "CarIconFragmentForUSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;

    .line 133
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "softs_updated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;

    const/16 v2, 0x271b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->request(IZ)V

    .line 140
    :cond_0
    return-void
.end method
