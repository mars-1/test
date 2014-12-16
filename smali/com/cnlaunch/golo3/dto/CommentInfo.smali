.class public Lcom/cnlaunch/golo3/dto/CommentInfo;
.super Ljava/lang/Object;
.source "CommentInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x478b06106035c2abL


# instance fields
.field private content:Ljava/lang/String;

.field private content_type:Ljava/lang/String;

.field private created:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private to_uid:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private voice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContent_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->content_type:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->image:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTo_uid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->to_uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVoice()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->voice:Ljava/util/List;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->content:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setContent_type(Ljava/lang/String;)V
    .locals 0
    .parameter "content_type"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->content_type:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->created:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->id:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setImage(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, image:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->image:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->title:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setTo_uid(Ljava/lang/String;)V
    .locals 0
    .parameter "to_uid"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->to_uid:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->uid:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setVoice(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, voice:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/CommentInfo;->voice:Ljava/util/List;

    .line 45
    return-void
.end method
