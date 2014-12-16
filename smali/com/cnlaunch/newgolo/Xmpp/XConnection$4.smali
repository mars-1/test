.class Lcom/cnlaunch/newgolo/Xmpp/XConnection$4;
.super Ljava/lang/Object;
.source "XConnection.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/Xmpp/XConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/Xmpp/XConnection;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/Xmpp/XConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$4;->this$0:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter "packet"

    .prologue
    .line 243
    return-void
.end method
