.class public Lcom/cnlaunch/newgolo/db/RemoteCustomer;
.super Ljava/lang/Object;
.source "RemoteCustomer.java"


# instance fields
.field private auto_code:Ljava/lang/String;

.field private auto_logos:Ljava/lang/String;

.field private car_id:Ljava/lang/String;

.field private created:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private face_thumb:Ljava/lang/String;

.field private face_url:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isRead:Ljava/lang/Boolean;

.field private lastTime:Ljava/lang/String;

.field private mine_car_plate_num:Ljava/lang/String;

.field private newMsgCount:Ljava/lang/Integer;

.field private nick_name:Ljava/lang/String;

.field private online_status:Ljava/lang/String;

.field private request_id:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private sortKey:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->id:Ljava/lang/Long;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "id"
    .parameter "user_id"
    .parameter "user_name"
    .parameter "nick_name"
    .parameter "lastTime"
    .parameter "newMsgCount"
    .parameter "sortKey"
    .parameter "request_id"
    .parameter "car_id"
    .parameter "description"
    .parameter "status"
    .parameter "created"
    .parameter "auto_code"
    .parameter "mine_car_plate_num"
    .parameter "face_url"
    .parameter "face_thumb"
    .parameter "auto_logos"
    .parameter "signature"
    .parameter "online_status"
    .parameter "isRead"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->id:Ljava/lang/Long;

    .line 39
    iput-object p2, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->user_id:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->user_name:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->nick_name:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->lastTime:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->newMsgCount:Ljava/lang/Integer;

    .line 44
    iput-object p7, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->sortKey:Ljava/lang/String;

    .line 45
    iput-object p8, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->request_id:Ljava/lang/String;

    .line 46
    iput-object p9, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->car_id:Ljava/lang/String;

    .line 47
    iput-object p10, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->description:Ljava/lang/String;

    .line 48
    iput-object p11, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->status:Ljava/lang/String;

    .line 49
    iput-object p12, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->created:Ljava/lang/String;

    .line 50
    iput-object p13, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->auto_code:Ljava/lang/String;

    .line 51
    iput-object p14, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->mine_car_plate_num:Ljava/lang/String;

    .line 52
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->face_url:Ljava/lang/String;

    .line 53
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->face_thumb:Ljava/lang/String;

    .line 54
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->auto_logos:Ljava/lang/String;

    .line 55
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->signature:Ljava/lang/String;

    .line 56
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->online_status:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->isRead:Ljava/lang/Boolean;

    .line 58
    return-void
.end method


# virtual methods
.method public getAuto_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->auto_code:Ljava/lang/String;

    return-object v0
.end method

.method public getAuto_logos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->auto_logos:Ljava/lang/String;

    return-object v0
.end method

.method public getCar_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->car_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFace_thumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->face_thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getFace_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->face_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->isRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMine_car_plate_num()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->mine_car_plate_num:Ljava/lang/String;

    return-object v0
.end method

.method public getNewMsgCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->newMsgCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->online_status:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->request_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAuto_code(Ljava/lang/String;)V
    .locals 0
    .parameter "auto_code"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->auto_code:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setAuto_logos(Ljava/lang/String;)V
    .locals 0
    .parameter "auto_logos"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->auto_logos:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setCar_id(Ljava/lang/String;)V
    .locals 0
    .parameter "car_id"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->car_id:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->created:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->description:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setFace_thumb(Ljava/lang/String;)V
    .locals 0
    .parameter "face_thumb"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->face_thumb:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setFace_url(Ljava/lang/String;)V
    .locals 0
    .parameter "face_url"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->face_url:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->id:Ljava/lang/Long;

    .line 66
    return-void
.end method

.method public setIsRead(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isRead"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->isRead:Ljava/lang/Boolean;

    .line 218
    return-void
.end method

.method public setLastTime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastTime"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->lastTime:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setMine_car_plate_num(Ljava/lang/String;)V
    .locals 0
    .parameter "mine_car_plate_num"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->mine_car_plate_num:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setNewMsgCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "newMsgCount"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->newMsgCount:Ljava/lang/Integer;

    .line 106
    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0
    .parameter "nick_name"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->nick_name:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setOnline_status(Ljava/lang/String;)V
    .locals 0
    .parameter "online_status"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->online_status:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setRequest_id(Ljava/lang/String;)V
    .locals 0
    .parameter "request_id"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->request_id:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->signature:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0
    .parameter "sortKey"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->sortKey:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->status:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .parameter "user_id"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->user_id:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0
    .parameter "user_name"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->user_name:Ljava/lang/String;

    .line 82
    return-void
.end method
