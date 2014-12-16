.class public Lcom/cnlaunch/newgolo/db/RepairCustomer;
.super Ljava/lang/Object;
.source "RepairCustomer.java"


# instance fields
.field private carinfo_id:Ljava/lang/String;

.field private contact_name:Ljava/lang/String;

.field private contact_phone:Ljava/lang/String;

.field private created:Ljava/lang/String;

.field private face:Ljava/lang/String;

.field private face_hd:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isRead:Ljava/lang/Boolean;

.field private is_accept:Ljava/lang/String;

.field private lastTime:Ljava/lang/String;

.field private newMsgCount:Ljava/lang/Integer;

.field private nick_name:Ljava/lang/String;

.field private online_status:Ljava/lang/String;

.field private pub_id:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private reserve_id:Ljava/lang/String;

.field private reserve_time:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private send_id:Ljava/lang/String;

.field private shedule_time:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private sortKey:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->id:Ljava/lang/Long;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "id"
    .parameter "user_id"
    .parameter "user_name"
    .parameter "nick_name"
    .parameter "lastTime"
    .parameter "newMsgCount"
    .parameter "sortKey"
    .parameter "reserve_id"
    .parameter "send_id"
    .parameter "contact_name"
    .parameter "contact_phone"
    .parameter "reserve_time"
    .parameter "shedule_time"
    .parameter "is_accept"
    .parameter "carinfo_id"
    .parameter "created"
    .parameter "pub_id"
    .parameter "remark"
    .parameter "response"
    .parameter "face"
    .parameter "face_hd"
    .parameter "signature"
    .parameter "online_status"
    .parameter "isRead"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->id:Ljava/lang/Long;

    .line 43
    iput-object p2, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->user_id:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->user_name:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->nick_name:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->lastTime:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->newMsgCount:Ljava/lang/Integer;

    .line 48
    iput-object p7, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->sortKey:Ljava/lang/String;

    .line 49
    iput-object p8, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->reserve_id:Ljava/lang/String;

    .line 50
    iput-object p9, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->send_id:Ljava/lang/String;

    .line 51
    iput-object p10, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->contact_name:Ljava/lang/String;

    .line 52
    iput-object p11, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->contact_phone:Ljava/lang/String;

    .line 53
    iput-object p12, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->reserve_time:Ljava/lang/String;

    .line 54
    iput-object p13, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->shedule_time:Ljava/lang/String;

    .line 55
    iput-object p14, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->is_accept:Ljava/lang/String;

    .line 56
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->carinfo_id:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->created:Ljava/lang/String;

    .line 58
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->pub_id:Ljava/lang/String;

    .line 59
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->remark:Ljava/lang/String;

    .line 60
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->response:Ljava/lang/String;

    .line 61
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->face:Ljava/lang/String;

    .line 62
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->face_hd:Ljava/lang/String;

    .line 63
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->signature:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->online_status:Ljava/lang/String;

    .line 65
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->isRead:Ljava/lang/Boolean;

    .line 66
    return-void
.end method


# virtual methods
.method public getCarinfo_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->carinfo_id:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->contact_name:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_phone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->contact_phone:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getFace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->face:Ljava/lang/String;

    return-object v0
.end method

.method public getFace_hd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->face_hd:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->isRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIs_accept()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->is_accept:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public getNewMsgCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->newMsgCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->online_status:Ljava/lang/String;

    return-object v0
.end method

.method public getPub_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->pub_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getReserve_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->reserve_id:Ljava/lang/String;

    return-object v0
.end method

.method public getReserve_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->reserve_time:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getSend_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->send_id:Ljava/lang/String;

    return-object v0
.end method

.method public getShedule_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->shedule_time:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public setCarinfo_id(Ljava/lang/String;)V
    .locals 0
    .parameter "carinfo_id"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->carinfo_id:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setContact_name(Ljava/lang/String;)V
    .locals 0
    .parameter "contact_name"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->contact_name:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setContact_phone(Ljava/lang/String;)V
    .locals 0
    .parameter "contact_phone"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->contact_phone:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->created:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setFace(Ljava/lang/String;)V
    .locals 0
    .parameter "face"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->face:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setFace_hd(Ljava/lang/String;)V
    .locals 0
    .parameter "face_hd"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->face_hd:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->id:Ljava/lang/Long;

    .line 74
    return-void
.end method

.method public setIsRead(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isRead"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->isRead:Ljava/lang/Boolean;

    .line 258
    return-void
.end method

.method public setIs_accept(Ljava/lang/String;)V
    .locals 0
    .parameter "is_accept"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->is_accept:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setLastTime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastTime"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->lastTime:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setNewMsgCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "newMsgCount"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->newMsgCount:Ljava/lang/Integer;

    .line 114
    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0
    .parameter "nick_name"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->nick_name:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setOnline_status(Ljava/lang/String;)V
    .locals 0
    .parameter "online_status"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->online_status:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setPub_id(Ljava/lang/String;)V
    .locals 0
    .parameter "pub_id"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->pub_id:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .parameter "remark"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->remark:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setReserve_id(Ljava/lang/String;)V
    .locals 0
    .parameter "reserve_id"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->reserve_id:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setReserve_time(Ljava/lang/String;)V
    .locals 0
    .parameter "reserve_time"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->reserve_time:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->response:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setSend_id(Ljava/lang/String;)V
    .locals 0
    .parameter "send_id"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->send_id:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setShedule_time(Ljava/lang/String;)V
    .locals 0
    .parameter "shedule_time"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->shedule_time:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->signature:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0
    .parameter "sortKey"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->sortKey:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .parameter "user_id"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->user_id:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0
    .parameter "user_name"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RepairCustomer;->user_name:Ljava/lang/String;

    .line 90
    return-void
.end method
