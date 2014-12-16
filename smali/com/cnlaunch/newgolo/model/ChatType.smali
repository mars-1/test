.class public final enum Lcom/cnlaunch/newgolo/model/ChatType;
.super Ljava/lang/Enum;
.source "ChatType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/newgolo/model/ChatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/ChatType;

.field public static final enum group:Lcom/cnlaunch/newgolo/model/ChatType;

.field public static final enum single:Lcom/cnlaunch/newgolo/model/ChatType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatType;

    const-string/jumbo v1, "single"

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatType;

    const-string/jumbo v1, "group"

    invoke-direct {v0, v1, v3}, Lcom/cnlaunch/newgolo/model/ChatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatType;->group:Lcom/cnlaunch/newgolo/model/ChatType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cnlaunch/newgolo/model/ChatType;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatType;->group:Lcom/cnlaunch/newgolo/model/ChatType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatType;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/ChatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/newgolo/model/ChatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatType;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/newgolo/model/ChatType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatType;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/ChatType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/newgolo/model/ChatType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
