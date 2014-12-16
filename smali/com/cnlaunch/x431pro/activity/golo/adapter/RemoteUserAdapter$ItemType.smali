.class final enum Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;
.super Ljava/lang/Enum;
.source "RemoteUserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

.field public static final enum remote:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

.field public static final enum remote_title:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

.field public static final enum repair:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

.field public static final enum repair_title:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    const-string/jumbo v1, "remote"

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->remote:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    const-string/jumbo v1, "remote_title"

    invoke-direct {v0, v1, v3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->remote_title:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    const-string/jumbo v1, "repair"

    invoke-direct {v0, v1, v4}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->repair:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    const-string/jumbo v1, "repair_title"

    invoke-direct {v0, v1, v5}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->repair_title:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    .line 296
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    sget-object v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->remote:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->remote_title:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->repair:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->repair_title:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->ENUM$VALUES:[Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;->ENUM$VALUES:[Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter$ItemType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
