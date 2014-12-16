.class final enum Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;
.super Ljava/lang/Enum;
.source "ImageTouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/golo3/view/ImageTouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DRAG:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

.field public static final enum NONE:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

.field public static final enum ZOOM:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->NONE:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    new-instance v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    const-string/jumbo v1, "DRAG"

    invoke-direct {v0, v1, v3}, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->DRAG:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    new-instance v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    const-string/jumbo v1, "ZOOM"

    invoke-direct {v0, v1, v4}, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->ZOOM:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    sget-object v1, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->NONE:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->DRAG:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->ZOOM:Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->ENUM$VALUES:[Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;->ENUM$VALUES:[Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/golo3/view/ImageTouchView$MODE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
