.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$11;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$11;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 553
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 554
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 566
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$11;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$10(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v1

    const/16 v2, 0x7d0

    new-instance v3, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;

    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$11;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;)V

    invoke-virtual {v1, p2, v2, v3}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->recordVoice(Landroid/view/MotionEvent;ILcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;)V

    .line 567
    const/4 v1, 0x0

    return v1

    .line 556
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$11;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSendVoice:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$19(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/widget/Button;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->chat_send_down:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 560
    :pswitch_2
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$11;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSendVoice:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$19(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/widget/Button;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->chat_send:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 554
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
