.class public Lcom/cnlaunch/newgolo/model/event/XmppEvent;
.super Lcom/cnlaunch/newgolo/model/event/Event;
.source "XmppEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;
    }
.end annotation


# instance fields
.field private code:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

.field private packet:Lorg/jivesoftware/smack/packet/Packet;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/model/event/Event;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/cnlaunch/newgolo/model/event/XmppEvent;->code:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    .line 30
    return-void
.end method


# virtual methods
.method public getCode()Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/event/XmppEvent;->code:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    return-object v0
.end method

.method public getPacket()Lorg/jivesoftware/smack/packet/Packet;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/event/XmppEvent;->packet:Lorg/jivesoftware/smack/packet/Packet;

    return-object v0
.end method

.method public setPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter "packet"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cnlaunch/newgolo/model/event/XmppEvent;->packet:Lorg/jivesoftware/smack/packet/Packet;

    .line 45
    return-void
.end method
