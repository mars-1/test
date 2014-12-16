.class public final enum Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;
.super Ljava/lang/Enum;
.source "DefaultRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

.field public static final enum HORIZONTAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

.field public static final enum VERTICAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;


# instance fields
.field private mAngle:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    new-instance v0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    const-string/jumbo v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->HORIZONTAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    new-instance v0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    const-string/jumbo v1, "VERTICAL"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v4, v2}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->VERTICAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    .line 123
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    sget-object v1, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->HORIZONTAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->VERTICAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->ENUM$VALUES:[Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter "angle"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->mAngle:I

    .line 131
    iput p3, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->mAngle:I

    .line 132
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->ENUM$VALUES:[Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->mAngle:I

    return v0
.end method
