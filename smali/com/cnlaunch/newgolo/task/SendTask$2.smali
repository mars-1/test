.class Lcom/cnlaunch/newgolo/task/SendTask$2;
.super Ljava/lang/Object;
.source "SendTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/task/SendTask;->sendPDF(Lcom/cnlaunch/newgolo/model/ChatMessage;Lcom/cnlaunch/newgolo/model/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/cnlaunch/newgolo/model/ICallback;

.field private final synthetic val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/model/ChatMessage;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/task/SendTask$2;->val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    iput-object p2, p0, Lcom/cnlaunch/newgolo/task/SendTask$2;->val$callback:Lcom/cnlaunch/newgolo/model/ICallback;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/task/SendTask$2;->val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->done:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    if-eq v1, v2, :cond_0

    .line 77
    iget-object v1, p0, Lcom/cnlaunch/newgolo/task/SendTask$2;->val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    #calls: Lcom/cnlaunch/newgolo/task/SendTask;->initMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    invoke-static {v1}, Lcom/cnlaunch/newgolo/task/SendTask;->access$0(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 78
    iget-object v1, p0, Lcom/cnlaunch/newgolo/task/SendTask$2;->val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    #calls: Lcom/cnlaunch/newgolo/task/SendTask;->upload(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    invoke-static {v1}, Lcom/cnlaunch/newgolo/task/SendTask;->access$1(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/task/SendTask$2;->val$message:Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/task/SendTask$2;->val$callback:Lcom/cnlaunch/newgolo/model/ICallback;

    #calls: Lcom/cnlaunch/newgolo/task/SendTask;->sendPDFMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;Lcom/cnlaunch/newgolo/model/ICallback;)V
    invoke-static {v1, v2}, Lcom/cnlaunch/newgolo/task/SendTask;->access$3(Lcom/cnlaunch/newgolo/model/ChatMessage;Lcom/cnlaunch/newgolo/model/ICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
