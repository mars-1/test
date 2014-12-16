.class Lcom/cnlaunch/newgolo/model/ChatRoom$1;
.super Ljava/lang/Object;
.source "ChatRoom.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/model/ChatRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/cnlaunch/newgolo/model/ChatRoom;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cnlaunch/newgolo/model/ChatRoom;
    .locals 2
    .parameter "parcel"

    .prologue
    .line 89
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatRoom;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;-><init>(Landroid/os/Parcel;Lcom/cnlaunch/newgolo/model/ChatRoom;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/model/ChatRoom$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/cnlaunch/newgolo/model/ChatRoom;
    .locals 1
    .parameter "i"

    .prologue
    .line 94
    new-array v0, p1, [Lcom/cnlaunch/newgolo/model/ChatRoom;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/model/ChatRoom$1;->newArray(I)[Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v0

    return-object v0
.end method
