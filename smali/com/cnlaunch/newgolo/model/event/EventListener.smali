.class public abstract Lcom/cnlaunch/newgolo/model/event/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/event/EventListener;->handler:Landroid/os/Handler;

    .line 16
    return-void
.end method


# virtual methods
.method public dispatchEvent(Lcom/cnlaunch/newgolo/model/event/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/event/EventListener;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/cnlaunch/newgolo/model/event/EventListener$1;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/newgolo/model/event/EventListener$1;-><init>(Lcom/cnlaunch/newgolo/model/event/EventListener;Lcom/cnlaunch/newgolo/model/event/Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method

.method public abstract onReceiveEvent(Lcom/cnlaunch/newgolo/model/event/Event;)V
.end method
