.class Lcom/cnlaunch/newgolo/model/event/EventListener$1;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/model/event/EventListener;->dispatchEvent(Lcom/cnlaunch/newgolo/model/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/model/event/EventListener;

.field private final synthetic val$event:Lcom/cnlaunch/newgolo/model/event/Event;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/model/event/EventListener;Lcom/cnlaunch/newgolo/model/event/Event;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/model/event/EventListener$1;->this$0:Lcom/cnlaunch/newgolo/model/event/EventListener;

    iput-object p2, p0, Lcom/cnlaunch/newgolo/model/event/EventListener$1;->val$event:Lcom/cnlaunch/newgolo/model/event/Event;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/event/EventListener$1;->this$0:Lcom/cnlaunch/newgolo/model/event/EventListener;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/model/event/EventListener$1;->val$event:Lcom/cnlaunch/newgolo/model/event/Event;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/event/EventListener;->onReceiveEvent(Lcom/cnlaunch/newgolo/model/event/Event;)V

    .line 26
    return-void
.end method
