.class public Lcom/cnlaunch/newgolo/manager/EventListensers;
.super Ljava/lang/Object;
.source "EventListensers.java"


# static fields
.field private static eventListeners:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/manager/EventListensers;->eventListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEventListener(Lcom/cnlaunch/newgolo/model/event/EventListener;)V
    .locals 1
    .parameter "eventListener"

    .prologue
    .line 17
    sget-object v0, Lcom/cnlaunch/newgolo/manager/EventListensers;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public static getEventListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/model/event/EventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    sget-object v0, Lcom/cnlaunch/newgolo/manager/EventListensers;->eventListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static removeEventListener(Lcom/cnlaunch/newgolo/model/event/EventListener;)V
    .locals 1
    .parameter "eventListener"

    .prologue
    .line 22
    sget-object v0, Lcom/cnlaunch/newgolo/manager/EventListensers;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method
