.class public Lcom/cnlaunch/newgolo/db/FollowedCustomer;
.super Ljava/lang/Object;
.source "FollowedCustomer.java"


# instance fields
.field private face_thumb:Ljava/lang/String;

.field private face_url:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private lastTime:Ljava/lang/String;

.field private newMsgCount:Ljava/lang/Integer;

.field private nick_name:Ljava/lang/String;

.field private sortKey:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->id:Ljava/lang/Long;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "user_id"
    .parameter "user_name"
    .parameter "nick_name"
    .parameter "lastTime"
    .parameter "newMsgCount"
    .parameter "sortKey"
    .parameter "face_url"
    .parameter "face_thumb"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->id:Ljava/lang/Long;

    .line 28
    iput-object p2, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->user_id:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->user_name:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->nick_name:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->lastTime:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->newMsgCount:Ljava/lang/Integer;

    .line 33
    iput-object p7, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->sortKey:Ljava/lang/String;

    .line 34
    iput-object p8, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->face_url:Ljava/lang/String;

    .line 35
    iput-object p9, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->face_thumb:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getFace_thumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->face_thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getFace_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->face_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public getNewMsgCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->newMsgCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public setFace_thumb(Ljava/lang/String;)V
    .locals 0
    .parameter "face_thumb"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->face_thumb:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setFace_url(Ljava/lang/String;)V
    .locals 0
    .parameter "face_url"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->face_url:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->id:Ljava/lang/Long;

    .line 44
    return-void
.end method

.method public setLastTime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastTime"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->lastTime:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setNewMsgCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "newMsgCount"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->newMsgCount:Ljava/lang/Integer;

    .line 84
    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0
    .parameter "nick_name"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->nick_name:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0
    .parameter "sortKey"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->sortKey:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .parameter "user_id"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->user_id:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0
    .parameter "user_name"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->user_name:Ljava/lang/String;

    .line 60
    return-void
.end method
