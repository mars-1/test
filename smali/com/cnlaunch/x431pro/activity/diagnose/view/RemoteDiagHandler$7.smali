.class Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$7;
.super Ljava/util/TimerTask;
.source "RemoteDiagHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timerAction(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    .line 242
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->sendEmptyMessage(I)Z

    .line 246
    return-void
.end method
