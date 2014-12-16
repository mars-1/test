.class public abstract Lcom/cnlaunch/newgolo/model/event/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/model/event/EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getEventListeners()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/event/Event;->listeners:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public sendToTarget()V
    .locals 3

    .prologue
    .line 19
    iget-object v1, p0, Lcom/cnlaunch/newgolo/model/event/Event;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    return-void

    .line 19
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/event/EventListener;

    .line 20
    .local v0, listener:Lcom/cnlaunch/newgolo/model/event/EventListener;
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, p0}, Lcom/cnlaunch/newgolo/model/event/EventListener;->dispatchEvent(Lcom/cnlaunch/newgolo/model/event/Event;)V

    goto :goto_0
.end method
