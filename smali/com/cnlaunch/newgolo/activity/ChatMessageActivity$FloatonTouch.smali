.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;
.super Ljava/lang/Object;
.source "ChatMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatonTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1486
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1487
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1501
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$9(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v1

    const/16 v2, 0x7d0

    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ProRecorderStatusCallback;

    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ProRecorderStatusCallback;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ProRecorderStatusCallback;)V

    invoke-virtual {v1, p2, v2, v3}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->recordVoice(Landroid/view/MotionEvent;ILcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;)V

    .line 1502
    const/4 v1, 0x0

    return v1

    .line 1489
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSendVoice:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$18(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/Button;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->chat_send_down:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1490
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fShowContentBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$19(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/Button;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->chat_voice_logo_in_3:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 1494
    :pswitch_2
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSendVoice:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$18(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/Button;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->chat_send:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1495
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fShowContentBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$19(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/Button;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->chat_activity_btn_text:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 1487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
