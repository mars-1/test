.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProRecorderStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 978
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 978
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->dismissVoiceDialog()V

    .line 1006
    return-void
.end method

.method public lessMinTime()V
    .locals 3

    .prologue
    .line 982
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->dismissVoiceDialog()V

    .line 983
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$0(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->share_voice_too_short:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 984
    return-void
.end method

.method public recordError(Ljava/lang/String;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->dismissVoiceDialog()V

    .line 989
    const-string/jumbo v0, "MessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void
.end method

.method public recordfinish(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 994
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->dismissVoiceDialog()V

    .line 995
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$10(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    iget-wide v3, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    iget-object v5, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendVoiceMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)Z

    .line 996
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->showVoiceDialog()V

    .line 1001
    return-void
.end method
