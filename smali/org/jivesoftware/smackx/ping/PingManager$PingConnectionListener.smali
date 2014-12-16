.class Lorg/jivesoftware/smackx/ping/PingManager$PingConnectionListener;
.super Lorg/jivesoftware/smack/AbstractConnectionListener;
.source "PingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/ping/PingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/ping/PingManager;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/ping/PingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lorg/jivesoftware/smackx/ping/PingManager$PingConnectionListener;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/AbstractConnectionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/ping/PingManager;Lorg/jivesoftware/smackx/ping/PingManager$PingConnectionListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/ping/PingManager$PingConnectionListener;-><init>(Lorg/jivesoftware/smackx/ping/PingManager;)V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager$PingConnectionListener;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    #calls: Lorg/jivesoftware/smackx/ping/PingManager;->maybeStopPingServerTask()V
    invoke-static {v0}, Lorg/jivesoftware/smackx/ping/PingManager;->access$1(Lorg/jivesoftware/smackx/ping/PingManager;)V

    .line 279
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 283
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager$PingConnectionListener;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    #calls: Lorg/jivesoftware/smackx/ping/PingManager;->maybeStopPingServerTask()V
    invoke-static {v0}, Lorg/jivesoftware/smackx/ping/PingManager;->access$1(Lorg/jivesoftware/smackx/ping/PingManager;)V

    .line 284
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager$PingConnectionListener;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    #calls: Lorg/jivesoftware/smackx/ping/PingManager;->maybeStartPingServerTask()V
    invoke-static {v0}, Lorg/jivesoftware/smackx/ping/PingManager;->access$2(Lorg/jivesoftware/smackx/ping/PingManager;)V

    .line 289
    return-void
.end method
