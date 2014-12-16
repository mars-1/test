.class public Lcom/cnlaunch/golo3/image/MessageObj;
.super Ljava/lang/Object;
.source "MessageObj.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x28a778bf9d481d29L


# instance fields
.field private Size:I

.field private filePath:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private thumb:Ljava/lang/String;

.field private thumbPath:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/golo3/image/MessageObj;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/golo3/image/MessageObj;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cnlaunch/golo3/image/MessageObj;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/cnlaunch/golo3/image/MessageObj;->Size:I

    return v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/golo3/image/MessageObj;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/golo3/image/MessageObj;->thumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/cnlaunch/golo3/image/MessageObj;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cnlaunch/golo3/image/MessageObj;->filePath:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cnlaunch/golo3/image/MessageObj;->id:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/cnlaunch/golo3/image/MessageObj;->position:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 46
    iput p1, p0, Lcom/cnlaunch/golo3/image/MessageObj;->Size:I

    .line 47
    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cnlaunch/golo3/image/MessageObj;->thumb:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbPath"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cnlaunch/golo3/image/MessageObj;->thumbPath:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/cnlaunch/golo3/image/MessageObj;->uri:Ljava/lang/String;

    .line 15
    return-void
.end method
