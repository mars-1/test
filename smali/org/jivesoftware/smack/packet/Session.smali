.class public Lorg/jivesoftware/smack/packet/Session;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Session.java"


# instance fields
.field private stamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/jivesoftware/smack/packet/Session;->stamp:J

    .line 42
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Session;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 43
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "stamp"

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 46
    iput-wide p1, p0, Lorg/jivesoftware/smack/packet/Session;->stamp:J

    .line 47
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Session;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/jivesoftware/smack/packet/Session;->stamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v0, "<session xmlns=\"urn:ietf:params:xml:ns:xmpp-session\" stamp=\"%s\"/>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/jivesoftware/smack/packet/Session;->stamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "<session xmlns=\"urn:ietf:params:xml:ns:xmpp-session\"/>"

    goto :goto_0
.end method
