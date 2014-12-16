.class public Lorg/jivesoftware/smackx/packet/DeliveryReceiptRequest;
.super Ljava/lang/Object;
.source "DeliveryReceiptRequest.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "request"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "urn:xmpp:receipts"

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "<request xmlns=\'urn:xmpp:receipts\'/>"

    return-object v0
.end method
