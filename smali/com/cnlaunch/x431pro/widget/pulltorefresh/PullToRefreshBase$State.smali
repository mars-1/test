.class public final enum Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum MANUAL_REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum OVERSCROLLING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum PULL_TO_REFRESH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum RELEASE_TO_REFRESH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum RESET:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;


# instance fields
.field private mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1527
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    const-string/jumbo v1, "RESET"

    .line 1531
    invoke-direct {v0, v1, v4, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    .line 1533
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    const-string/jumbo v1, "PULL_TO_REFRESH"

    .line 1537
    invoke-direct {v0, v1, v5, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    .line 1539
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    const-string/jumbo v1, "RELEASE_TO_REFRESH"

    .line 1543
    invoke-direct {v0, v1, v6, v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    .line 1545
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    const-string/jumbo v1, "REFRESHING"

    .line 1548
    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    .line 1550
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    const-string/jumbo v1, "MANUAL_REFRESHING"

    .line 1554
    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    .line 1556
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    const-string/jumbo v1, "OVERSCROLLING"

    const/4 v2, 0x5

    .line 1560
    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    .line 1525
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->ENUM$VALUES:[Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "intValue"

    .prologue
    .line 1581
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1582
    iput p3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->mIntValue:I

    .line 1583
    return-void
.end method

.method static mapIntToValue(I)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 5
    .parameter "stateInt"

    .prologue
    .line 1569
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->values()[Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 1576
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    :cond_0
    return-object v0

    .line 1569
    :cond_1
    aget-object v0, v2, v1

    .line 1570
    .local v0, value:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;"
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->getIntValue()I

    move-result v4

    if-eq p0, v4, :cond_0

    .line 1569
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->ENUM$VALUES:[Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method getIntValue()I
    .locals 1

    .prologue
    .line 1586
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->mIntValue:I

    return v0
.end method
