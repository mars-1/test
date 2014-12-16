.class public Lorg/jivesoftware/smack/packet/CustomIQ$Type;
.super Ljava/lang/Object;
.source "CustomIQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/CustomIQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final INIT:Lorg/jivesoftware/smack/packet/CustomIQ$Type;

.field public static final SHARE:Lorg/jivesoftware/smack/packet/CustomIQ$Type;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lorg/jivesoftware/smack/packet/CustomIQ$Type;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/CustomIQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/CustomIQ$Type;->INIT:Lorg/jivesoftware/smack/packet/CustomIQ$Type;

    .line 50
    new-instance v0, Lorg/jivesoftware/smack/packet/CustomIQ$Type;

    const-string/jumbo v1, "share"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/CustomIQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/CustomIQ$Type;->SHARE:Lorg/jivesoftware/smack/packet/CustomIQ$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/CustomIQ$Type;->value:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/CustomIQ$Type;
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 59
    if-nez p0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 63
    sget-object v1, Lorg/jivesoftware/smack/packet/CustomIQ$Type;->SHARE:Lorg/jivesoftware/smack/packet/CustomIQ$Type;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/CustomIQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    sget-object v0, Lorg/jivesoftware/smack/packet/CustomIQ$Type;->SHARE:Lorg/jivesoftware/smack/packet/CustomIQ$Type;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/CustomIQ$Type;->value:Ljava/lang/String;

    return-object v0
.end method
