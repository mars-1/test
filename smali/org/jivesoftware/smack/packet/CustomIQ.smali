.class public Lorg/jivesoftware/smack/packet/CustomIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "CustomIQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/CustomIQ$Type;
    }
.end annotation


# instance fields
.field public customType:Lorg/jivesoftware/smack/packet/CustomIQ$Type;

.field public shareType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 28
    sget-object v0, Lorg/jivesoftware/smack/packet/CustomIQ$Type;->INIT:Lorg/jivesoftware/smack/packet/CustomIQ$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/CustomIQ;->customType:Lorg/jivesoftware/smack/packet/CustomIQ$Type;

    .line 35
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShareType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/CustomIQ;->shareType:Ljava/lang/String;

    return-object v0
.end method

.method public setShareType(Ljava/lang/String;)V
    .locals 0
    .parameter "shareType"

    .prologue
    .line 40
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/CustomIQ;->shareType:Ljava/lang/String;

    .line 41
    return-void
.end method
