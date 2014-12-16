.class Lcom/ifoer/pro/expeditionphone/WelcomeActivity$1;
.super Ljava/util/TimerTask;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$1;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    .line 95
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$1;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    const/4 v1, 0x1

    #setter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->isTimeOut:Z
    invoke-static {v0, v1}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$7(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;Z)V

    .line 99
    iget-object v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$1;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    #getter for: Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->isRequest:Z
    invoke-static {v0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->access$8(Lcom/ifoer/pro/expeditionphone/WelcomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/ifoer/pro/expeditionphone/WelcomeActivity$1;->this$0:Lcom/ifoer/pro/expeditionphone/WelcomeActivity;

    invoke-virtual {v0}, Lcom/ifoer/pro/expeditionphone/WelcomeActivity;->startHome()V

    .line 102
    :cond_0
    return-void
.end method
