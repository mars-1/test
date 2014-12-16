.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatProRecorderStatusCallback;
.super Ljava/lang/Object;
.source "ChatMessageActivity.java"

# interfaces
.implements Lcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatProRecorderStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 1048
    return-void
.end method

.method public lessMinTime()V
    .locals 3

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$0(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->share_voice_too_short:I

    .line 1022
    const/4 v2, 0x0

    .line 1021
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1023
    return-void
.end method

.method public recordError(Ljava/lang/String;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 1028
    const-string/jumbo v0, "MessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    return-void
.end method

.method public recordfinish(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$9(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1035
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    iget-wide v3, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 1036
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    iget-object v5, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p1

    .line 1034
    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendVoiceMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)Z

    .line 1037
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 1043
    return-void
.end method
