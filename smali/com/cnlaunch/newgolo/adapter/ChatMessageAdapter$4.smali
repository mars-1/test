.class Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$4;
.super Ljava/lang/Object;
.source "ChatMessageAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->creatHeadViewLoadTask(Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

.field private final synthetic val$user_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$4;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iput-object p2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$4;->val$user_id:Ljava/lang/String;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$4;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$4;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$5(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$4;->val$user_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cnlaunch/newgolo/bean/UserInfo;->getHeadPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->userHeadPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$6(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$4;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->userHeadPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$7(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$4;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$8(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 447
    :cond_0
    const-string/jumbo v0, "ChatMessageAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "userHeadPath = headUri:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$4;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->userHeadPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$7(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method
