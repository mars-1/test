.class Lcom/cnlaunch/x431pro/activity/MainActivity$4;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    .line 377
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 380
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 391
    :goto_0
    return-void

    .line 382
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070754

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
