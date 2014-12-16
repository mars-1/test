.class public Lcom/cnlaunch/newgolo/db/RegisteredCustomer;
.super Ljava/lang/Object;
.source "RegisteredCustomer.java"


# instance fields
.field private auto_code:Ljava/lang/String;

.field private auto_logos:Ljava/lang/String;

.field private bunding_id:Ljava/lang/String;

.field private face:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private if_pass:Ljava/lang/String;

.field private isRead:Ljava/lang/Boolean;

.field private lastTime:Ljava/lang/String;

.field private mine_car_plate_num:Ljava/lang/String;

.field private newMsgCount:Ljava/lang/Integer;

.field private nick_name:Ljava/lang/String;

.field private online_status:Ljava/lang/String;

.field private serial_no:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private sortKey:Ljava/lang/String;

.field private unReadTipCount:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->id:Ljava/lang/Long;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "id"
    .parameter "user_id"
    .parameter "user_name"
    .parameter "nick_name"
    .parameter "lastTime"
    .parameter "newMsgCount"
    .parameter "sortKey"
    .parameter "bunding_id"
    .parameter "serial_no"
    .parameter "mine_car_plate_num"
    .parameter "if_pass"
    .parameter "auto_logos"
    .parameter "auto_code"
    .parameter "unReadTipCount"
    .parameter "face"
    .parameter "signature"
    .parameter "online_status"
    .parameter "isRead"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->id:Ljava/lang/Long;

    .line 37
    iput-object p2, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->user_id:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->user_name:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->nick_name:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->lastTime:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->newMsgCount:Ljava/lang/Integer;

    .line 42
    iput-object p7, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->sortKey:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->bunding_id:Ljava/lang/String;

    .line 44
    iput-object p9, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->serial_no:Ljava/lang/String;

    .line 45
    iput-object p10, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->mine_car_plate_num:Ljava/lang/String;

    .line 46
    iput-object p11, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->if_pass:Ljava/lang/String;

    .line 47
    iput-object p12, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->auto_logos:Ljava/lang/String;

    .line 48
    iput-object p13, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->auto_code:Ljava/lang/String;

    .line 49
    iput-object p14, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->unReadTipCount:Ljava/lang/String;

    .line 50
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->face:Ljava/lang/String;

    .line 51
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->signature:Ljava/lang/String;

    .line 52
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->online_status:Ljava/lang/String;

    .line 53
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->isRead:Ljava/lang/Boolean;

    .line 54
    return-void
.end method


# virtual methods
.method public getAuto_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->auto_code:Ljava/lang/String;

    return-object v0
.end method

.method public getAuto_logos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->auto_logos:Ljava/lang/String;

    return-object v0
.end method

.method public getBunding_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->bunding_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->face:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIf_pass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->if_pass:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->isRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMine_car_plate_num()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->mine_car_plate_num:Ljava/lang/String;

    return-object v0
.end method

.method public getNewMsgCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->newMsgCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->online_status:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->serial_no:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUnReadTipCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->unReadTipCount:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAuto_code(Ljava/lang/String;)V
    .locals 0
    .parameter "auto_code"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->auto_code:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setAuto_logos(Ljava/lang/String;)V
    .locals 0
    .parameter "auto_logos"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->auto_logos:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setBunding_id(Ljava/lang/String;)V
    .locals 0
    .parameter "bunding_id"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->bunding_id:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setFace(Ljava/lang/String;)V
    .locals 0
    .parameter "face"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->face:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->id:Ljava/lang/Long;

    .line 62
    return-void
.end method

.method public setIf_pass(Ljava/lang/String;)V
    .locals 0
    .parameter "if_pass"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->if_pass:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setIsRead(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isRead"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->isRead:Ljava/lang/Boolean;

    .line 198
    return-void
.end method

.method public setLastTime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastTime"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->lastTime:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setMine_car_plate_num(Ljava/lang/String;)V
    .locals 0
    .parameter "mine_car_plate_num"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->mine_car_plate_num:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setNewMsgCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "newMsgCount"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->newMsgCount:Ljava/lang/Integer;

    .line 102
    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0
    .parameter "nick_name"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->nick_name:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setOnline_status(Ljava/lang/String;)V
    .locals 0
    .parameter "online_status"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->online_status:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setSerial_no(Ljava/lang/String;)V
    .locals 0
    .parameter "serial_no"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->serial_no:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->signature:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0
    .parameter "sortKey"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->sortKey:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setUnReadTipCount(Ljava/lang/String;)V
    .locals 0
    .parameter "unReadTipCount"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->unReadTipCount:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .parameter "user_id"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->user_id:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0
    .parameter "user_name"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->user_name:Ljava/lang/String;

    .line 78
    return-void
.end method
