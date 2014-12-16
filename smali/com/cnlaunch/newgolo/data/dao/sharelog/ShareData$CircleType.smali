.class public final enum Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;
.super Ljava/lang/Enum;
.source "ShareData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CircleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CIRCLE_DRIVER:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

.field public static final enum CIRCLE_FRIEND:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

.field public static final enum CIRCLE_KEEP:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

.field public static final enum CIRCLE_LIFE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

.field public static final enum CIRCLE_MESSAGE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

.field public static final enum CIRCLE_PERSONAL:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

.field public static final enum CIRCLE_REPACK:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

.field public static final enum CIRCLE_ROAD:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    const-string/jumbo v1, "CIRCLE_FRIEND"

    const-string/jumbo v2, "0"

    invoke-direct {v0, v1, v4, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_FRIEND:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    .line 152
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    const-string/jumbo v1, "CIRCLE_LIFE"

    const-string/jumbo v2, "1"

    invoke-direct {v0, v1, v5, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_LIFE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    .line 153
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    const-string/jumbo v1, "CIRCLE_ROAD"

    const-string/jumbo v2, "2"

    invoke-direct {v0, v1, v6, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_ROAD:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    .line 154
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    const-string/jumbo v1, "CIRCLE_KEEP"

    const-string/jumbo v2, "3"

    invoke-direct {v0, v1, v7, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_KEEP:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    .line 155
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    const-string/jumbo v1, "CIRCLE_REPACK"

    const-string/jumbo v2, "4"

    invoke-direct {v0, v1, v8, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_REPACK:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    .line 156
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    const-string/jumbo v1, "CIRCLE_DRIVER"

    const/4 v2, 0x5

    const-string/jumbo v3, "5"

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_DRIVER:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    .line 157
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    const-string/jumbo v1, "CIRCLE_PERSONAL"

    const/4 v2, 0x6

    const-string/jumbo v3, "6"

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_PERSONAL:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    .line 158
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    const-string/jumbo v1, "CIRCLE_MESSAGE"

    const/4 v2, 0x7

    const-string/jumbo v3, "7"

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_MESSAGE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    .line 150
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_FRIEND:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_LIFE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_ROAD:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_KEEP:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_REPACK:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_DRIVER:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_PERSONAL:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->CIRCLE_MESSAGE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "tmpValue"

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput-object p3, p0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->value:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;->value:Ljava/lang/String;

    return-object v0
.end method
