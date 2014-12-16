.class public Lcom/cnlaunch/newgolo/model/ChatRoom;
.super Ljava/lang/Object;
.source "ChatRoom.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cnlaunch/newgolo/model/ChatRoom;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTR_CHATROOM:Ljava/lang/String; = "chatroom"

.field public static final ID_CHEYUNDIAGNOSE:Ljava/lang/String; = "666888"

.field public static final ID_CHEYUNTEAM:Ljava/lang/String; = "666666"

.field public static final TAG:Ljava/lang/String; = "ChatRoom"


# instance fields
.field public customer_type:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field public publicGroupId:J

.field public publicGroupName:Ljava/lang/String;

.field public request_id:Ljava/lang/String;

.field private type:Lcom/cnlaunch/newgolo/model/ChatType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatRoom$1;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/model/ChatRoom$1;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatRoom;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->id:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->name:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/newgolo/model/ChatType;->valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatType;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->type:Lcom/cnlaunch/newgolo/model/ChatType;

    .line 68
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->mUserId:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->request_id:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->customer_type:Ljava/lang/String;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cnlaunch/newgolo/model/ChatRoom;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/model/ChatRoom;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ChatType;)V
    .locals 1
    .parameter "id"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->id:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->name:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->type:Lcom/cnlaunch/newgolo/model/ChatType;

    .line 30
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->mUserId:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public createMessage(I)Lcom/cnlaunch/newgolo/model/ChatMessage;
    .locals 3
    .parameter "msgType"

    .prologue
    .line 50
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;-><init>()V

    .line 51
    .local v0, message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->type:Lcom/cnlaunch/newgolo/model/ChatType;

    iput-object v1, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomType:Lcom/cnlaunch/newgolo/model/ChatType;

    .line 53
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    .line 54
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->init:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    iput-object v1, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    .line 55
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->read:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    iput-object v1, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->flag:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    .line 58
    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setType(I)V

    .line 59
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/cnlaunch/newgolo/model/ChatType;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->type:Lcom/cnlaunch/newgolo/model/ChatType;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->type:Lcom/cnlaunch/newgolo/model/ChatType;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-wide v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->request_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatRoom;->customer_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method
