.class Lorg/jivesoftware/smack/BOSHConnection$ListenerNotification;
.super Ljava/lang/Object;
.source "BOSHConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/BOSHConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerNotification"
.end annotation


# instance fields
.field private packet:Lorg/jivesoftware/smack/packet/Packet;

.field final synthetic this$0:Lorg/jivesoftware/smack/BOSHConnection;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter
    .parameter "packet"

    .prologue
    .line 760
    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConnection$ListenerNotification;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput-object p2, p0, Lorg/jivesoftware/smack/BOSHConnection$ListenerNotification;->packet:Lorg/jivesoftware/smack/packet/Packet;

    .line 762
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 765
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection$ListenerNotification;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v1, v1, Lorg/jivesoftware/smack/BOSHConnection;->recvListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 768
    return-void

    .line 765
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    .line 766
    .local v0, listenerWrapper:Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$ListenerNotification;->packet:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method
