.class final enum Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;
.super Ljava/lang/Enum;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SlideState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANCHORED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

.field public static final enum COLLAPSED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

.field public static final enum EXPANDED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    new-instance v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    const-string/jumbo v1, "EXPANDED"

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    new-instance v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    const-string/jumbo v1, "COLLAPSED"

    invoke-direct {v0, v1, v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    new-instance v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    const-string/jumbo v1, "ANCHORED"

    invoke-direct {v0, v1, v4}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->ENUM$VALUES:[Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->ENUM$VALUES:[Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
