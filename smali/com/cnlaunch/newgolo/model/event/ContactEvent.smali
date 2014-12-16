.class public Lcom/cnlaunch/newgolo/model/event/ContactEvent;
.super Lcom/cnlaunch/newgolo/model/event/Event;
.source "ContactEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;,
        Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;
    }
.end annotation


# instance fields
.field private code:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field private data:Ljava/lang/Object;

.field private result:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/model/event/Event;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/cnlaunch/newgolo/model/event/ContactEvent;->code:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 42
    return-void
.end method


# virtual methods
.method public getCode()Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/event/ContactEvent;->code:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/event/ContactEvent;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/event/ContactEvent;->result:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cnlaunch/newgolo/model/event/ContactEvent;->data:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public setResult(Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cnlaunch/newgolo/model/event/ContactEvent;->result:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Result;

    .line 67
    return-void
.end method
