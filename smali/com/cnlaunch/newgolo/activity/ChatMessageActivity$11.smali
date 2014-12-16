.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$11;
.super Ljava/lang/Object;
.source "ChatMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$11;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 497
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 498
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 512
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$11;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$9(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v1

    const/16 v2, 0x7d0

    .line 513
    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ProRecorderStatusCallback;

    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$11;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ProRecorderStatusCallback;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ProRecorderStatusCallback;)V

    .line 512
    invoke-virtual {v1, p2, v2, v3}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->recordVoice(Landroid/view/MotionEvent;ILcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;)V

    .line 514
    const/4 v1, 0x0

    return v1

    .line 500
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$11;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSendVoice:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$31(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/Button;

    move-result-object v1

    .line 501
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->chat_send_down:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 505
    :pswitch_2
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$11;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSendVoice:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$31(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/Button;

    move-result-object v1

    .line 506
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->chat_send:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
