.class public final enum Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;
.super Ljava/lang/Enum;
.source "ContactEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/model/event/ContactEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

.field public static final enum failed:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

.field public static final enum successfully:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    const-string/jumbo v1, "successfully"

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;->successfully:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    .line 32
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    const-string/jumbo v1, "failed"

    invoke-direct {v0, v1, v3}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;->failed:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    sget-object v1, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;->successfully:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;->failed:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
