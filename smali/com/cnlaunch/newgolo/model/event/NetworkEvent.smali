.class public Lcom/cnlaunch/newgolo/model/event/NetworkEvent;
.super Ljava/lang/Object;
.source "NetworkEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/model/event/NetworkEvent$Code;,
        Lcom/cnlaunch/newgolo/model/event/NetworkEvent$Type;
    }
.end annotation


# instance fields
.field private code:Lcom/cnlaunch/newgolo/model/event/NetworkEvent$Code;

.field private type:Lcom/cnlaunch/newgolo/model/event/NetworkEvent$Type;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/model/event/NetworkEvent$Code;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/cnlaunch/newgolo/model/event/NetworkEvent;->code:Lcom/cnlaunch/newgolo/model/event/NetworkEvent$Code;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/event/NetworkEvent;->code:Lcom/cnlaunch/newgolo/model/event/NetworkEvent$Code;

    .line 28
    return-void
.end method


# virtual methods
.method public getCode()Lcom/cnlaunch/newgolo/model/event/NetworkEvent$Code;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/event/NetworkEvent;->code:Lcom/cnlaunch/newgolo/model/event/NetworkEvent$Code;

    return-object v0
.end method

.method public getType()Lcom/cnlaunch/newgolo/model/event/NetworkEvent$Type;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/event/NetworkEvent;->type:Lcom/cnlaunch/newgolo/model/event/NetworkEvent$Type;

    return-object v0
.end method

.method public setType(Lcom/cnlaunch/newgolo/model/event/NetworkEvent$Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cnlaunch/newgolo/model/event/NetworkEvent;->type:Lcom/cnlaunch/newgolo/model/event/NetworkEvent$Type;

    .line 43
    return-void
.end method
