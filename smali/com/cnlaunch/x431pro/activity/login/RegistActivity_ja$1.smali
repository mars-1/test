.class Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;
.super Landroid/os/Handler;
.source "RegistActivity_ja.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    .line 158
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;)Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 165
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->image_picture_identifycode:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$3(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$1(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
