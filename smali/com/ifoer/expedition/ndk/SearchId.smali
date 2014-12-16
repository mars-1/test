.class public Lcom/ifoer/expedition/ndk/SearchId;
.super Ljava/lang/Object;
.source "SearchId.java"


# static fields
.field static instance:Lcom/ifoer/expedition/ndk/SearchId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-object v0, Lcom/ifoer/expedition/ndk/SearchId;->instance:Lcom/ifoer/expedition/ndk/SearchId;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ifoer/expedition/ndk/SearchId;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/ifoer/expedition/ndk/SearchId;->instance:Lcom/ifoer/expedition/ndk/SearchId;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/ifoer/expedition/ndk/SearchId;

    invoke-direct {v0}, Lcom/ifoer/expedition/ndk/SearchId;-><init>()V

    sput-object v0, Lcom/ifoer/expedition/ndk/SearchId;->instance:Lcom/ifoer/expedition/ndk/SearchId;

    .line 9
    :cond_0
    sget-object v0, Lcom/ifoer/expedition/ndk/SearchId;->instance:Lcom/ifoer/expedition/ndk/SearchId;

    return-object v0
.end method


# virtual methods
.method public native getResultWithCalc(S[B)[B
.end method

.method public native getTextFromLib(II)Ljava/lang/String;
.end method

.method public native getTextFromLibByGAGReturnByte(ILjava/lang/String;)[B
.end method

.method public native getTextFromLibReturnByte(II)[B
.end method

.method public native ggpClose()V
.end method

.method public native ggpOpen(Ljava/lang/String;)I
.end method
