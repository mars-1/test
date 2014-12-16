.class public abstract Lcom/cnlaunch/newgolo/handler/MessageHandler;
.super Lcom/cnlaunch/newgolo/handler/BaseHandler;
.source "MessageHandler.java"


# static fields
.field public static final ON_MESSAGE_ADD:I = 0x0

.field public static final ON_MESSAGE_COUNT_UPDATE:I = 0x2

.field public static final ON_MESSAGE_UPDATE:I = 0x1


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 19
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 37
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/handler/MessageHandler;->onMessageAdd(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    goto :goto_0

    .line 40
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/handler/MessageHandler;->onMessageUpdate(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    goto :goto_0

    .line 43
    :pswitch_2
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/handler/MessageHandler;->onMessageCountUpdate()V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public notifyMessageAdd(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 1
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/cnlaunch/newgolo/handler/MessageHandler;->sendMessage(IIILjava/lang/Object;)V

    .line 23
    return-void
.end method

.method public notifyMessageConutUpdate()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x2

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/cnlaunch/newgolo/handler/MessageHandler;->sendMessageDelayed(IJ)V

    .line 31
    return-void
.end method

.method public notifyMessageUpdate(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/cnlaunch/newgolo/handler/MessageHandler;->sendMessage(IIILjava/lang/Object;)V

    .line 27
    return-void
.end method

.method public abstract onMessageAdd(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
.end method

.method public abstract onMessageCountUpdate()V
.end method

.method public abstract onMessageUpdate(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
.end method
