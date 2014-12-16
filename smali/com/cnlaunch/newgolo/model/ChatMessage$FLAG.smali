.class public final enum Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;
.super Ljava/lang/Enum;
.source "ChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/model/ChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FLAG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

.field public static final enum read:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

.field public static final enum unread:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    const-string/jumbo v1, "read"

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->read:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    const-string/jumbo v1, "unread"

    invoke-direct {v0, v1, v3}, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->unread:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->read:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->unread:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
