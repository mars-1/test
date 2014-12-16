.class public Lcom/cnlaunch/newgolo/model/ChatMessage;
.super Ljava/lang/Object;
.source "ChatMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;,
        Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cnlaunch/newgolo/model/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUB_TYPE_DIAG_ACCEPT:I = 0x1

.field public static final SUB_TYPE_DIAG_FAIL:I = 0x5

.field public static final SUB_TYPE_DIAG_REFUSE:I = 0x2

.field public static final SUB_TYPE_DIAG_REQUEST:I = 0x0

.field public static final SUB_TYPE_DIAG_START:I = 0x4

.field public static final SUB_TYPE_DIAG_STOP:I = 0x3

.field public static final SUB_TYPE_NOTIFICATION_CREATE:I = 0x1

.field public static final SUB_TYPE_NOTIFICATION_INVITE:I = 0x2

.field public static final SUB_TYPE_NOTIFICATION_KICK:I = 0x3

.field public static final SUB_TYPE_NOTIFICATION_MODIFY:I = 0x6

.field public static final SUB_TYPE_NOTIFICATION_QUIT:I = 0x5

.field public static final SUB_TYPE_NOTIFICATION_RELIEVE:I = 0x4

.field public static final SUB_TYPE_VERIFICATION_ACCEPT:I = 0x1

.field public static final SUB_TYPE_VERIFICATION_REFUSE:I = 0x2

.field public static final SUB_TYPE_VERIFICATION_REQUEST:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ChatMessage"

.field public static final TAG_PGROUP_Id:Ljava/lang/String; = "pub_id"

.field public static final TAG_PGROUP_NAME:Ljava/lang/String; = "pub_name"

.field public static final TYPE_CARD:I = 0x5

.field public static final TYPE_DEVICE:I = 0x0

.field public static final TYPE_DIAG:I = 0xa

.field public static final TYPE_FILE:I = 0x6

.field public static final TYPE_MAP:I = 0x4

.field public static final TYPE_NEWS:I = 0xc

.field public static final TYPE_NOTIFICATION:I = 0x8

.field public static final TYPE_PICTURE:I = 0x3

.field public static final TYPE_REPORT:I = 0xd

.field public static final TYPE_TEXT:I = 0x1

.field public static final TYPE_VERIFICATION:I = 0x9

.field public static final TYPE_VIDEO:I = 0x7

.field public static final TYPE_VOICE:I = 0x2


# instance fields
.field public content:Lorg/json/JSONObject;

.field public expansion:Lorg/json/JSONObject;

.field public flag:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

.field public groupFlag:Ljava/lang/String;

.field public id:J

.field private playing:Z

.field public publicGroupId:J

.field public publicGroupName:Ljava/lang/String;

.field public roomId:Ljava/lang/String;

.field public roomType:Lcom/cnlaunch/newgolo/model/ChatType;

.field private showMenu:Z

.field public speakerId:Ljava/lang/String;

.field public status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 622
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatMessage$1;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage$1;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 632
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->groupFlag:Ljava/lang/String;

    .line 510
    iput-boolean v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->playing:Z

    .line 520
    iput-boolean v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->showMenu:Z

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->expansion:Lorg/json/JSONObject;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 14
    .parameter "cursor"

    .prologue
    const/4 v13, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v12, ""

    iput-object v12, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->groupFlag:Ljava/lang/String;

    .line 510
    iput-boolean v13, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->playing:Z

    .line 520
    iput-boolean v13, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->showMenu:Z

    .line 75
    sget-object v12, Lcom/cnlaunch/newgolo/model/ChatTable;->id:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v12}, Lcom/cnlaunch/newgolo/model/ChatTable;->ordinal()I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 76
    .local v4, id:J
    sget-object v12, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v12}, Lcom/cnlaunch/newgolo/model/ChatTable;->ordinal()I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, roomId:Ljava/lang/String;
    sget-object v12, Lcom/cnlaunch/newgolo/model/ChatTable;->roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v12}, Lcom/cnlaunch/newgolo/model/ChatTable;->ordinal()I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, roomType:Ljava/lang/String;
    sget-object v12, Lcom/cnlaunch/newgolo/model/ChatTable;->speakerId:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v12}, Lcom/cnlaunch/newgolo/model/ChatTable;->ordinal()I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, speakerId:Ljava/lang/String;
    sget-object v12, Lcom/cnlaunch/newgolo/model/ChatTable;->status:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v12}, Lcom/cnlaunch/newgolo/model/ChatTable;->ordinal()I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, status:Ljava/lang/String;
    sget-object v12, Lcom/cnlaunch/newgolo/model/ChatTable;->flag:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v12}, Lcom/cnlaunch/newgolo/model/ChatTable;->ordinal()I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, flag:Ljava/lang/String;
    sget-object v12, Lcom/cnlaunch/newgolo/model/ChatTable;->time:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v12}, Lcom/cnlaunch/newgolo/model/ChatTable;->ordinal()I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 82
    .local v10, time:J
    sget-object v12, Lcom/cnlaunch/newgolo/model/ChatTable;->content:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v12}, Lcom/cnlaunch/newgolo/model/ChatTable;->ordinal()I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, content:Ljava/lang/String;
    sget-object v12, Lcom/cnlaunch/newgolo/model/ChatTable;->expansion:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v12}, Lcom/cnlaunch/newgolo/model/ChatTable;->ordinal()I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, expansion:Ljava/lang/String;
    iput-wide v4, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->id:J

    .line 85
    iput-object v6, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    .line 86
    invoke-static {v7}, Lcom/cnlaunch/newgolo/model/ChatType;->valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatType;

    move-result-object v12

    iput-object v12, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomType:Lcom/cnlaunch/newgolo/model/ChatType;

    .line 87
    iput-object v8, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    .line 88
    invoke-static {v9}, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    move-result-object v12

    iput-object v12, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    .line 89
    invoke-static {v3}, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    move-result-object v12

    iput-object v12, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->flag:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    .line 90
    iput-wide v10, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    .line 92
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->expansion:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :goto_1
    return-void

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Lorg/json/JSONException;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    iput-object v12, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    goto :goto_0

    .line 98
    .end local v1           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 99
    .local v1, e:Ljava/lang/Exception;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    iput-object v12, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->expansion:Lorg/json/JSONObject;

    goto :goto_1
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v2, 0x0

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->groupFlag:Ljava/lang/String;

    .line 510
    iput-boolean v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->playing:Z

    .line 520
    iput-boolean v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->showMenu:Z

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->id:J

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/newgolo/model/ChatType;->valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatType;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomType:Lcom/cnlaunch/newgolo/model/ChatType;

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->flag:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    .line 594
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    .line 598
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->expansion:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 607
    :goto_1
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    goto :goto_0

    .line 604
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 605
    .restart local v0       #e:Lorg/json/JSONException;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->expansion:Lorg/json/JSONObject;

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 3
    .parameter "json"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 569
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 575
    :cond_0
    :goto_0
    return v1

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 3
    .parameter "json"
    .parameter "tag"

    .prologue
    const/4 v1, -0x1

    .line 557
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 563
    :cond_0
    :goto_0
    return v1

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 4
    .parameter "json"
    .parameter "tag"

    .prologue
    const-wide/16 v1, -0x1

    .line 545
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 546
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 551
    :cond_0
    :goto_0
    return-wide v1

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "json"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 532
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 539
    :cond_0
    :goto_0
    return-object v1

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "json"
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 581
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public SetItemId(Ljava/lang/String;)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "item_id"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method public getBindingDev()I
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "binding_dev"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCarName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "carname"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarNoTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "time"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "content"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasPlayed()Z
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->expansion:Lorg/json/JSONObject;

    const-string/jumbo v1, "hasPlayed"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "item_id"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanetrackCarName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 301
    .local v0, carname:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v3, "lanetrack"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "carname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    .line 302
    :catch_0
    move-exception v1

    .line 304
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getLanetrackId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 263
    .local v1, id:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v3, "lanetrack"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 268
    :goto_0
    return-object v1

    .line 264
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getLanetrackSN()Ljava/lang/String;
    .locals 4

    .prologue
    .line 273
    const/4 v1, 0x0

    .line 276
    .local v1, sn:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v3, "lanetrack"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "sn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 281
    :goto_0
    return-object v1

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getLanetrackStarttime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 289
    .local v1, starttime:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v3, "lanetrack"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "starttime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 294
    :goto_0
    return-object v1

    .line 290
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "latitude"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "longitude"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMIME()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "mime"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeetCarNum()Ljava/lang/String;
    .locals 4

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 402
    .local v0, car_num:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v3, "pickme"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "car_num"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    .line 403
    :catch_0
    move-exception v1

    .line 405
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMeetId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 326
    .local v1, id:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v3, "pickme"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 331
    :goto_0
    return-object v1

    .line 327
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMeetLat()Ljava/lang/String;
    .locals 4

    .prologue
    .line 373
    const/4 v1, 0x0

    .line 376
    .local v1, lat:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v3, "pickme"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "lat"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 381
    :goto_0
    return-object v1

    .line 377
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMeetLon()Ljava/lang/String;
    .locals 4

    .prologue
    .line 386
    const/4 v1, 0x0

    .line 389
    .local v1, lon:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v3, "pickme"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "lon"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 394
    :goto_0
    return-object v1

    .line 390
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMeetSn()Ljava/lang/String;
    .locals 4

    .prologue
    .line 336
    const/4 v1, 0x0

    .line 339
    .local v1, serial_no:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v3, "pickme"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "serial_no"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 344
    :goto_0
    return-object v1

    .line 340
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMeetTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 313
    .local v1, meet_time:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v3, "pickme"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "meet_time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 318
    :goto_0
    return-object v1

    .line 314
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMeetType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 352
    .local v1, type:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v3, "pickme"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 357
    :goto_0
    return-object v1

    .line 353
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMileageID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "mileage_id"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMilestoneId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 237
    .local v1, id:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v3, "milestone"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 242
    :goto_0
    return-object v1

    .line 238
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMilestoneSN()Ljava/lang/String;
    .locals 4

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 250
    .local v1, sn:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v3, "milestone"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "sn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 255
    :goto_0
    return-object v1

    .line 251
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "name"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "nickname"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->expansion:Lorg/json/JSONObject;

    const-string/jumbo v1, "path"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicGroupId()J
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "pub_id"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPublicGroupName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "pub_name"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "serial_no"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowMenu()Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->showMenu:Z

    return v0
.end method

.method public getSubType()I
    .locals 3

    .prologue
    .line 411
    iget-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v2, "subtype"

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, subtype:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v2, "subtype"

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 415
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "target"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "text"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "thumb"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->expansion:Lorg/json/JSONObject;

    const-string/jumbo v1, "thumbPath"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "url"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "size"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "time"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->playing:Z

    return v0
.end method

.method public setCarName(Ljava/lang/String;)V
    .locals 2
    .parameter "carName"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "carname"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    return-void
.end method

.method public setCarNoTime(Ljava/lang/String;)V
    .locals 2
    .parameter "carNoTime"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "carNoTime"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 474
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "content"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public setHasPlayed(Z)V
    .locals 3
    .parameter "play"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->expansion:Lorg/json/JSONObject;

    const-string/jumbo v1, "hasPlayed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "latitude"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "longitude"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public setMIME(Ljava/lang/String;)V
    .locals 2
    .parameter "mime"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "mime"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    return-void
.end method

.method public setMeetType(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v2, "pickme"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMileageID(Ljava/lang/String;)V
    .locals 2
    .parameter "mileageID"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "mileage_id"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "name"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public setNews(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "news"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "nickname"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->expansion:Lorg/json/JSONObject;

    const-string/jumbo v1, "path"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 458
    return-void
.end method

.method public setPlaying(Z)V
    .locals 0
    .parameter "play"

    .prologue
    .line 517
    iput-boolean p1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->playing:Z

    .line 518
    return-void
.end method

.method public setPublicGroupId(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "pub_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public setPublicGroupName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "pub_name"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 2
    .parameter "serialNo"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "serial_no"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    return-void
.end method

.method public setShowMenu(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->showMenu:Z

    .line 528
    return-void
.end method

.method public setSubType(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "subtype"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "target"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "text"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "thumb"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->expansion:Lorg/json/JSONObject;

    const-string/jumbo v1, "thumbPath"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    return-void
.end method

.method public setType(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "url"

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public setVideoSize(J)V
    .locals 3
    .parameter "size"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "size"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    return-void
.end method

.method public setVideoTime(I)V
    .locals 3
    .parameter "time"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    const-string/jumbo v1, "time"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomType:Lcom/cnlaunch/newgolo/model/ChatType;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->speakerId:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->status:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->flag:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->flag:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->time:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->content:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->expansion:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->expansion:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 611
    iget-wide v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 612
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomType:Lcom/cnlaunch/newgolo/model/ChatType;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->flag:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 617
    iget-wide v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 618
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatMessage;->expansion:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    return-void
.end method
