.class public abstract Lcom/cnlaunch/newgolo/handler/BaseHandler;
.super Ljava/lang/Object;
.source "BaseHandler.java"


# instance fields
.field private callback:Landroid/os/Handler$Callback;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/cnlaunch/newgolo/handler/BaseHandler$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/handler/BaseHandler$1;-><init>(Lcom/cnlaunch/newgolo/handler/BaseHandler;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/handler/BaseHandler;->callback:Landroid/os/Handler$Callback;

    .line 15
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/handler/BaseHandler;->callback:Landroid/os/Handler$Callback;

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/handler/BaseHandler;->handler:Landroid/os/Handler;

    .line 16
    return-void
.end method


# virtual methods
.method public abstract handleMessage(Landroid/os/Message;)Z
.end method

.method public final sendMessage(IIILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cnlaunch/newgolo/handler/BaseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    return-void
.end method

.method public final sendMessageDelayed(IJ)V
    .locals 1
    .parameter "what"
    .parameter "delay_time"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cnlaunch/newgolo/handler/BaseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    iget-object v0, p0, Lcom/cnlaunch/newgolo/handler/BaseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 25
    return-void
.end method
