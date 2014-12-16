.class Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;
.super Ljava/lang/Object;
.source "AndroidConnectionConfiguration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->AndroidInit(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsSrvLookupRunnable"
.end annotation


# instance fields
.field volatile address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

.field serviceName:Ljava/lang/String;

.field final synthetic this$0:Lorg/jivesoftware/smack/AndroidConnectionConfiguration;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/AndroidConnectionConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "serviceName"

    .prologue
    .line 78
    iput-object p1, p0, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;->this$0:Lorg/jivesoftware/smack/AndroidConnectionConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;->serviceName:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public getHostAddress()Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;->address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;->serviceName:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveXMPPDomain(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;->address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    .line 86
    return-void
.end method
