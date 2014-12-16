.class public Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;
.super Ljava/lang/Object;
.source "OrderMontage.java"


# static fields
.field private static commandWord:Ljava/lang/String; = null

.field private static counter:Ljava/lang/String; = null

.field private static dataArea:Ljava/lang/String; = null

.field private static packLengths:Ljava/lang/String; = null

.field private static packVerify:Ljava/lang/String; = null

.field private static final source:Ljava/lang/String; = "F8"

.field private static final startCode:Ljava/lang/String; = "55aa"

.field private static final target:Ljava/lang/String; = "F0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->counter:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->packLengths:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->commandWord:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->dataArea:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->packVerify:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smartBox2701([BLjava/lang/String;)[B
    .locals 9
    .parameter "param"
    .parameter "comWord"

    .prologue
    .line 44
    const/4 v7, 0x0

    .line 45
    .local v7, o2701:[B
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, counters:Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    sput-object v6, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->counter:Ljava/lang/String;

    .line 50
    sput-object p1, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->commandWord:Ljava/lang/String;

    .line 51
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->dataArea:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->counter:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->packLengths:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "F0"

    const-string/jumbo v1, "F8"

    sget-object v2, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->packLengths:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->counter:Ljava/lang/String;

    .line 54
    sget-object v4, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->commandWord:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->dataArea:Ljava/lang/String;

    .line 53
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->packVerify:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "55aaF0F8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->packLengths:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->counter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->commandWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->dataArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->packVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, order:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 58
    return-object v7

    .line 47
    .end local v8           #order:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->RandomMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
