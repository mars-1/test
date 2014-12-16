.class Lcom/cnlaunch/x431pro/activity/login/LoginActivity$1;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginActivity;

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 74
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 77
    .local v0, loginResult:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->returnLoginResultToRTU(I)V
    invoke-static {v1, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/LoginActivity;I)V

    goto :goto_0

    .line 80
    .end local v0           #loginResult:I
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->finish()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
