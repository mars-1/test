.class public Lorg/jivesoftware/smack/Connection$InterceptorWrapper;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InterceptorWrapper"
.end annotation


# instance fields
.field private packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 0
    .parameter "packetInterceptor"
    .parameter "packetFilter"

    .prologue
    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    iput-object p1, p0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;

    .line 856
    iput-object p2, p0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 857
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    const/4 v0, 0x0

    .line 860
    if-nez p1, :cond_1

    .line 870
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 863
    .restart local p1
    :cond_1
    instance-of v1, p1, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;

    if-eqz v1, :cond_2

    .line 864
    check-cast p1, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;

    .end local p1
    iget-object v0, p1, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;

    .line 865
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 867
    .restart local p1
    :cond_2
    instance-of v1, p1, Lorg/jivesoftware/smack/PacketInterceptor;

    if-eqz v1, :cond_0

    .line 868
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 879
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 880
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/PacketInterceptor;->interceptPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 882
    :cond_1
    return-void
.end method
