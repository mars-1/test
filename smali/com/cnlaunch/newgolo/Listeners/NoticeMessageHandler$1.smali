.class Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$1;
.super Ljava/lang/Object;
.source "NoticeMessageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->onMessageAdd(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

.field private final synthetic val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$1;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    iput-object p2, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$1;->val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$1;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$1;->val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->displayNotice(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 70
    return-void
.end method
