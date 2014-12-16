.class Lcom/cnlaunch/x431pro/activity/login/LoginFunction$1;
.super Landroid/os/Handler;
.source "LoginFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/LoginFunction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070752

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
