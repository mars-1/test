.class public Lorg/vudroid/core/events/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# instance fields
.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/vudroid/core/events/EventDispatcher;->listeners:Ljava/util/ArrayList;

    .line 5
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/Object;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 17
    iget-object v0, p0, Lorg/vudroid/core/events/EventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public dispatch(Lorg/vudroid/core/events/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 11
    iget-object v1, p0, Lorg/vudroid/core/events/EventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    return-void

    .line 11
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12
    .local v0, listener:Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/vudroid/core/events/Event;->dispatchOn(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeEventListener(Ljava/lang/Object;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 21
    iget-object v0, p0, Lorg/vudroid/core/events/EventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method
