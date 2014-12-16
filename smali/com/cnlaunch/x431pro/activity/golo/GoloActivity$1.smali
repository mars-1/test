.class Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$1;
.super Landroid/os/Handler;
.source "GoloActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    .line 194
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;)V

    .line 202
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    const-class v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->goloReplaceFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;)V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 210
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    const v1, 0x7f0706bf

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
