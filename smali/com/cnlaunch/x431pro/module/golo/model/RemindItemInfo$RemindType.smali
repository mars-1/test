.class public final enum Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;
.super Ljava/lang/Enum;
.source "RemindItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemindType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DETAIL:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

.field public static final enum HISTORY:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

.field public static final enum REMOTE:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

.field public static final enum REPAIR:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    const-string/jumbo v1, "HISTORY"

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->HISTORY:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    .line 53
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    const-string/jumbo v1, "DETAIL"

    invoke-direct {v0, v1, v3}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->DETAIL:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    .line 54
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    const-string/jumbo v1, "REMOTE"

    invoke-direct {v0, v1, v4}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->REMOTE:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    .line 55
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    const-string/jumbo v1, "REPAIR"

    invoke-direct {v0, v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->REPAIR:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    sget-object v1, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->HISTORY:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->DETAIL:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->REMOTE:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->REPAIR:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->ENUM$VALUES:[Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->ENUM$VALUES:[Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
